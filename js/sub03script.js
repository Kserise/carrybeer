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

$(window).resize(function(){
    var width = window.innerWidth;
    if(width >= 1450){
        $('.bn').css('height','570');
    }else if(width <= 1449, width >= 1025){
        $('.bn').css('height','420');
    }else if(width <= 1024, width >= 768){
        $('.bn').css('height','575');
    }else if(width <= 767){
        $('.bn').css('height','400');
    }
});

function search(){
    document.searchFrm.search;
}

function addBeer(brname){
	url = "beerinfor/addBeer.jsp?brname="+brname;
	window.open(url, "addBeer","width=500px,height=150px, directories=no,scrollbars=0,menubar=no,location=no");
}

function deleteMyBeer(brname){
	url = "beerinfor/deleteMyBeer.jsp?brname="+brname;
	window.open(url, "deleteBeer","width=500px,height=150px,directories=no,scrollbars=0,menubar=no,location=no");
}

function area(value){
	document.areaFrm.keyWord.value = value;
	document.areaFrm.submit();
}