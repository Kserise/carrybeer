$(document).ready(function(e) {
        $('#js_version').liteAccordion({
            theme : 'basic',
            rounded : true,
            enumerateSlides : true,
            firstSlide : 1,
            linkable : true,
            easing : 'easeOutBounce'
    });
    $('.bn1').vegas({
        slides: [
            {
            src:"media/beervideo.jpg",
            video:{
                src:["media/beervideo1.mp4"],
                loop:true,
                mute:true
                }
            },
            {
            src:"media/beervideo.jpg",
            video:{
                src:["media/beervideo1.mp4"],
                loop:true,
                mute:true
                }
            }
        ],delay:10000
    });
    $('#next').click(function(e){
        e.preventDefault();
        $('section').removeClass('hidden');
    });


});    

$(window).resize(function(){
    var width = window.innerWidth;
    if(width >= 1450){
        $('.bn1').css('height','570');
    }else if(width <= 1449, width >= 1025){
        $('.bn1').css('height','400');
    }else if(width <= 1024, width >= 768){
        $('.bn1').css('height','570');
    }else if(width <= 767){
        $('.bn1').css('height','400');
    }
});