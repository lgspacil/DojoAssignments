# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Book(models.Model):
	title = models.CharField(max_length=50)
	author = models.CharField(max_length=50)
	published_date = models.DateTimeField(auto_now_add=True)
	category = models.CharField(max_length=50)
	inprint = models.BooleanField(default=True)

	def __unicode__(self):
		return "id: " + str(self.id) + " ,title: " + self.title + ", author: " + self.author + ", published date: " + str(self.published_date) + ", category " + self.category