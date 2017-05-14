from flask import Flask, render_template, request, redirect, session

app=Flask(__name__)
app.secret_key = "ThisIsSecret"

@app.route('/')
def form():
	return render_template('form.html') #this is our root route

@app.route('/display_name', methods=['POST'])
def create_user():
	if request.form['action'] == 'register':
		print "Got Register Post"
		session['name'] = request.form['name']
		session['email'] = request.form['email']
		return redirect('/show')
	elif request.form['action'] == 'login':
		print "Got Login Post"
		session['name'] = request.form['name']
		session['email'] = request.form['email']
		return redirect('/show')

@app.route('/show')
def show_user():
	return render_template('output.html')

app.run(debug=True)

