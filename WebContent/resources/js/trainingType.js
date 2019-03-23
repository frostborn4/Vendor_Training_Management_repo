$(document).ready(function () {

    $('#classRoomForm').hide();
    $('#onlineForm').hide();
   
    $('#classRoom').click(function() {
        $('#classRoomForm').show();
        $('#onlineForm').hide();
    })
    
    $('#online').click(function() {
        $('#onlineForm').show();
        $('#classRoomForm').hide();
    })
    
});