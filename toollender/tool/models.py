from django.db import models

# Create your models here.


class myTool(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    name = models.CharField(max_length=100)
    owner = models.CharField(max_length=100)
    accessibleGroups = models.CharField(max_length=100, default="none")
    notes = models.CharField(max_length=100, blank=True, default="")
    availability = models.BooleanField(default=True)

    def __str__(self):
        return self.name
