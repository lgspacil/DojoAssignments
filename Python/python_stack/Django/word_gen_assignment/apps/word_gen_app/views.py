from django.shortcuts import render, redirect
import random
import string

# Create your views here.
def index(request):
	if request.session.get('count') == None:
		request.session['count'] = 0
	return render(request, 'word_gen_app/index.html')

def random_word():
	result = ""
	for letter in range(1, 14):
		result += random.choice(string.letters)
	return result

def generate(request):
	request.session['count'] += 1
	request.session['word'] = random_word()
	return redirect('/')