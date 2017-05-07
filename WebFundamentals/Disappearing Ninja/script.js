$(document).ready(function(){

	$('#color').click(function(){
		changeBackground();
	})

	$("img").click(function(){
		$(this).hide();
	})

	$('#reset').click(function(){
		$("img").show();
	})


});

myColors = ['red', 'blue', 'yellow', 'green', 'black'];

var counter = 0;

function changeBackground(){
	
	$('body').css("background-color", myColors[counter]);

	counter = (counter + 1) % myColors.length;

}