from flask import Flask, request, redirect, render_template, session, flash
from mysqlconnection import MySQLConnector
app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'group_activity_db')

@app.route('/')
def index():
	query = "SELECT * FROM users"
	people = mysql.query_db(query)
	return render_template('index.html', people=people)


@app.route('/add')
def add():
	return render_template('add.html')

@app.route('/add_user', methods=['POST'])
def add_user():

	full_name = request.form['full_name']
	email = request.form['email']

	query = "INSERT INTO users (full_name, email, created_at) VALUES (:full_name, :email, NOW())"
	query_data = {'full_name':full_name, 'email':email}
	mysql.query_db(query, query_data)
	return redirect('/')

@app.route('/show/<id>')
def show(id):
	print id
	query = "SELECT id, full_name, created_at FROM users WHERE id = " + id
	info = mysql.query_db(query)
	return render_template('show.html', info=info)

@app.route('/edit/<id>')
def edit(id):
	return render_template('edit.html', id=id)

@app.route('/edit_user/<id>', methods=['POST'])
def edit_user(id):

	full_name = request.form['full_name']
	email = request.form['email']

	query = "UPDATE users SET full_name = :full_name, email = :email, created_at = NOW() WHERE id = " + id
	query_data = {'full_name': full_name, 'email':email}

	mysql.query_db(query, query_data)

	return redirect('/')

@app.route('/delete/<id>')
def delete(id):
	print id
	query = "DELETE FROM users WHERE id =" + id
	mysql.query_db(query)
	return redirect('/')
	

app.run(debug=True)




# query = "INSERT INTO full_name = :full_name, email = :email, created_at = NOW() WHERE id = " + id