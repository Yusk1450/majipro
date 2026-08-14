
$(function()
{
	$('.drawer').drawer();

	$('.img-anim').on('inview', function(event, isInView)
	{
		if (isInView)
		{
			$(this).show().addClass('img-wrap');
		}
	});

	$('.slick').slick({
		arrows: false,
		autoplay: true,
		swipe: true,
		infinite: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		dots: true
	});
});
