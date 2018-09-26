$(document).ready(function(){
  $('.sidenav').sidenav();

  var altura = $('#barra-menu').offset().top;
	
	$(window).on('scroll', function(){
		if ( $(window).scrollTop() > altura ){
			$('#barra-menu').addClass('menu-fixed');
		} else {
			$('#barra-menu').removeClass('menu-fixed');
		}
	});
});


    
    