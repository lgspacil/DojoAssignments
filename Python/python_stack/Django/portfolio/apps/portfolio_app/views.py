# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
def index(request):
	return render(request, 'porfolio_app/index.html')

def testamonials(request):
	return render(request, 'portfolio_app/testamonials.html')