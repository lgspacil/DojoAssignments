from flask import Flask, request, redirect, render_template, session, flash
from validate_email import validate_email
from mysqlconnection import MySQLConnector
import md5

app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'login_registration')

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/register', methods=['POST'])
def register():
	first_name = request.form['first_name']
	last_name = request.form['last_name']
	email = request.form['email']
	password = md5.new(request.form['password']).hexdigest()
	confirm_password = md5.new(request.form['confirm']).hexdigest()

	count = 0

	if len(first_name) > 2:
		count += 1
	else:
		flash("You must type in a name longer than 2 characters")

	if len(last_name) > 2:
		count += 1 
	else:
		flash("You must type in a name longer than 2 characters")

	if len(email) > 2 and validate_email(email):
		count += 1
	else:
		flash("You must type in an email longer than 2 characters or enter a valid email address")

	if len(password) > 2:
		count += 1
	else:
		flash("Enter a longer email")

	if confirm_password == password:
		count += 1
	else:
		flash("Your passwords are not the same")

	if count == 5:

		#Count how many times the data is the in the database
		query = "SELECT COUNT(*) from users WHERE email = :email"

		query_data = {'email':email}
		output = mysql.query_db(query, query_data)
		if output[0]['COUNT(*)'] == 1:
			flash("Email already exists")
			return redirect('/')

		else:
			new_query = "INSERT INTO users (first_name, last_name, email, password, password_conf, created_at, updated_at) VALUES (:first_name, :last_name, :email, :password, :confirm_password, NOW(), NOW())"
			new_query_data = {'first_name': first_name, 'last_name':last_name, 'email':email, 'password':password, 'confirm_password':confirm_password}
			mysql.query_db(new_query, new_query_data)
			return render_template('success.html')

	return redirect('/')


@app.route('/show')
def show():
	query = "SELECT first_name, last_name, email, password, DATE_FORMAT(created_at, '%M %d %Y') as new_date FROM users"
	users = mysql.query_db(query)
	return render_template('show.html', users=users)

@app.route('/login', methods=['POST'])
def login_user():
	email = request.form['email']
	password = request.form['password']

	user_query = "SELECT * from users WHERE email = :email LIMIT 1"
	query_data = {'email':email}
	user = mysql.query_db(user_query, query_data)
	
	if len(user) !=0: #checks if we get a list dict back, if we do it means that the email is in our database

		encrypted_password = md5.new(password).hexdigest() #recreatig the encrypted password

		if user[0]['password'] == encrypted_password: #checking if both encryptions are the same
			session['userID'] = user[0]['id'] #creating a session unique to this user
			print "The session id unique to this user is: "
			print session['userID']
			return render_template('success.html')
		else:
			flash("invalid password")
	else:
		flash("invalid email")

	return redirect('/')


app.run(debug=True)

