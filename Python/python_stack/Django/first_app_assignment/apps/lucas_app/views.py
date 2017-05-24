#CONTROLLER
# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, HttpResponse


# Create your views here.
def index(request):
	print "*"*50
	# response = "Hello, I am your first request!"
	# return HttpResponse(response)
	return render(request, 'lucas_app/index.html')
