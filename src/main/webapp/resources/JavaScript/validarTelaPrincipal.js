/*$(document).ready(function() {
	$.material.init();
	
	var idUsuario;
	pegarDadosUsuario();
	
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
				} else {
					idUsuario = data.listaObjetosUnicos;
					return true;
				}
				return false;
			}
		});
	};
	
	$('#btnAlterarDados').click(function() {
		location.href = '/ProjetoTcc/telaUpdateCadastro/' + idUsuario;
	});
});   */