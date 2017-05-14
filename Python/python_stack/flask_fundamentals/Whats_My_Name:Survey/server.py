from flask import Flask, render_template, request, redirect

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
   return render_template('yourname.html', name=name, location=location, language=language, comment=comment)
app.run(debug=True)

