# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Course(models.Model):
	name = models.CharField(max_length=100)
	description = models.CharField(max_length=100)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __unicode__(self):
		return "id: " + str(self.id) + ", course_name: " + self.name + ", description: " + self.description + ", created_at: " + str(self.created_at) + ", updated_at" + str(self.updated_at)

class Comment(models.Model):
	comment = models.CharField(max_length=1000)
	course = models.ForeignKey(Course, related_name="comments")