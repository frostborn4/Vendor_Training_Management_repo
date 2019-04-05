$( document ).ready(function() {

    function showForm(offset) {
        document.getElementById('popup').style.display = "block";
    }
    
    function hideForm() {
        document.getElementById('popup').style.display = "none";
    }
    
    $(".pull-right").hover(function () {
            var buttonPosition = ($(this).offset().top);
            showForm(buttonPosition);
        },
        function() {
            hideForm();
        }
    );

});