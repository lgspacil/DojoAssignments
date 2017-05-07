$(document).ready(function(){

	alert('testing')
	
	$('#ball').click(function(){
		$(this).hide("slow");
	})

	$('#1').click(function(){
		$('#ball').toggle("slow");
	})


	$('#2').click(function(){
		$('#pannel').slideDown("slow");
	})

	$('#3').click(function(){
		$('#pannel').slideUp("slow");
	})

	$('#3').hover(function(){
		$(this).css('color', 'red');
	})

	$('#4').click(function(){
		$('#pannel').slideToggle("slow");
	})

	$('#5').click(function(){
		$('#neymar').fadeIn("slow");
	})

	$('#6').click(function(){
		myfunction();
	})

	
	$('#next').click(function(){
		changeBackground();
	})

	$('#8').click(function(){
		$('p').before("<p>*************</p>");
	})

	$('#9').click(function(){
		$('p').after("<p>+++++++++++</p>");
	})

	$('#10').click(function(){
		$('ol').append("<li><b>This is a new item</b></li>");
	})

	$('#11').click(function(){
		$('li').html("Change me to a new item with html");
	})

	$('#12').click(function(){
		$('#neymar').attr({height: 300, width: 300});
	})

	$('#13').click(function(){
		$('input').val("Lucas Spacil");
	})

	$('#14').click(function(){
		$('#14_p').text("Setting text to this:");
	})


});

function myfunction(){
	$('#neymar').fadeOut("slow");
}


var myColors = ['red', 'purple', 'blue', 'orange'];
var counter = 0

function changeBackground(){
	
		$('body').css("background-color", myColors[counter]);

		counter = (counter + 1) % myColors.length; //increment your counter the % 
}







