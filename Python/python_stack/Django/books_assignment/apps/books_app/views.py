
from django.shortcuts import render
from .models import Book

# Create your views here.
def index(request):
	print Book.objects.all()
	return render(request, 'books_app/index.html')