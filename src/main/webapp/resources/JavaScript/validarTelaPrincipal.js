$(document).ready(function() {
	$.material.init();
	
	function pegarDadosUsuario() {
		var object = {};

		$.ajax({
			url: "/ProjetoTcc/pegarIdUsuarioCadastrado",
			type: 'POST',
			data: JSON.stringify(object),
			contentType: "application/json",
			dataType: 'json',
			success: function(data, status) {
				if(data.mensagem != null) {
					alert(data.mensagem);
					return false;
				}
				return true;
			}
		});
	};
	
	pegarDadosUsuario();
});