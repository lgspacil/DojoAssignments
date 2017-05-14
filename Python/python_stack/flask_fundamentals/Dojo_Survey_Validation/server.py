from flask import Flask, render_template, request, redirect
import re

EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
app=Flask(__name__)

@app.route('/')
def form():
	return render_template('form.html') #this is our root route

@app.route('/display_name', methods=['POST'])
def create_user():
   	name = request.form['name']
   	location = request.form['location']
   	language = request.form['language']
   	comment = request.form["comment"]

	if len(request.form['email']) < 1:
		flash("Email cannot be blank")
	elif not EMAIL_REGEX.macth(request.form['email']):
		flash("invalid email address!")
	else:
		email = request.form['email']


   	return render_template('yourname.html', name=name, location=location, language=language, comment=comment, email=eamil)
app.run(debug=True)

