$(document).ready(function () {
	$('#pacientes').DataTable();

	$('#adicionarPaciente').click(function () {
		let object = {};

		$.ajax({
			url: "/ProjetoTcc/cadastrarPaciente",
			type: 'POST',
			data: JSON.stringify(object),
			contentType: "application/json",
			dataType: 'json',
			success: function (data, status) {
				if (data.mensagem != null) {
					/*
					 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
					 *  Essa mensagem está escrito "Já tem um login Igual a esse", que aparece quando o usuario coloca um email que já foi colocado.
					 */

					alert(data.mensagem);

					/*
					 *  Dar um jeito de aparecer a mensagem antes do "return false"
					 */
					return false;
				} else {
					let idPaciente = data.objeto;
					let object = { id: idPaciente };

					$.ajax({
						url: "/ProjetoTcc/inserirMedicoAoPaciente",
						type: 'PUT',
						data: JSON.stringify(object),
						contentType: "application/json",
						dataType: 'json',
						success: function (data, status) {
							if (data.mensagem != null) {
								/*
								 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
								 *  Essa mensagem está escrito "Já tem um login Igual a esse", que aparece quando o usuario coloca um email que já foi colocado.
								 */

								alert(data.mensagem);

								/*
								 *  Dar um jeito de aparecer a mensagem antes do "return false"
								 */
								return false;
							} else {

								location.href = '/ProjetoTcc/telaAnamnese/' + idPaciente;
								return true;
							}
						}
					});

				}
			}
		});
	});

});