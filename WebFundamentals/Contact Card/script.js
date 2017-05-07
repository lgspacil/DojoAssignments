$(document).ready(function(){
      




    $(document).on('submit', 'form', function(){

        var firstName = $('.first_name').val();
        var lastName = $('.last_name').val();
        var description = $('.description').val();

        console.log(firstName);

        $('#card_slot').append("<div class='new_box'><h1>"+firstName+ ' '+ lastName+"</h1><h5>Click for Description</h5><p class='hide'>"+description+"</p></div>");
        return false
    });

    $(document).on('click', '.new_box', function(){
        // if ($('p').hasClass("hide")){
        //     $('p').removeClass('hide');
        //     $('h1').addClass('hide');
        //     $('h5').addClass('hide');
        // } else{
        //     $('h1').removeClass('hide');
        //     $('h5').removeClass('hide');
        //     $('p').addClass('hide');
        // }
        $(this).children().toggle("slow");
    });

    

});



    