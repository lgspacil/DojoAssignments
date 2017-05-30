# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from .models import Course, Comment

# Create your views here.
def index(request):
	context = {
	"courses" : Course.objects.all()
	}
	return render(request, 'cources_app/index.html', context)


def add(request):
	Course.objects.create(name=request.POST['name'], description=request.POST['description'])
	return redirect('/')


def remove(request, id):
	context = {
	"selected": Course.objects.get(id = id)
	}
	return render(request, 'cources_app/remove_page.html', context)

def demolish(request, id):
	c = Course.objects.get(id = id)
	c.delete()
	return redirect('/')

def comment(request, id):
	c = Course.objects.get(id = id)
	Comment.objects.create(comment=request.POST['comment'], course=c)
	print Comment.objects.all()
	return redirect('/')
