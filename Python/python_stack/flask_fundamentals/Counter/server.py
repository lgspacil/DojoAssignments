from flask import Flask, render_template, request, redirect, session

app=Flask(__name__)
app.secret_key = "ThisIsSecret"

@app.route('/')
def form():
	session['counter'] = 0
	return render_template('home_page.html') #this is our root route

@app.route('/run', methods=['POST'])
def refresh():
	if request.form['action'] == "1":
		session['counter'] += 1
	elif request.form['action'] == "2":
		session['counter'] += 2
	elif request.form['action'] == "3":
		session['counter'] += 3

	return render_template('home_page.html')



app.run(debug=True)
