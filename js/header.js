$(document).ready(function(e){
    $('#trigger').click(function(e){
		e.preventDefault();
        $('#navbg1').toggleClass('active');
        $('#trigger').toggleClass('active');
    });
    $('.mainmenu li').mouseenter(function(e){
        $(this).find('.submenu').stop().slideDown();
    });
    $('.mainmenu li').mouseleave(function(e){
        $(this).find('.submenu').stop().slideUp();
    });
});
    