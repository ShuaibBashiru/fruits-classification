from django.urls import path
from . import views, userView


urlpatterns = [
    path('signin', views.signin, name="admin-signin"),
    path('dashboard', views.dashboard, name="admin-dashboard"),
    path('users', views.users, name="users"),
    path('create-user', views.createUser, name="create-user"),
    path('file-upload', userView.fileUpload, name="file-upload"),
    path('file-upload-delete', userView.deleteFile, name="delete-upload"),
    path('new-enrol/<int:id>/', views.newEnrol, name="new-enrol"),
    path('create-user-account', userView.createAccount, name="user-account"),
    path('user-records', userView.records, name="user-records"),

]


