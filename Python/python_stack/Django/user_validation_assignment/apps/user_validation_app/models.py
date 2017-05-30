# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Username(models.Model):
	username = models.CharField(max_length=38)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __unicode__(self):
		return "id: " + str(self.id) + ", username: " + self.username + ", created at: " + str(self.created_at) + ", updated at: " + str(self.updated_at)