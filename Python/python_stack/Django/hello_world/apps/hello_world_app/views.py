# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
def index(request):
	return render(request, 'hello_world_app/index.html')

def testamonials(request):
	return render(request, 'hello_world_app/testamonials.html')