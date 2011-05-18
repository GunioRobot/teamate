$(document).ready(function(){

    // main menu fade
	$('#menu').children().hover(function() {
		$(this).siblings().stop().fadeTo(300,0.5);

	}, function() {
		$(this).siblings().stop().fadeTo(500,1);
	});
	
	// sidebar submenus show/hide
	$('.toggle-submenu').click(function() {
	    var ul = $(this).parent().find('ul');
	    if(ul.css('display')=='none'){
	        ul.slideDown();
	    }
	    else{
	        ul.slideUp();
	    }
	});

});

