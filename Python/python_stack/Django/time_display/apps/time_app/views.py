# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, HttpResponse
from datetime import datetime

# Create your views here.
def index(request):
	date = datetime.now().strftime('%B %d, %Y')
	time = datetime.now().strftime('%H:%M %p')

	context = {
	"date":date,
	"time":time
	}
	return render(request, 'time_app/index.html', context)