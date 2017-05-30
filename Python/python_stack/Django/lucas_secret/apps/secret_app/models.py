# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import md5
import bcrypt

# Create your models here.
class UserManager(models.Manager):
	def login_check(self, postData):

		# getting a list of users with the given email from the form
		new_user = User.objects.filter(email=postData['email'])
		errors =[]

		#checking to see if there are multiple entries in the DB with the same email
		if len(new_user) != 0:

			#setting encrypted password to a new encryption of the password written into the form
			#encrypted_password = md5.new(postData['password']).hexdigest()


			print type(new_user[0].password)

			new_user[0].password = str(new_user[0].password)

			#if the encrypted password in the database matches the encrypted in the form all if good
			if bcrypt.checkpw(postData['password'].encode('utf-8'), new_user[0].password):

				#will return the new users first name, last name and id
				return [True, True, new_user[0].first_name, new_user[0].last_name, new_user[0].id]

			else:
				return [True, False]
		else:
			return [False, False]

	def register_check(self, postData):

		new_user = User.objects.filter(email=postData['email'])
		errors =[]
		count = 0 

		#checking each requirement if it passes, add one, if not add the error to the error list
		if len(postData['first_name']) > 2:
			count += 1
		else:
			errors.append("You must type in a name longer than 2 characters")
			return [False, errors]

		if len(postData['last_name']) > 2:
			count += 1 
		else:
			errors.append("You must type in a name longer than 2 characters")
			return [False, errors]

		if len(postData['email']) > 2:
			count += 1
		else:
			errors.append("You must type in an email longer than 2 characters or enter a valid email address")
			return [False, errors]

		if len(postData['password']) > 2:
			count += 1
		else:
			errors.append("Enter a longer email")
			return [False, errors]

		if postData['confirm_password'] == postData['password']:
			count += 1
		else:
			errors.append("Your passwords are not the same")
			return [False, errors]

		#if all the passes check out continue
		if count == 5:
			#checking the database if the email already exists
			if len(new_user) == 1:
				errors.append("Email already Exists")
				return [False, errors]

			#if email does not exist we create a User object passing in all the information
			else:
				encrypted_password = bcrypt.hashpw(postData['password'].encode('utf-8'), bcrypt.gensalt())
				user = User.objects.create(email=postData['email'], first_name=postData['first_name'], last_name=postData['last_name'], password=encrypted_password)
				
				errors.append("Login Successful")
				return [True, postData['first_name'], postData['last_name'], user.id]



class User(models.Model):
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50, default= None, null = True)
	password = models.CharField(max_length=50, default= None, null = True)
	email = models.CharField(max_length=38)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	objects = UserManager()

	def __unicode__(self):
		return "user id: " + str(self.id) + ", email: " + self.email + ", first name: " + self.first_name + ", last name: " + self.last_name + ", password: " + self.password


class Secret(models.Model):
	secret = models.CharField(max_length=1000)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	user = models.ForeignKey(User, related_name='secrets', default=None, null=True)
	likers = models.ManyToManyField(User, related_name='likedsecrets')
	objects = UserManager()

	def __unicode__(self):
		return "secret id: " + str(self.id) + ", secret: " + self.secret + ", user id: " + str(self.user.id) 


