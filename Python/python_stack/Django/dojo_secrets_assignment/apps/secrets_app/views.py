import md5
from django.shortcuts import render, redirect
from .models import User, Secret
from django.contrib import messages
from django.db.models import Count

# Create your views here.
def index(request):
	return render(request, 'secrets_app/index.html')


def login(request):

	#passing in info to postData
	postData = {
		'email' : request.POST['email'],
		'password' : request.POST['password']
	}

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
	'password' : md5.new(request.POST['password']).hexdigest(),
	'confirm_password' : md5.new(request.POST['confirm']).hexdigest(),
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


def add_secret(request):

	#creating a new secret object, pass in the secret in the form and the user.id from 
	#of the person who is logged in.
	print Secret.objects.create(secret=request.POST['secret'], user_id=request.session['id'])

	return redirect('/show_secrets')

def show_secrets(request):

	#pass into context the secrets in decending order from when they were created
	# and the current user by the session id
	context = {
	'secrets': Secret.objects.order_by('-created_at'),
	'currentuser': User.objects.get(id=request.session['id']),
	'all_secrets': Secret.objects.all()
	}


	return render(request, 'secrets_app/secrets.html', context)

def newlike(request, id):
	print 'we are in the new like'

	secretid = id
	userid = request.session['id']
	secret = Secret.objects.get(id=secretid)
	user = User.objects.get(id=userid)

	secret.likers.add(user)
	
	

	return redirect('/show_secrets')


def delete(request, id):
	print Secret.objects.all()
	d = Secret.objects.get(id=id)
	d.delete()
	return redirect('/show_secrets')

def show_popular(request):

	all_secrets = Secret.objects.annotate(num_likes=Count('likers')).order_by('-num_likes')

	for s in all_secrets:
		print s.num_likes, s.secret

	context = {
	'secrets': all_secrets,
	'currentuser': User.objects.get(id=request.session['id'])
	}
	return render(request, 'secrets_app/popular.html', context)

