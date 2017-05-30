# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import md5

# Create your models here.
class UserManager(models.Manager):
	def login_check(self, postData):

		new_user = User.objects.filter(email=postData['email'])
		errors =[]

		if len(new_user) != 0:

			encrypted_password = md5.new(postData['password']).hexdigest()

			print new_user[0].password

			if new_user[0].password == encrypted_password:

				return [True, True, new_user[0].first_name, new_user[0].last_name]

			else:
				return [True, False]
		else:
			return [False, False]


class User(models.Model):
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50)
	password = models.CharField(max_length=50)
	email = models.CharField(max_length=38)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	objects = UserManager()

	def __unicode__(self):
		return "id: " + str(self.id) + ", email: " + self.email + ", first name: " + self.first_name + ", last name: " + self.last_name + ", password: " + self.password