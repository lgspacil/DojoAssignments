# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.

def index(request):
  return render(request, 'real_portfolio_app/index.html')

def projects(request):
	return render(request, 'real_portfolio_app/projects.html')

def about_me(request):
	return render(request, 'real_portfolio_app/about_me.html')

def testimonials(request):
	return render(request, 'real_portfolio_app/testimonials.html')