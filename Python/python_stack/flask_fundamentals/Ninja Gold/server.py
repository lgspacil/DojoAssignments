from flask import Flask, render_template, request, redirect, session
from random import randint
from datetime import date


app=Flask(__name__)
app.secret_key = "ThisIsSecret"

@app.route('/')
def homepage():
	session['your_gold'] = 0
	session['activity'] = ""
	return render_template("home_page.html")


@app.route('/process_money', methods=['POST'])
def get_money():
	click = request.form['building']

	if click == "farm":
		random_num = randint(10,20)
		session['your_gold'] += random_num
		session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the farm on " + str(date.today())+"</p>" 

	elif click == "cave":
		random_num = randint(5,10)
		session['your_gold'] += random_num
		session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the cave on " +str(date.today())+"</p>"

	elif click == "house":
		random_num = randint(2,5)
		session['your_gold'] += random_num
		session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the house on " +str(date.today())+"</p>"

	elif click == "casino":
		random_num = randint(0,1)
		if random_num == 1:
			random_num = randint(0,50)
			session['your_gold'] += random_num
			session['activity'] += "<p id='green'>Earned "+ str(random_num)+" coins from the casino on " +str(date.today())+"</p>"
		else:
			random_num = randint(0,50)
			session['your_gold'] -= random_num
			session['activity'] += "<p id='red'>Entered a Casino and lost "+ str(random_num)+" coins on " +str(date.today())+"</p>"
	return render_template('home_page.html')

@app.route('/restart', methods=['POST'])
def restart():
	return redirect('/')

app.run(debug=True)