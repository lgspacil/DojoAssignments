
from django.shortcuts import render
from .models import Book

# Create your views here.
def index(request):
	# user = Book.objects.filter(id=2) # --> returns query set
	# #user = Book.objects.get(id=1) --> returns object
	# print("QUERY RESULT:", len(user))

	exclude = Book.objects.exclude(id=1)
	#returns everything that is not user id 1
	print ("Everything that is not id 1 is: ", exclude)

	return render(request, 'books_app/index.html')