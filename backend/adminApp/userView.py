from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from .models import AccountModel
from .models import RecordModel
from .models import FileUploadModel
import json
from datetime import date
import time
import datetime
import random
from django.core import serializers
from django.core.files import File
from django.core.files.base import ContentFile
from django.core.files.temp import NamedTemporaryFile
from django.core.files.storage import default_storage
from tensorflow.keras.models import model_from_json, load_model
import tensorflow as tf
from PIL import Image
import numpy as np
# from deepface import DeepFace
import os;
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '1'

def createAccount(request):
    feedback = ''
    todayDate = date.today()
    timeNow = time.strftime("%H:%M:%S", time.localtime())
    split_id = str(todayDate).replace('-', '') +''+ str(timeNow).replace(':', '')
    split_id_List = list(split_id)
    random.shuffle(split_id_List)
    generated_id = ''.join(split_id_List)
    accountModel = AccountModel()
    form = request.POST
    try:
        if form['personal_id'] !='':
            userid = form['personal_id']
        else:
            userid = generated_id

        accountModel.id = 0
        accountModel.personal_id = userid
        accountModel.lastname = form['lastname'].capitalize()
        accountModel.firstname = form['firstname'].capitalize()
        accountModel.othername = form['othername'].capitalize()
        accountModel.email_one = form['email_one'].lower()
        accountModel.phone_code = form['phone_code']
        accountModel.phone_one = form['phone_one']
        accountModel.gender_id = form['gender_id']
        accountModel.yob = form['yob']
        accountModel.mob = form['mob']
        accountModel.dob = form['dob']
        accountModel.date_created = date.today()
        accountModel.time_created = datetime.datetime.now()
        accountModel.generated_id = generated_id
        if request.method == 'POST':
            a = accountModel.save()
            feedback = {
                'title': 'Successful',
                'status': 'success',
                'statusmsg': 'success',
                'msg': 'New record has been successfully created, now redirecting...',
                'redirect': 'users',
                'info': '',
            }
            return JsonResponse(feedback, safe=False)
        else:
            feedback = {
                'title': 'Invalid',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'The request could not be processed. This may be that the recor already exist, kindly confirm the details before you continue.',
                'redirect': '',
                'info': '',
            }
        return JsonResponse(feedback, safe=False)

    except Exception as e:
        if 'Duplicate' in str(e):
            feedback = {
                'title': 'error',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'The email, personal ID, or phone number provided already in use, please confirm or try again with another.',
                'redirect': '',
                'info': '',
                'error': str(e),
        }
        else:
            feedback = {
                    'title': 'error',
                    'status': 'failed',
                    'statusmsg': '',
                    'msg': 'Something went wrong, please try again or report this error.',
                    'redirect': '',
                    'info': '',
                    'error': str(e),
            }
        return JsonResponse(feedback, safe=False)

def Predict(filename):
    feedback = ''
    model_location = 'media/model/model_output.h5'
    testimage = 'media/files/'+filename
    classNames = ['Apple', 'AppleRotten', 'Cabbage', 'CabbageRotten', 'Carrot', 
                      'CarrotRotten', 'Cucumber', 'CucumberRotten', 'Pear', 'PearRotten']
    classList = {
        'Apple': 'Apple',
        'AppleRotten': 'Rotten Apple',
        'Cabbage': 'Cabbage',
        'CabbageRotten': 'Rotten Cabbage',
        'Carrot': 'Carrot',
        'CarrotRotten': 'Rotten Carrot',
        'Cucumber': 'Cucumber',
        'CucumberRotten': 'Rotten Cucumber',
        'Pear': 'Pear',
        'PearRotten': 'Rotten Pear',
    }
    
    img_height = 500
    img_width = 400
    try:
        model = load_model(model_location)
        img = tf.keras.utils.load_img(
        testimage, target_size=(img_height, img_width)
        )
        img_array = tf.keras.utils.img_to_array(img)
        img_array = tf.expand_dims(img_array, 0)

        predictions = model(img_array)
        score = tf.nn.softmax(predictions[0])
        fruitClass = classNames[np.argmax(score)]
        fruitName = classList[fruitClass]
        msg = "This image most likely belongs to {} with a {:.2f} percent confidence.".format(fruitName, 100 * np.max(score))
        feedback = {
            'status': True,
            'message': str(msg)
        }
        return feedback

    except Exception as e:
        feedback = {
            'status': True,
            'message': 'Not identified due to an error.',
            'error': str(e)
        }
        return feedback


def fileUpload(request):
    feedback = ''
    todayDate = date.today()
    timeNow = time.strftime("%H:%M:%S", time.localtime())
    split_id = str(todayDate).replace('-', '') +''+ str(timeNow).replace(':', '')
    split_id_List = list(split_id)
    random.shuffle(split_id_List)
    generated_id = ''.join(split_id_List)
    location = 'files/'
    frame_counter = 0
    generateId = str(int(round(time.time() * 1000)))
    fileblob = request.FILES['filename']
    splitName = fileblob.name.split('.')
    ext = splitName[1]
    file_name = generateId+'.'+ext
    default_storage.save(location+file_name, fileblob)
    url = default_storage.url(location+file_name)
    fileUpload = FileUploadModel()
    file_size = '300'
    file_width = '300'
    file_height = '300'
    try:
        prediction = Predict(file_name)
        print(prediction['message'])
        fileUpload.id = 0
        fileUpload.userid = request.POST['id']
        fileUpload.file_name = file_name
        fileUpload.file_size = file_size
        fileUpload.file_width = file_width
        fileUpload.file_height = file_height
        fileUpload.file_ext = ext
        fileUpload.file_url = url
        fileUpload.file_title = ''
        fileUpload.date_created = date.today()
        fileUpload.time_created = datetime.datetime.now()
        fileUpload.generated_id = generated_id
        fileUpload.descriptions = prediction['message']
        if request.method == 'POST':
            a = fileUpload.save()

            feedback = {
                'title': 'Successful',
                'status': 'success',
                'statusmsg': 'success',
                'msg': 'New file uploaded for classification successfully, now redirecting...',
                'redirect': '../../users',
                'info': '',
            }
            return JsonResponse(feedback, safe=False)
        else:
            feedback = {
                'title': 'Invalid',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'Something went wrong! kindly confirm and try again.',
                'redirect': '',
                'info': '',
            }
        return JsonResponse(feedback, safe=False)

    except Exception as e:
        print(str(e))
        feedback = {
            'title': 'error',
            'status': 'failed',
            'statusmsg': '',
            'msg': 'Something went wrong, please try again',
            'redirect': '',
            'info': '',
            'error': str(e),
    }
    return JsonResponse(feedback, safe=False)


def deleteFile(request):
    feedback = ''
    try:
        id = request.POST['id']
        if request.method == 'POST':
            row = FileUploadModel.objects.get(id=id)
            row.delete()
            feedback = {
                'title': 'Successful',
                'status': 'success',
                'statusmsg': 'success',
                'msg': 'A file has been successfully deleted, now redirecting...',
                'redirect': '',
                'info': '',
            }
            return JsonResponse(feedback, safe=False)
        else:
            feedback = {
                'title': 'Invalid',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'Something went wrong! kindly confirm and try again.',
                'redirect': '',
                'info': '',
            }
        return JsonResponse(feedback, safe=False)

    except Exception as e:

        feedback = {
            'title': 'error',
            'status': 'failed',
            'statusmsg': '',
            'msg': 'Something went wrong, please try again',
            'redirect': '',
            'info': '',
            'error': str(e),
    }
    return JsonResponse(feedback, safe=False)


def records(request):
    feedback = ''
    try:
        if request.method == 'GET':
            data = FileUploadModel.objects.values().order_by('-id')
            if len(data) > 0:
                feedback = {
                    'title': 'Successful',
                    'status': 'success',
                    'statusmsg': 'success',
                    'msg': '',
                    'redirect': '',
                    'info': list(data),
                }
                return JsonResponse(feedback, safe=False)
            else:
                feedback = {
                    'title': 'norecord',
                    'status': 'failed',
                    'statusmsg': '',
                    'msg': 'No record(s) found',
                    'redirect': '',
                    'info': '',
                }
                return JsonResponse(feedback, safe=False)
        else:
            feedback = {
                'title': 'error',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'Something went wrong, please try again or report this error.',
                'redirect': '',
                'info': '',
                'error': str(e),
             }
            return JsonResponse(feedback, safe=False)
            
    except Exception as e:
        feedback = {
                'title': 'error',
                'status': 'failed',
                'statusmsg': '',
                'msg': 'Something went wrong, please try again or report this error.',
                'redirect': '',
                'info': '',
                'error': str(e),
        }
        return JsonResponse(feedback, safe=False)


def userData(id):
    feedback = ''
    try:
        data = RecordModel.objects.filter(generated_id=id).values('id', 'lastname', 'firstname', 'email_one')
        if len(data) > 0:
            feedback = {
                'status': True,
                'data': data[0],
            }
            return feedback
        else:
            feedback = {
                'status': False,
                'data': '',
            }
            return feedback

    except Exception as e:
        return 'error '+ str(e)

def userInfo(id):
    feedback = ''
    try:
        data = RecordModel.objects.filter(email_one=id).values('id', 'file_url', 'lastname', 'firstname', 'email_one')
        if len(data) > 0:
            feedback = {
                'status': True,
                'data': data[0],
            }
            return feedback
        else:
            feedback = {
                'status': False,
                'data': '',
            }
            return feedback

    except Exception as e:
        return 'error '+ str(e)


