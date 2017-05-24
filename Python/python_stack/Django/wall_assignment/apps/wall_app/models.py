# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Users(models.Model):
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50)
	email = models.CharField(max_length=50)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	password = models.CharField(max_length=50)

	def __unicode__(self):
		return "id: " + str(self.id) + " ,first name: " + self.first_name + ", last_name: " + self.last_name + ", created at: " + str(self.created_at) + ", updated at: " + str(self.updated_at) + ", password: " + self.password

class Messages(models.Model):
	message = models.CharField(max_length=1000)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	message_user = models.ForeignKey(Users, related_name='message_users')

	def __unicode__(self):
		return "id: " + str(self.id) + ", message: " + self.message + ", created at: " + str(self.created_at) + ", updated at: " + str(self.updated_at) + ", user_id: " + str(self.message_user.id)


class Comments(models.Model):
	comment = models.CharField(max_length=1000)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	comment_user = models.ForeignKey(Users, related_name='comment_users')
	comment_message = models.ForeignKey(Messages, related_name='comment_messages')

	def __unicode__(self):
		return "id: " + str(self.id) + ", comment: " + self.comment + ", created at: " + str(self.created_at) + ", updated at: " + str(self.updated_at) + ", user_id: " + str(self.comment_user.id) + ", message_id" + str(self.comment_message.id)


