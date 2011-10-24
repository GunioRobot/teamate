function initBBEditor(selector){
	$(selector).bbcodeeditor(
	{
		//preview			:	$('.preview'),
		//exit_warning		:	true,	
		bold				:	$('.bold'),
		italic				:	$('.italic'),
		underline			:	$('.underline'),
		link				:	$('.link'),
		//quote				:	$('.quote'),
		//code				:	$('.code'),
		//image				:	$('.image'),
		nlist				:	$('.numbering'),
		blist				:	$('.bullets'),
		back				:	$('.undo'),
		forward				:	$('.redo'),
		//back_disable		:	'btn undo disabled',
		//forward_disable	:	'btn redo disabled',
		dsize				:	false
	});
}

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
    
    $('div.content').prepend(outdatedDiv);
    $('#outdated').slideDown(800)
}

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

    $('.alert-message .close').live('click', function(){
        $(this).parents('.alert-message').slideUp(800);
    })
});

