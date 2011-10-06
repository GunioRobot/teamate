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

function showOutdatedBrowserDiv(){
    var outdatedDiv; 
    outdatedDiv = '<div class="alert-message block-message error" id="outdated" style="display:none">';
    outdatedDiv += '<a href="javascript:void(0)" class="close" onclick="$(this).parent().slideUp(800)">×</a>';
    outdatedDiv += '<strong>You\'re using outdated browser</strong>';
    outdatedDiv += '<p>';
    outdatedDiv += 'Please download one of the modern browsers.';
    outdatedDiv += '</p>';
    outdatedDiv += '<img src="http://paulirish.com/lovesyou/browser_logos-32.png" alt="Modern browsers"/>';
    outdatedDiv += '<p>';
    outdatedDiv += 'Modern browsers will improve your overall internet experience! Yay!';
    outdatedDiv += '</p>';
    outdatedDiv += '</div>';
    
    $('ul.breadcrumb').before(outdatedDiv);
    $('#outdated').slideDown(800)
}