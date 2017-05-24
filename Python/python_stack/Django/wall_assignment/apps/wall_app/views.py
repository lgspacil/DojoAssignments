# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Users, Messages, Comments
# Create your views here.
def index(request):
	print Users.objects.all()
	return render(request, 'wall_app/index.html')