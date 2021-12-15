$(window).load(function() {
    $('.flexslider').flexslider({animation: "slide"});
    $('.bn2').vegas({
        slides: [
            {
                src:"media/beerRecipe1.jpg",
                video:{
                    src:["media/beerRecipe1.mp4"],
                    loop:true,
                    mute:true
                }
            },
            {
                src:"media/beerRecipe2.jpg",
                video:{
                    src:["media/beerRecipe2.mp4"],
                    loop:true,
                    mute:true
                }
            }
        ],
        delay:10000
    });

    $('#js_version').liteAccordion({
			theme : 'basic', // 테마 설정(light, dark, basic, stitch)
			rounded : true, // 박스의 모서리를 둥글게 처리할지 지정
			enumerateSlides : true, // 슬라이더를 열거할 지 지정
			firstSlide : 1, // 처음 보여줄 슬라이드를 지정
			linkable : true,
			easing : 'easeOutBounce' // 이징 효과 지정(easeInOutSine, swing)
		});
        var wwidth = $(window).width();
        var wheight = $(window).height();
    });

$(window).resize(function(){
    var width = window.innerWidth;
    if(width >= 1450){
        $('.bn2').css('height','570');
    }else if(width <= 1449, width >= 1050){
        $('.bn2').css('height','420');
    }else if(width <= 1049, width >= 751){
        $('.bn2').css('height','570');
    }else if(width <= 750){
        $('.bn2').css('height','400');
    }
});

$(document).ready(function(e) {		
    $('.flexslider').flexslider({
        animation: "slide",
        animationLoop: true,
        itemWidth: 310,
        itemMargin: 0
    });
});