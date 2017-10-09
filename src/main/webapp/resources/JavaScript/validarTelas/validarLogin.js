$(document).ready(function () {
	$.material.init();

	$('input[id="senha"]').unbind('keyup').bind('keyup', function (e) {
		let thisVal = $(this).val();

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});

	$('input[id="usuario"]').unbind('keyup').bind('keyup', function (e) {
		let thisVal = $(this).val();

		if (thisVal == null || thisVal == "") {
			$(this).css("border-color", "#FF0000");
		} else {
			$(this).css("border-color", "#FFFFFF");
		}
	});

	$('#btnEntrar').click(function () {

		let usuarioLogin = $('#usuario').val();
		let senhaLogin = $('#senha').val();
		let display = false;

		if (usuarioLogin == null || usuarioLogin == "") {
			$('#usuario').css("border-color", "#FF0000");
			display = true;
		}

		if (senhaLogin == null || senhaLogin == "") {
			$('#senha').css("border-color", "#FF0000");
			display = true;
		}

		if (display) {
			return false;

		} else {
			let object = { usuario: usuarioLogin, senha: senhaLogin };
			$.ajax({
				url: "/ProjetoTcc/entrarTelaPrincipal",
				type: 'POST',
				data: JSON.stringify(object),
				contentType: "application/json",
				dataType: 'json',
				success: function (data,) {
					if (data.codigo !== 0) {
						/*
						 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
						 */

						alert(data.mensagem);

						/*
						 *  Dar um jeito de aparecer a mensagem antes do "return false"
						 */
						return false;
					} else {
						window.location.href = '/ProjetoTcc/telaPrincipal';
						return true;
					}
				}
			});
		}

	});

	$('#btnCadastrar').click(function () {
		window.location.href = '/ProjetoTcc/telaCadastrarUsuario/acrescentar';
	});
});