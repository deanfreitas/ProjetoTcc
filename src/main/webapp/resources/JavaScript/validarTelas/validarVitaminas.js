$(document).ready(function() {
	$('#btnVitaminaA').click(function(){
        $('#idVitaminaA').toggle();
        $('#OndeVitA').show();
    });
});


$(document).ready(function() {
	$('#btnVitaminaAreturn').click(function(){
        $('#idVitaminaA').show();
        $('#OndeVitA').toggle();
    });
});