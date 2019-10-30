from rest_framework import serializers
from tool.models import myTool


class MyToolSerializer(serializers.ModelSerializer):
    class meta:
        model = myTool
        fields = "__all__"
