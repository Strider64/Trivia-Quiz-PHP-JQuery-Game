$(function() {
    var $keys = $(".loginBtn");
    $('#login').hide();
    $keys.on('click', function(e) {
        e.preventDefault();
        $('#login').slideToggle(500);
    });
}); //End of Document Ready

