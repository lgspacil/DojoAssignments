# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect

# Create your views here.
def index(request):
	if request.session.get('count') == None:
		request.session['count'] = 0
	return render(request, 'survey_app/index.html')


def post(request):
	if request.method == "POST":
		request.session['count'] += 1
		request.session['name'] = request.POST['first_name']
		request.session['location'] = request.POST['location']
		request.session['language'] = request.POST['language']
		request.session['comment'] = request.POST['comment']
		return redirect('/result')
	else:
		return redirect('/')

def result(request):
	return render(request, 'survey_app/result.html')
