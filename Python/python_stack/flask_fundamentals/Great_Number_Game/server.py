from flask import Flask, render_template, request, redirect, session
from random import randint


app=Flask(__name__)
app.secret_key = "ThisIsSecret"

@app.route('/')
def homepage():
	random_num = randint(1,101) 
	session['random'] = random_num
	return render_template('homepage.html')

@app.route('/guess', methods=["POST"])
def guess():
	guess = request.form['guess']
	guess = int(guess) #converts to an int
	print "the value is : " + str(session['random']) #the value of the random
	result = ""

	if guess == session['random']:
		result += "You guessed correct"
		return render_template('correct.html', result=result)

	elif guess < session['random']:
		result += "you are too low"
	elif guess > session['random']:
		result += "you are too high"

	return render_template('homepage.html', result=result)

@app.route('/restart', methods=["POST"])
def restart():
	return redirect('/')

app.run(debug=True)