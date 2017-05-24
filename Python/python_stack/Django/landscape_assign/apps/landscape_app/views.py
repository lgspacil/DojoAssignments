# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect

# Create your views here.
def index(request):
  return render(request, 'landscape_app/index.html')

def landscape(request, num):
	if int(num) < 11:
		src = "/static/landscape_app/images/snow.jpg"
	elif int(num) < 21:
		src = "/static/landscape_app/images/desert.jpg"
	elif int(num) < 31:
		src = "/static/landscape_app/images/tropical.jpg"
	elif int(num) < 41:
		src = "/static/landscape_app/images/vineyard.jpg"
	elif int(num) < 51:
		src = "/static/landscape_app/images/forest.jpg"
	else:
		src = "/static/landscape_app/images/snow.jpg"

	context = {
	'src':src
	}

	return render(request, 'landscape_app/images.html', context)