$(document).ready(function () {
	function getPacientes() {
		let object;

		$.ajax({
			url: "/ProjetoTcc/getPacientesNutricionista",
			type: 'GET',
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
					for (let i in data.listaObjetos) {
						$('#pacientes tbody').append(`<tr class="info" style="cursor: pointer;" id="tr` + i + `">
  															<td> <input type="checkbox" id="checkbox`+ i + `" value="` + data.listaObjetos[i].id + `"></td>
    														<td id="idNome`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.nome : 'null') + `</td> 
    														<td id="idIdade`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.idade : 'null') + `</td>
    														<td id="idSexo`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.sexo : 'null') + `</td>
  														</tr>`);
						$("#tr" + i).click(function () {
							location.href = '/ProjetoTcc/telaAnamnese/' + data.listaObjetos[i].id
						});
					}
					$('#pacientes').DataTable();
					return true;
				}
			}
		});
	}

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

	getPacientes();

});