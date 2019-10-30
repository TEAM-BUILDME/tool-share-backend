from rest_framework import generics
from .models import myTool
from .serializer import MyToolSerializer


class MyToolList(generics.ListAPIView):
    queryset = myTool.objects.all()
    serializer_class = MyToolSerializer


class MyToolDetail(generics.RetrieveAPIView):
    queryset = myTool.objects.all()
    serializer_class = MyToolSerializer
