from flask import Flask, render_template, request, redirect, session
# import the Connector function
from mysqlconnection import MySQLConnector
app = Flask(__name__)
# connect and store the connection in "mysql" note that you pass the database name to the function
mysql = MySQLConnector(app, 'example')
# an example of running a query




@app.route('/')
def welcome():
	result = mysql.query_db("SELECT * FROM users")
	return render_template('welcome.html', result = result)

	
app.run(debug=True)