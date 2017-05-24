# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from random import randint

# Create your views here.
def index(request):
	
	return render(request, 'surprise_me_app/index.html')

def add(request):
	
	request.session['result'] = []
	num = request.POST['num']
	num = int(num)
	values = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']


	for ele in range(num):
		request.session['result'].append(values[randint(1,len(values))])

	print request.session['result']

	return redirect('/')
