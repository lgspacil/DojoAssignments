# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Product(models.Model):
	name = models.CharField(max_length=50)
	description = models.CharField(max_length=50)
	weight = models.IntegerField()
	price = models.IntegerField()
	cost = models.IntegerField()
	category = models.CharField(max_length=50)

	def __unicode__(self):
		return "id: " + str(self.id) + " ,name: " + self.name + ", description: " + self.description + ", weight: " + str(self.weight) + ", cost: " + str(self.cost) + ", category " + self.category