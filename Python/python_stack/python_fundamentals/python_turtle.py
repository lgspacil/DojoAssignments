# try this either as a .py file or in the python shell
import turtle
# the distance we want the pointer to travel each time
myTurtle = turtle.Turtle(shape= "turtle")
myTurtle.circle(50)

myTurtle.penup()
myTurtle.setposition(-120, 0)
myTurtle.pendown()
myTurtle.circle(50)

myTurtle.penup()
myTurtle.setposition(60,60)
myTurtle.pendown()
myTurtle.circle(50)
 
myTurtle.penup()
myTurtle.setposition(-60, 60)
myTurtle.pendown()
myTurtle.circle(50)
 
myTurtle.penup()
myTurtle.setposition(-180, 60)
myTurtle.pendown()
myTurtle.circle(50)

turtle.getscreen()._root.mainloop()
