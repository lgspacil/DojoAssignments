from flask import Flask, request, redirect, render_template, session, flash
from validate_email import validate_email
from mysqlconnection import MySQLConnector
app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'email_validation')

@app.route('/')
def index():
	return render_template('index.html')

@app.route('/check_email', methods=['POST'])
def check():
	email = request.form['email']

	if validate_email(email):
		query = "INSERT INTO emails (email, created_at, updated_at) VALUES (:email, NOW(), NOW())"
		query_data = {'email': email}
		mysql.query_db(query, query_data)

		return redirect('/')
	else:
		flash("That is not a valid email!")
		return render_template('index.html')



@app.route('/success')
def success():

	query = "SELECT * from emails"
	result = mysql.query_db(query)

	return render_template('success.html', result=result)


app.run(debug=True)
