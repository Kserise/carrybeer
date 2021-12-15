$(document).ready(function( ) { 
	$(".mainmenu > li > a").click(function(e){
			e.preventDefault();
	});
    $(window).scroll(function(){
        var top = $(this).scrollTop();

        if(top >= 300){
            $('header').css({
                'background':'rgba(55,0,65,0.75)',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
            });
            $('.sidenav').css({
                'background':'rgba(55,0,65,0.75)',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
            });
			$('.submenu').css({
                'background':'rgba(55,0,65,0.75)',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
			});
        }else { 
            $('header').css({
                'background':'none',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
            });
            $('.sidenav').css({
                'background':'none',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
            });
			$('.submenu').css({
                'background':'none',
                'box-shadow':'1px 1px 3px rgba(0,0,0,0.15)'
			});
        }
    });
	const sidenav = document.querySelector(".sidenav");
	const open = document.querySelector("#open");
	function toggle(e) {
		e.preventDefault();
		sidenav.classList.toggle("active");
	}
	open.addEventListener("click", toggle);
});




