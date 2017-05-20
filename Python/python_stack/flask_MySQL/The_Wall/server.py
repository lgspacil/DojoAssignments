from flask import Flask, request, redirect, render_template, session, flash
from validate_email import validate_email
from mysqlconnection import MySQLConnector
import md5


app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'the_wall2')

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/register', methods=['POST'])
def register():
	first_name = request.form['first_name']
	last_name = request.form['last_name']
	email = request.form['email']
	password = md5.new(request.form['password']).hexdigest()

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


	if count == 4:

		#Count how many times the data is the in the database
		query = "SELECT COUNT(*) from users WHERE email = :email"

		query_data = {'email':email}
		output = mysql.query_db(query, query_data)
		if output[0]['COUNT(*)'] == 1:
			flash("Email already exists")
			return redirect('/')

		else:
			new_query = "INSERT INTO users (first_name, last_name, email, password, created_at, updated_at) VALUES (:first_name, :last_name, :email, :password, NOW(), NOW())"
			new_query_data = {'first_name': first_name, 'last_name':last_name, 'email':email, 'password':password}
			mysql.query_db(new_query, new_query_data)

	return redirect('/')


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
			return redirect('/wall')
		else:
			flash("invalid password")
	else:
		flash("invalid email")

	return redirect('/')


@app.route('/post', methods=['POST'])
def add_post():
	new_message = request.form['message_post']

	query = "INSERT INTO messages (user_id, message, created_at, updated_at) VALUES (:user_id, :message, NOW(), NOW())"
	query_data={'user_id':session['userID'], 'message':new_message}
	mysql.query_db(query, query_data)

	return redirect('/wall')

@app.route('/comment', methods=['POST'])
def add_comment():
	new_comment = request.form['comment_post']
	messageid = request.form['messageid']

	query = "INSERT INTO comments (user_id, comment, created_at, updated_at, message_id) VALUES (:user_id, :comment, NOW(), NOW(), :message_id)"
	query_data={'user_id':session['userID'], 'comment':new_comment, 'message_id':messageid}
	mysql.query_db(query, query_data)

	
	return redirect('/wall')


@app.route('/wall')
def wall():

	query1 = "SELECT users.first_name, users.last_name, messages.message, users.id as userid, messages.id as messageid, DATE_FORMAT(messages.created_at, '%M %d %Y %l:%i %p') as date from messages join users on users.id = messages.user_id ORDER BY messages.created_at DESC"
	messages = mysql.query_db(query1)
	
	query2 = "SELECT users.first_name, users.last_name, comments.comment, users.id, comments.message_id, DATE_FORMAT(comments.created_at, '%M %d %Y %l:%i %p') as comment_date from comments join users on users.id = comments.user_id"
	comments = mysql.query_db(query2)

	return render_template('wall.html', messages=messages, comments=comments)



app.run(debug=True)

