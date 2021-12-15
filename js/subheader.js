$(document).ready(function( ) { 

    $('#mainmenu > li').mouseenter(function(e) {
        $(this).find('.submenu').stop( ).slideDown( );
    });
    $('#mainmenu > li').mouseleave(function(e) {
        $(this).find('.submenu').stop( ).slideUp( );
    });
    
    
     $('#open, #close, #black_cover').click(function(e){
        e.preventDefault( );
        $('#navbar').toggleClass('on');
        $('#black_cover').toggleClass('on');
    });

    $(window).scroll(function(){
        var top = $(this).scrollTop();

        if(top >= 300){
            $('header').css({
                'background':'rgba(55,0,65,0.75)',
                'box-shadow':'1px 1px 3px #000'
            });
            $('#open').css('color','#fff');
            $('.topmenu.icon a').css('color','#fff');
        }else { 
            $('header').css({
                'background':'none',
                'box-shadow':'none'
            });
            $('#open').css('color','#b2b2b2');
            $('.topmenu.icon a').css('color','#b2b2b2');
        }
    });
});




