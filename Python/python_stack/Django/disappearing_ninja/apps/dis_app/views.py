# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
def index(request):
	return render(request, 'dis_app/index.html')

def ninjas(request):
	return render(request, 'dis_app/ninjas.html')

def one_ninja(request, color):
	context = {
		"color": color
	}

	if context['color'] == 'red':
		return render(request, 'dis_app/red.html', context)
	elif context['color'] == 'blue':
		return render(request, 'dis_app/blue.html', context)
	elif context['color'] == 'orange':
		return render(request, 'dis_app/orange.html', context)	
	elif context['color'] == 'purple':
		return render(request, 'dis_app/purple.html', context)
	else:
		return render(request, 'dis_app/one_ninja.html', context)
				
