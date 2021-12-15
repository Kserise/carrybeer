$(document).ready(function( ) { 

    $('#mainmenu > li').mouseenter(function(e) {
        $(this).find('.submenu').stop( ).slideDown( );
    });
    $('#mainmenu > li').mouseleave(function(e) {
        $(this).find('.submenu').stop( ).slideUp( );
    });
    

    $('#open, #close').click(function(e){
        e.preventDefault( );
        $('#navbar').toggleClass('on');
        $('#black_cover').toggleClass('on');
    });

    $('#black_cover').click(function(){
        $('#navbar').removeClass('on');
        $('#black_cover').removeClass('on');
    });

});

