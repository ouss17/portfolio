jQuery(function () {
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 1000) {
                $('#up').css('right', '10px');
            } else {
                $('#up').removeAttr('style');
            }
        });
    });
});

$(document).ready(function () {

    /* Every time the window is scrolled ... */
    $(window).scroll(function () {

        /* Check the location of each desired element */
        $('.detail').each(function (i) {

            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();

            /* If the object is completely visible in the window, fade it it */
            if (bottom_of_window > bottom_of_object) {

                $(this).animate({ 'opacity': '1' }, 500);
            }

        });

    });

});

$('#contact').on('click', ()=>{
    $('.second-list').toggleClass('hide');
})