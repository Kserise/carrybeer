$(document).ready(function(){
    $('#next').click(function(e){
        e.preventDefault();
        $('#maincon2').removeClass('hid');
    });

    $('.bn').vegas({
        slides: [
            {
                src:"media/beervidcut.jpg",
                video:{
                    src:["media/beervidcut.mp4"],
                    loop:true,
                    mute:true
                }
            },
            {
                src:"media/beervid1cut.jpg",
                video:{
                    src:["media/beervid1.mp4"],
                    loop:true,
                    mute:true
                }
            }
        ],
        delay:10000
    });
});

