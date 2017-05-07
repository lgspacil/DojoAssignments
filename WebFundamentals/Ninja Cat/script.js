$(document).ready(function(){

	$('#cat0').click(function(){
		if ($(this).attr("src") == 'img/cat0.png'){ //checks what image it is
			$(this).attr('src', 'img/ninja0.png');  //if its the cat, make it the ninja
		} else{
			$(this).attr('src', 'img/cat0.png'); //else make it the cat
		}
	})

	$('#cat1').click(function(){
		if ($(this).attr("src") == 'img/cat1.png'){
			$(this).attr('src', 'img/ninja1.png');
		} else{
			$(this).attr('src', 'img/cat1.png');
		}
	})

	$('#cat2').click(function(){
		if ($(this).attr("src") == 'img/cat2.png'){
			$(this).attr('src', 'img/ninja2.png');
		} else{
			$(this).attr('src', 'img/cat2.png');
		}
	})

	$('#cat3').click(function(){
		if ($(this).attr("src") == 'img/cat3.png'){
			$(this).attr('src', 'img/ninja3.png');
		} else{
			$(this).attr('src', 'img/cat3.png');
		}
	})

	$('#cat4').click(function(){
		if ($(this).attr("src") == 'img/cat4.png'){
			$(this).attr('src', 'img/ninja4.png');
		} else{
			$(this).attr('src', 'img/cat4.png');
		}
	})





});