from flask import Flask, render_template, request, redirect

app=Flask(__name__)

@app.route('/')
def welcome():
	return render_template('welcome.html') #this is our root route


@app.route('/ninjas')
def ninjas():
	return render_template('ninjas.html')

@app.route('/ninja/<color>')
def one_ninja(color):
	if color == "blue":
		image = 'images/leonardo.gif'
	elif color == "orange":
		image = 'images/mikey.gif'
	elif color == 'red':
		image = 'images/profile_raphael.gif'
	elif color == 'purple':
		image = 'images/Donatello.gif'
	else:
		image = 'images/notapril.jpg'
	
	return render_template('colors.html', color=color, image=image)


app.run(debug=True)

