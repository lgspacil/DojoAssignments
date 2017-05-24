# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from random import randint
from datetime import date

# Create your views here.
def index(request):
	if request.session.get('gold_coins') == None:
		request.session['gold_coins'] = 0

	if request.session.get('activity') == None:
		request.session['activity'] = ""

	return render(request, 'ninja_app/index.html')

def process_money(request):
	click = request.POST['building']
	print "hello world"
	print type(click)

	if click == "farm":
		print "hello another world"
		random_num = randint(10,20)
		request.session['gold_coins'] += random_num
		request.session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the farm on " + str(date.today())+"</p>"

	elif click == "cave":
		random_num = randint(5,10)
		request.session['gold_coins'] += random_num
		request.session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the cave on " +str(date.today())+"</p>"

	elif click == "house":
		random_num = randint(2,5)
		request.session['gold_coins'] += random_num
		request.session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the house on " +str(date.today())+"</p>"

	elif click == "casino":
		random_num = randint(0,1)
		if random_num == 1:
			random_num = randint(0,50)
			request.session['gold_coins'] += random_num
			request.session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the casino on " +str(date.today())+"</p>"
		else:
			random_num = randint(0,50)
			request.session['gold_coins'] -= random_num
			request.session['activity'] += "<p id='red'>Entered a Casino and lost "+ str(random_num)+" coins on " +str(date.today())+"</p>" 
	return redirect('/')