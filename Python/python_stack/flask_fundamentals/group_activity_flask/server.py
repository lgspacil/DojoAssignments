from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def welcome_screen():
	return render_template('welcome.html')

@app.route('/left')
def left():
	return render_template('left.html')

@app.route('/right')
def right():
	return render_template('right.html')

@app.route('/right/red')
def right_red():
	return render_template('right_red.html')

@app.route('/right/black')
def right_black():
	return render_template('right_black.html')

app.run(debug=True)  