from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Dojo(models.Model):
  location = models.CharField(max_length=38) #ex: San Jose, Seattle
  state = models.CharField(max_length=38) #ex: CA, WA
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)

  def __unicode__(self):
    return "id: " + str(self.id) + ", location: " + self.location + ", state: " + self.state


class Instructor(models.Model):
  first_name = models.CharField(max_length=38)
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)
  dojo = models.ForeignKey(Dojo, related_name="instructors")

  def __unicode__(self):
    return "id: " + str(self.id) + ", first_name: " + self.first_name + ", dojo_id: " + str(self.dojo.id) + "dojo_location: " + self.dojo.location


class DryErase(models.Model):
  color = models.CharField(max_length=38)
  instructor = models.ForeignKey(Instructor, related_name="dry_erase")
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)

  def __unicode__(self):
    return "id: " + str(self.id) + ", color: " + self.color + ", instructor: " + str(self.instructor.id) 


