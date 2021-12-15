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
