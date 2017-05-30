# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Book(models.Model):
	title = models.CharField(max_length=38)
	author = models.CharField(max_length=38)
	category = models.CharField(max_length=38)

	def __unicode__(self):
		return "id: " + str(self.id) + ", title: " + self.title + ", author: " + self.author + ", category: " + self.category

