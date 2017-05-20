from flask import Flask, request, redirect, render_template, session, flash
from mysqlconnection import MySQLConnector
app = Flask(__name__)
app.secret_key = "ThisIsSecret"
mysql = MySQLConnector(app,'group_activity_db')

@app.route('/')
def index():
	query = "SELECT * FROM users"
	table = mysql.query_db(query) 
	return render_template('index.html',table=table)

#when the user clicks on the new user link it will take them here which will link a page
@app.route('/new_user')
def new_user():
	return render_template('add.html')

#adding a new user
@app.route('/add_this_user', methods=['POST'])
def create():
	
    #since we want to insert data we must use ":"
    query = "INSERT INTO users (full_name, email, created_at) VALUES (:fat_name, :email, NOW())"

    #query data is what we will put in...
    #fat_name key's value will be from the form under 'full_name'
    query_data = {'fat_name': request.form['full_name'], 'email': request.form['email']}
    mysql.query_db(query, query_data)
    # print 'before query'
    # print mysql.query_db(query, query_data)
    return redirect('/')

@app.route('/show/<id>')
def show(id):
	query = "SELECT id , full_name, email, DATE_FORMAT(created_at, '%M %d %Y') as new_date FROM users WHERE id = " + id
	show_user = mysql.query_db(query) 
	return render_template('show.html', show_user=show_user)

@app.route('/edit/<id>')
def edit(id):
	print id
	return render_template('edit.html', id=id)

@app.route('/edit_user/<id>', methods=["POST"])
def edit_user(id):
	full_name = request.form['full_name']
	email = request.form['email']

	query = "UPDATE users SET full_name = :full_name, email = :email, created_at = NOW() WHERE id = " + id
	query_data = {'full_name': full_name, 'email': email}

	mysql.query_db(query, query_data)

	return redirect('/')

@app.route('/del/<id>')
def dell(id):
	
	query = "DELETE FROM users WHERE id = :id"
	query_data = {'id':id}
	mysql.query_db(query, query_data)

	return redirect('/')



app.run(debug=True)