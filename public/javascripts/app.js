$(document).on('click', 'a.top', function(event){
	event.preventDefault();
	$('html, body').animate({ scrollTop: 0 });
})

$(document).on('click', '#services-menu li a', function(event){
	event.preventDefault();
	$('html, body').animate({
		scrollTop: $(event.target.getAttribute('href')).offset().top
	});
})
