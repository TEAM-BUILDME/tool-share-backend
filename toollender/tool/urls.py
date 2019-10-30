from django.urls import path
from . import views

urlpatterns = [
    path('', views.MyToolList.as_view()),
    path('<int:pk>/', views.MyToolDetail.as_view())
]
