from flask import Flask, request, redirect, render_template, session, flash
from mysqlconnection import MySQLConnector
app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'full_friends')

@app.route('/')
def home():
	
	query = "SELECT * from friends"
	friends = mysql.query_db(query)

	return render_template('index.html', friends=friends)


@app.route('/add_friend', methods=['POST'])
def add_friend():

	full_name = request.form['full_name']
	age = request.form['age']

	query = "INSERT INTO friends (full_name, age, friends_since) VALUES (:full_name, :age, NOW())"
	query_data = {'full_name':full_name, 'age':age}

	mysql.query_db(query, query_data)

	return redirect('/')


app.run(debug=True)