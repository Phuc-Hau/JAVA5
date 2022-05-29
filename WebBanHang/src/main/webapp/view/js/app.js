
function hienthi(params) {
    document.getElementById('danhmucsp').style.display = ''
    document.getElementById('danhmucspkp').style.display = ''
}

function an(params) {
    document.getElementById('danhmucsp').style.display = 'none'
    document.getElementById('danhmucspkp').style.display = 'none'
}


$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 20) {
            $('#toTopBtn').fadeIn();
        } else {
            $('#toTopBtn').fadeOut();
        }
    });

    $('#toTopBtn').click(function () {
        $("html, body").animate({
            scrollTop: 0
        }, 1000);
        return false;
    });
});

$(document).ready(function () {

    $('.items').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4
    });

});