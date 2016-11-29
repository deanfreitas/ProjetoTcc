$(document).ready(function () {
	var listIdPaciente = [];
	var listNomePaciente = [];

	function getPacientes() {
		let object;

		$.ajax({
			url: "/ProjetoTcc/getPacientesNutricionista",
			type: 'GET',
			data: JSON.stringify(object),
			contentType: "application/json",
			dataType: 'json',
			success: function (data, status) {
				if (data.codigo == 1) {
					/*
					 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
					 *  Essa mensagem está escrito "Já tem um login Igual a esse", que aparece quando o usuario coloca um email que já foi colocado.
					 */

					alert(data.mensagem);

					/*
					 *  Dar um jeito de aparecer a mensagem antes do "return false"
					 */
					return false;
				}
				else
					if (data.codigo == 2) {
						alert(data.mensagem);
						location.href = '/ProjetoTcc/sairSistema';
					} else {
						for (let i in data.listaObjetos) {
							$('#pacientes tbody').append(`<tr class="info" style="cursor: pointer;" id="tr` + i + `">
  															<td> <input type="checkbox" id="checkbox`+ i + `" value="` + data.listaObjetos[i].id + `"></td>
    														<td id="idNome`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.nome : 'null') + `</td> 
    														<td id="idIdade`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.idade : 'null') + `</td>
    														<td id="idSexo`+ i + `">` + (data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.sexo : 'null') + `</td>
  														</tr>`);
							$("#idNome" + i).click(function () {
								location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
							});

							$("#idIdade" + i).click(function () {
								location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
							});

							$("#idSexo" + i).click(function () {
								location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
							});

							$("#checkbox" + i).click(function () {
								if ($(this).is(":checked")) {
									listIdPaciente.push($(this).val());
									listNomePaciente.push((data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.nome : 'null'));
								} else {
									listIdPaciente.pop($(this).val());
									listNomePaciente.pop((data.listaObjetos[i].identificacao != null ? data.listaObjetos[i].identificacao.nome : 'null'));
								}
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
				if (data.codigo != 0) {
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
							if (data.codigo == 1) {
								/*
								 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
								 *  Essa mensagem está escrito "Já tem um login Igual a esse", que aparece quando o usuario coloca um email que já foi colocado.
								 */

								alert(data.mensagem);

								/*
								 *  Dar um jeito de aparecer a mensagem antes do "return false"
								 */
								return false;
							} else
								if (data.codigo == 2) {
									alert(data.mensagem);
									location.href = '/ProjetoTcc/sairSistema';
								} else {
									location.href = '/ProjetoTcc/telaAnamnese/cadastrar/' + idPaciente;
									return true;
								}
						}
					});
				}
			}
		});
	});

	$("#apagarPaciente").click(function () {
		let object = [];

		if (listIdPaciente.length > 0) {
			for (let i in listIdPaciente) {
				object.push(
					{
						id: listIdPaciente[i],
						identificacao: { nome: listNomePaciente[i] }
					}
				)
			}

			$.ajax({
				url: "/ProjetoTcc/detelarPacientes",
				type: 'DELETE',
				data: JSON.stringify(object),
				contentType: "application/json",
				dataType: 'json',
				success: function (data, status) {
					if (data.codigo != 0) {
						/*
						 *  Uanderson a mensagem que você vai que aparece no alert está na variavel "data.mensagem"
						 *  Essa mensagem está escrito "Já tem um login Igual a esse", que aparece quando o usuario coloca um email que já foi colocado.
						 */
						for (let i in data.listaObjetos) {
							alert(data.mensagem[i]);
						}

						/*
						 *  Dar um jeito de aparecer a mensagem antes do "return false"
						 */
						return false;
					} else {
						alert(data.mensagem);
						location.href = '/ProjetoTcc/telaPaciente/';
						return true;
					}
				}
			});
		} else {
			alert('Selecione um Paciente para deletar');
		}
	});

	$("#gerarRelatorio").click(function () {
		if(listIdPaciente.length == 1) {
			location.href = '/ProjetoTcc/telaResultados/' + listIdPaciente[0];
		} else 
		if(listIdPaciente.length == 0) {
			alert('Selecione um Paciente para gerar o relatorio');
		} else {
			alert('Selecione apenas um Paciente para gerar o relatorio');
		}
	});
	getPacientes();

});