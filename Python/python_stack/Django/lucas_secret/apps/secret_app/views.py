import md5
import bcrypt
from django.shortcuts import render, redirect
from .models import User, Secret
from django.contrib import messages
from django.db.models import Count

# Create your views here.
def index(request):
	return render(request, 'secret_app/index.html')


def login(request):

	#passing in info to postData
	postData = {
		'email' : request.POST['email'],
		'password' : request.POST['password']
	}

	#seding info to the user manager in models.py
	model_rep = User.objects.login_check(postData)
	

	if model_rep[0] and model_rep[1] == True:
		#store the user who is logged in information in a session
		request.session['first_name'] = model_rep[2]
		request.session['last_name'] = model_rep[3]
		request.session['id'] = model_rep[4]
		return redirect('/show_secrets')
	elif model_rep[0] == True and model_rep[1] == False:
		messages.error(request, "Invalid Password")
	else:
		messages.error(request, "Invalid Email")

	return redirect('/')

	


def register(request):

	postData = {
	'first_name': request.POST['first_name'],
	'last_name': request.POST['last_name'],
	'email' : request.POST['email'],
	'password' : request.POST['password'],
	'confirm_password' : request.POST['confirm'],
	}
	
	model_rep = User.objects.register_check(postData)

	if model_rep[0] == False:
		print model_rep[1][0]
		messages.error(request, model_rep[1][0])
		return redirect('/')
	else:
		request.session['first_name'] = model_rep[1]
		request.session['last_name'] = model_rep[2]
		request.session['id'] = model_rep[3]
		return redirect('/show_secrets')

def show_secrets(request):

	context = {
	'secrets' : Secret.objects.order_by('-created_at'),
	'currentuser' : User.objects.get(id=request.session['id']),
	}

	return render(request, 'secret_app/secrets.html', context)

def add_secret(request):

	print Secret.objects.create(secret=request.POST['secret'], user_id=request.session['id'])
	return redirect('/show_secrets')


def add_like(request, id):

	secret = Secret.objects.get(id=id)
	user = User.objects.get(id=request.session['id'])
	
	#print "the secret id is: " + str(id) + " and the secret is: " + secret.secret + " the user id is: " + str(user.id)
	secret.likers.add(user)
	#print secret.likers.all()

	return redirect('/show_secrets')

def delete_secret(request, id):
	secret = Secret.objects.get(id=id)
	secret.delete()
	return redirect('/show_secrets')

def show_popular(request):
	
	all_secrets = Secret.objects.annotate(like_count=Count('likers')).order_by('-like_count')[:5]

	for s in all_secrets:
		print s.like_count, s.secret

	context = {
	'secrets':all_secrets,
	'currentuser' : User.objects.get(id=request.session['id']),
	}
	return render(request, 'secret_app/popular.html', context)

def logout(request):
	return redirect('/')





