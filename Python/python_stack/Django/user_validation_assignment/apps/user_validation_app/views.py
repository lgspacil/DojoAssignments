from django.contrib import messages
from django.shortcuts import render, redirect
from .models import Username

# Create your views here.
def index(request):
	return render(request, 'user_validation_app/index.html')


def check(request):

	new = Username.objects.filter(username=request.POST['username'])
	print len(new)

	if len(request.POST['username']) > 8 and len(request.POST['username']) < 16 and len(new) < 1:
		Username.objects.create(username=request.POST['username'])
		messages.success(request, "Success you added: " + request.POST['username'])
		return redirect('/success')
	else:
		messages.error(request, "Not Successfully Created, you have already used this name or it is not 8-16 characters long")
		return redirect('/')

def success(request):
	context = {
	'usernames' : Username.objects.all()
	}
	
	return render(request, 'user_validation_app/success.html', context)

def delete(request, id):

	d = Username.objects.get(id=id)
	d.delete()

	return redirect('/success')

