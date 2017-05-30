import md5
from django.shortcuts import render, redirect
from .models import User
from django.contrib import messages

# Create your views here.
def index(request):
	return render(request, 'login_registration_app/index.html')


def login(request):

	print "in the login form now"

	postData = {
		'email' : request.POST['email'],
		'password' : request.POST['password']
	}

	model_rep = User.objects.login_check(postData)
	

	if model_rep[0] and model_rep[1] == True:
		request.session['first_name'] = model_rep[2]
		request.session['last_name'] = model_rep[3]
		return render(request, 'login_registration_app/success.html')
	elif model_rep[0] == True and model_rep[1] == False:
		messages.error(request, "Invalid Password")
	else:
		messages.error(request, "Invalid Email")

	return redirect('/')

	


def register(request):
	first_name = request.POST['first_name']
	last_name = request.POST['last_name']
	email = request.POST['email']
	password = md5.new(request.POST['password']).hexdigest()
	confirm_password = md5.new(request.POST['confirm']).hexdigest()

	new_user = User.objects.filter(email=request.POST['email'])
	count = 0 

	if len(first_name) > 2:
		count += 1
	else:
		messages.error(request, "You must type in a name longer than 2 characters")

	if len(last_name) > 2:
		count += 1 
	else:
		messages.error(request, "You must type in a name longer than 2 characters")

	if len(email) > 2:
		count += 1
	else:
		messages.error(request, "You must type in an email longer than 2 characters or enter a valid email address")

	if len(password) > 2:
		count += 1
	else:
		messages.error(request, "Enter a longer email")

	if confirm_password == password:
		count += 1
	else:
		messages.error(request, "Your passwords are not the same")

	if count == 5:
		if len(new_user) == 1:
			messages.error(request, "Email already exists!")
			return redirect('/')

		else:
			User.objects.create(email=request.POST['email'], first_name=request.POST['first_name'], last_name=request.POST['last_name'], password=password)
			request.session['first_name'] = request.POST['first_name']
			request.session['last_name'] = request.POST['last_name']
			messages.success(request, "You successfully registered")
			context = {
				'users': User.objects.all()
			}
			return render(request, 'login_registration_app/success.html', context)




