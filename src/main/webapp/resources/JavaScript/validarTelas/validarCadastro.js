$(document)
		.ready(
				function() {
					$.material.init();
					
					var url = window.location.href;
					var idCasdastroPessoa = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();
					
//					Campos para as duas pessoas
					var nome = $('#idNome');
					var sexo = $("input:radio[id='radioSexo']:checked");
					var crn = $('#idCRN');
					var email = $('#idEmail');
					var apelido = $('#idApelido');
					var senha = $('#idSenha');
					
//					Campo para paciente
					var responsavel = $('#idResp');
					
//					Campos para o nutricionista
					var cpf = $('#idCPF');
					var dataNascimento = $('#idDataNascimento');
					var endereco = $('#idEndereco');
					var numero = $('#idNumero');
					var complemento = $('#idComplemento');
					var telefone = $('#idTelefone');
					var celular = $('#idCelular');
					var comercial = $('#idComercial');
					
					var tipoPessoa = null;
					
					if(url.indexOf("nutricionista") > -1) {
						tipoPessoa = "nutricionista";
					} else
						if(url.indexOf("paciente") > -1) {
							tipoPessoa = "paciente";
						}
					
					function onlyNumber(fields) {
						$(fields).unbind('keyup').bind('keyup', function(e) {
							var thisVal = $(this).val();
							var tempVal = "";

							for (var i = 0; i < thisVal.length; i++) {
								if (RegExp(/^[0-9]$/).test(thisVal.charAt(i))) {
									tempVal += thisVal.charAt(i);
								}
							}
							$(this).val(tempVal);
						});
					}

					function validarCPF(cpfField) {

						$(cpfField).blur(
								function() {
									var cpf = $(this).val();
									var i;
									var soma;
									var resto;

									cpf = cpf.replace(/\W/g, "");

									if (cpf.length != 11
											|| cpf == "00000000000"
											|| cpf == "11111111111"
											|| cpf == "22222222222"
											|| cpf == "33333333333"
											|| cpf == "44444444444"
											|| cpf == "55555555555"
											|| cpf == "66666666666"
											|| cpf == "77777777777"
											|| cpf == "88888888888"
											|| cpf == "99999999999") {
										$(this).tooltip("enable");
										$(this).css("border-color", "#FF0000");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1-$2");
										$(this).val(cpf);
										return false;
									}

									soma = 0;
									for (i = 0; i < 9; i++) {
										soma += parseInt(cpf.charAt(i))
												* (10 - i);
									}

									resto = 11 - (soma % 11);
									if (resto == 10 || resto == 11) {
										resto = 0;
									}
									if (resto != parseInt(cpf.charAt(9))) {
										$(this).css("border-color", "#FF0000");
										$(this).tooltip("enable");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1-$2");
										$(this).val(cpf);
										return false;
									}

									soma = 0;
									for (i = 0; i < 10; i++) {
										soma += parseInt(cpf.charAt(i))
												* (11 - i);
									}
									resto = 11 - (soma % 11);
									if (resto == 10 || resto == 11) {
										resto = 0;
									}

									if (resto != parseInt(cpf.charAt(10))) {
										$(this).css("border-color", "#FF0000");
										$(this).tooltip("enable");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1.$2");
										cpf = cpf.replace(/(\d{3})(\d)/,
												"$1-$2");
										$(this).val(cpf);
										return false;
									}
									$(this).css("border-color", "#FFFFFF");
									$(this).tooltip("disable");
									cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
									cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
									cpf = cpf.replace(/(\d{3})(\d)/, "$1-$2");
									$(this).val(cpf);
									return true;
								});
					}

					function validarRG(rgField) {

						$(rgField)
								.blur(
										function() {
											var rg = $(this).val();
											var i;
											var soma;
											var resto;

											rg = rg.replace(/\W/g, "");

											if (rg.length != 9
													|| rg == "00000000000"
													|| rg == "11111111111"
													|| rg == "22222222222"
													|| rg == "33333333333"
													|| rg == "44444444444"
													|| rg == "55555555555"
													|| rg == "66666666666"
													|| rg == "77777777777"
													|| rg == "88888888888"
													|| rg == "99999999999") {
												$(this).tooltip("enable");
												$(this).css("border-color",
														"#FF0000");
												rg = rg.replace(/(\d{2})(\d)/,
														"$1.$2");
												rg = rg.replace(/(\d{3})(\d)/,
														"$1.$2");
												rg = rg.replace(/(\d{3})(\d)/,
														"$1-$2");
												$(this).val(rg);
												return false;
											}

											soma = 0;
											for (i = 0; i < 8; i++) {
												soma += parseInt(rg.charAt(i))
														* (2 + i);
											}

											resto = 11 - (soma % 11);
											if (resto == 10 || resto == 11) {
												resto = 0;
											}
											if (resto != parseInt(rg.charAt(8))) {
												$(this).tooltip("enable");
												$(this).css("border-color",
														"#FF0000");
												rg = rg.replace(/(\d{2})(\d)/,
														"$1.$2");
												rg = rg.replace(/(\d{3})(\d)/,
														"$1.$2");
												rg = rg.replace(/(\d{3})(\d)/,
														"$1-$2");
												$(this).val(rg);
												return false;
											}
											$(this).css("border-color",
													"#FFFFFF");
											$(this).tooltip("disable");
											rg = rg.replace(/(\d{2})(\d)/,
													"$1.$2");
											rg = rg.replace(/(\d{3})(\d)/,
													"$1.$2");
											rg = rg.replace(/(\d{3})(\d)/,
													"$1-$2");
											$(this).val(rg);
											return true;
										});
					}

					function colocarMascaraCep(cepField) {

						$(cepField).blur(function() {
							var cep = $(this).val();

							cep = cep.replace(/\W/g, "");

							cep = cep.replace(/(\d{5})(\d)/, "$1-$2");
							$(this).val(cep);
						});
					}

					function validarCamposDigitados(fields) {
						$(fields).unbind('keyup').bind('keyup', function(e) {
							var thisVal = $(this).val();
							/*
							 *  Essa função de se o campo esta vazio. No if valida se o campo esta vazio ou não.
							 *  Caso esteja, escolhe algum ação para o campo
							 *  
							 *  else é para caso o campo não esteja mais vazio.
							 */
							
							if (thisVal == null || thisVal == "") {
								$(this).css("border-color", "#FF0000");
							} else {
								$(this).css("border-color", "#FFFFFF");
							}
						});
					}

					dataNascimento.blur(
							function() {
								var data = $(this).val();
								var tamanhoData = data.length;
								var dataCerta = true;

								if(data == "") {
									return false;
								} else {
									for (i = 0; i < data.length; i++) {
										if (data.charAt(i) == "-") {
											return false;
										}
									}
								}

								data = data.replace(/\W/g, "");

								var dia = data.substr(0, 2);
								var mes = data.substr(2, 2);
								var ano = data.substr(4, 4);

								if (ano < 1900 || ano > 2016) {
									dataCerta = false;
								}

								else if (mes == 01) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 02) {
									if (dia > 28) {
										dataCerta = false;
									}
								}

								else if (mes == 03) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 04) {
									if (dia > 30) {
										dataCerta = false;
									}
								}

								else if (mes == 05) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 06) {
									if (dia > 30) {
										dataCerta = false;
									}
								}

								else if (mes == 07) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 08) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 09) {
									if (dia > 30) {
										dataCerta = false;
									}
								}

								else if (mes == 10) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes == 11) {
									if (dia > 30) {
										dataCerta = false;
									}
								}

								else if (mes == 12) {
									if (dia > 31) {
										dataCerta = false;
									}
								}

								else if (mes > 12) {
									dataCerta = false
								}

								if (dataCerta == false) {
									$(this).css("border-color", "#FFFFFF");
									$(this).tooltip("enable");
									data = data.replace(/(\d{2})(\d)/, "$1/$2");
									data = data.replace(/(\d{2})(\d)/, "$1/$2");
									$(this).val(data);
									return false;
								} else {
									$(this).css("border-color", "#FF0000");
									$(this).tooltip("disable");
									data = data.replace(/(\d{2})(\d)/, "$1/$2");
									data = data.replace(/(\d{2})(\d)/, "$1/$2");
									$(this).val(data);
									return true;
								}

							});

					celular.blur(function() {
						var celular = $(this).val();

						celular = celular.replace(/\W/g, "");

						celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
						celular = celular.replace(/(\d{0})(\d)/, "$1($2");
						celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
						celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
						$(this).val(celular);
					});

					comercial.blur(
							function() {
								var telefoneComercial = $(this).val();

								telefoneComercial = telefoneComercial
								.replace(/\W/g, "");

								telefoneComercial = telefoneComercial.replace(/(\d{2})(\d)/, "$1 $2");
								telefoneComercial = telefoneComercial.replace(/(\d{0})(\d)/, "$1($2");
								telefoneComercial = telefoneComercial.replace(/(\d{2})(\D)/, "$1)$2");
								telefoneComercial = telefoneComercial.replace(/(\d{4})(\d)/, "$1-$2");

								$(this).val(telefoneComercial);
							});

					telefone.blur(
							function() {
								var telefoneResidencial = $(this).val();

								telefoneResidencial = telefoneResidencial
								.replace(/\W/g, "");

								telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\d)/, "$1 $2");
								telefoneResidencial = telefoneResidencial.replace(/(\d{0})(\d)/, "$1($2");
								telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\D)/, "$1)$2");
								telefoneResidencial = telefoneResidencial.replace(/(\d{4})(\d)/, "$1-$2");

								$(this).val(telefoneResidencial);
							});

					email.blur(function() {
						var emailValidar = $(this).val();
						var emailInvalido = false;
						var i;

						for (i = 0; i < emailValidar.length; i++) {
							if (emailValidar.charAt(i) != "@") {
								emailInvalido = true;
							}

							if (emailValidar.charAt(i) == "@" && emailValidar.charAt(i) != " ") {
								emailInvalido = false;

								i = emailValidar.length + 1;

								for (i = 0; i < emailValidar.length; i++) {
									if (emailValidar.charAt(i) == " ") {
										emailInvalido = true;
									}
								}

							}
						}

						if (emailInvalido == true) {
							$(this).css("border-color", "#FF0000");
							$(this).tooltip("enable");
							return false;
						} else {
							$(this).css("border-color", "#FFFFFF");
							$(this).tooltip("disable");
							return true;
						}
					});
					
					$('#btnLimparFormulario').click(function() {
						var nomeCompletoPessoa = $('#cNome').val('');
						var dataNascimentoPessoa = $('#cData').val('');
						var estadoCivilPessoa = $('#selectEcivil').val('');
						var corPessoa = $('#selectRaca').val('');
						var telefonePessoa = $('#cTel').val('');
						var celularPessoa = $('#cCel').val('');
						var telefoneComercialPessoa = $('#cCom').val('');
						var enderecoPessoa = $('#cEnd').val('');
						var numeroPessoa = $('#cNum').val('');
						var complementoPessoa = $('#cCompl').val('');
						var bairroPessoa = $('#cBairro').val('');
						var cidadePessoa = $('#cCity').val('');
						var estadoPessoa = $('#cUf').val('');
						var responsavelPessoa = $('#cResp').val('');
						var crnPessoa = $('#cCrn').val('');
						var usuarioPessoa = $('#cEmail').val('');
						var senhaPessoa = $('#cSenha').val('');
						
						/*
						 *  Mostra a mensagem de formurario apagado
						 */
						
						alert("Formulario Apagado");
					});
					
					apelido.blur(function() {
						var usuarioLogin = $(this).val();

						var object = {usuario : usuarioLogin};

						$.ajax({
							url: "/ProjetoTcc/validarLoginExiste",
							type: 'POST',
							data: JSON.stringify(object),
							contentType: "application/json",
							dataType: 'json',
							success: function(data, status) {
								if(data.mensagem != null) {
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
								return true;
							}
						});
					});
					
					function arrumarData(dataField) {
						var data = $(dataField).val();

						for (i = 0; i < data.length; i++) {
							if (data.charAt(i) == "-") {
								data = data.replace(/\W/g, "");

								var ano = data.substr(0, 4);
								var mes = data.substr(4, 2);
								var dia = data.substr(6, 2);

								data = dia + "/" + mes + "/" + ano;
								
								return data.trim();
							}
						}
						return data.trim();
					};
					
					$('#btnSalvarUsuario').click(function() {
						var nomeCompletoPessoa = $('#cNome').val().trim();
						var sexoPessoa = $("input:radio[id='radioSexo']:checked").val();
						var dataNascimentoPessoa = arrumarData($('input[id="cData"]'));
						var estadoCivilPessoa = $('#selectEcivil').val().trim();
						var corPessoa = $('#selectRaca').val().trim();
						var telefonePessoa = $('#cTel').val().trim();
						var celularPessoa = $('#cCel').val().trim();
						var telefoneComercialPessoa = $('#cCom').val().trim();
						var cepPessoa = null;
						var enderecoPessoa = $('#cEnd').val().trim();
						var numeroPessoa = $('#cNum').val().trim();
						var complementoPessoa = $('#cCompl').val().trim();
						var bairroPessoa = $('#cBairro').val().trim();
						var cidadePessoa = $('#cCity').val().trim();
						var estadoPessoa = $('#cUf').val().trim();
						var responsavelPessoa = $('#cResp').val().trim();
						var crnPessoa = $('#cCrn').val().trim();
						var usuarioPessoa = $('#cEmail').val().trim();
						var senhaPessoa = $('#cSenha').val();
						var display = false;
						
						if(nomeCompletoPessoa == null || nomeCompletoPessoa == "") {
							/*
							 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite o nome
							 */
							$('#cNome').css("border-color", "#DC143C");
							/*
							 *  decide oque vamos mostrar antes desse comentario
							 */
							display = true;
						} 
						
						if(usuarioPessoa == null || usuarioPessoa == "") {
							/*
							 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite o email
							 */
							$('#cEmail').css("border-color", "#DC143C");
							/*
							 *  decide oque vamos mostrar antes desse comentario
							 */
							display = true;
						}
						
						if(senhaPessoa == null || senhaPessoa == "") {
							/*
							 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite a senha
							 */
							$('#cSenha').css("border-color", "#DC143C");
							/*
							 *  decide oque vamos mostrar antes desse comentario
							 */
							display = true;
						} 
						
						if(display) {
							return false;
						} else {
							if(idCasdastroPessoa == null || idCasdastroPessoa == "") {

								var object = {nomeCompleto : nomeCompletoPessoa, sexo : sexoPessoa, dataNascimento : dataNascimentoPessoa, estadoCivil : estadoCivilPessoa, 
											responsavel : responsavelPessoa, crn : crnPessoa, cor : corPessoa, 
										contato : {telefone : telefonePessoa, celular : celularPessoa, telefoneComercial : telefoneComercialPessoa}, 
										endereco : {endereco : enderecoPessoa, numero : numeroPessoa, complemento : complementoPessoa, bairro : bairroPessoa,
											cidade : cidadePessoa, estado : estadoPessoa},  
										login : {usuario : usuarioPessoa, senha : senhaPessoa}
								};

								$.ajax({
									url: "/ProjetoTcc/salvarUsuario/" + tipoPessoa,
									type: 'POST',
									data: JSON.stringify(object),
									contentType: "application/json",
									dataType: 'json',
									success: function(data, status) {
										if (data.codigo != 2) {
											alert(data.mensagem);
											return false;
										} else {
											alert(data.mensagem);
											window.location.href = '/ProjetoTcc/telaLogin';
											return true;
										}
									}
								});
							} else {
								
								var object = {id : idCasdastroPessoa, nomeCompleto : nomeCompletoPessoa, sexo : sexoPessoa, dataNascimento : dataNascimentoPessoa, estadoCivil : estadoCivilPessoa, 
										responsavel : responsavelPessoa, crn : crnPessoa, cor : corPessoa, 
									contato : {telefone : telefonePessoa, celular : celularPessoa, telefoneComercial : telefoneComercialPessoa}, 
									endereco : {endereco : enderecoPessoa, numero : numeroPessoa, complemento : complementoPessoa, bairro : bairroPessoa,
										cidade : cidadePessoa, estado : estadoPessoa},  
									login : {usuario : usuarioPessoa, senha : senhaPessoa}
								};
								
								$.ajax({
									url: "/ProjetoTcc/atualizarCadastro",
									type: 'PUT',
									data: JSON.stringify(object),
									contentType: "application/json",
									dataType: 'json',
									success: function(data, status) {
										if (data.codigo == 2) {
											alert(data.mensagem);
											return false;
										} else {
											alert(data.mensagem);
											window.location.href = '/ProjetoTcc/telaPrincipal';
											return true;
										}
									}
								});
							}
						}
					});
					
					function carregarDadosUsuario() {
						if(idCasdastroPessoa == null || idCasdastroPessoa == "") {
							$('#btnAlterarDados').toggle();
							return false;
						} else {
							$('#btnLimparFormulario').toggle();

							$.ajax({
								url: "/ProjetoTcc/pegarCadastroUsuario/" + tipoPessoa + "/" + idCasdastroPessoa,
								type: 'POST',
								data: JSON.stringify(object),
								contentType: "application/json",
								dataType: 'json',
								success: function(data, status) {
									if(data.mensagem != null) {
										alert(data.mensagem);
										return false;
									} else {
										for(var i in data.listaObjetos) {
											var nomeCompletoPessoa = $('#cNome').val(data.listaObjetos[i].nomeCompleto.trim()).prop("disabled", true);
											var sexoPessoa = $("input:radio[id='radioSexo']").prop("disabled", true);
											if(sexoPessoa.is(':checked') === false) {
												sexoPessoa.filter('[value=' + data.listaObjetos[i].sexo.trim() + ']').prop('checked', true);
										    }
											var dataNascimentoPessoa = $('input[id="cData"]').val(mudarFormatoData(data.listaObjetos[i].dataNascimento)).prop("disabled", true);
											var estadoCivilPessoa = $('#selectEcivil').val(data.listaObjetos[i].estadoCivil.trim()).prop("disabled", true);
											var corPessoa = $('#selectRaca').val(data.listaObjetos[i].cor.trim()).prop("disabled", true);
											var responsavelPessoa = $('#cResp').val(data.listaObjetos[i].responsavel.trim()).prop("disabled", true);
											var crnPessoa = $('#cCrn').val(data.listaObjetos[i].crn.trim()).prop("disabled", true);
											
											var telefonePessoa = $('#cTel').val(data.listaObjetos[i].contato.telefone.trim()).prop("disabled", true);
											var celularPessoa = $('#cCel').val(data.listaObjetos[i].contato.celular.trim()).prop("disabled", true);
											var telefoneComercialPessoa = $('#cCom').val(data.listaObjetos[i].contato.telefoneComercial.trim()).prop("disabled", true);
											
											var enderecoPessoa = $('#cEnd').val(data.listaObjetos[i].endereco.endereco.trim()).prop("disabled", true);
											var numeroPessoa = $('#cNum').val(data.listaObjetos[i].endereco.numero).prop("disabled", true);
											var complementoPessoa = $('#cCompl').val(data.listaObjetos[i].endereco.complemento.trim()).prop("disabled", true);
											var bairroPessoa = $('#cBairro').val(data.listaObjetos[i].endereco.bairro.trim()).prop("disabled", true);
											var cidadePessoa = $('#cCity').val(data.listaObjetos[i].endereco.cidade.trim()).prop("disabled", true);
											var estadoPessoa = $('#cUf').val(data.listaObjetos[i].endereco.estado.trim()).prop("disabled", true);
											
											var usuarioPessoa = $('#cEmail').val(data.listaObjetos[i].login.usuario.trim()).prop("disabled", true);
											var senhaPessoa = $('#cSenha').val(data.listaObjetos[i].login.senha.trim()).prop("disabled", true);
										}
										return true;
									}
									return false;
								}
							});
						}
					};
					
					function mudarFormatoData(dataField) {
						var data = dataField;

						for (i = 0; i < data.length; i++) {
							if (data.charAt(i) == "/") {
								data = data.replace(/\W/g, "");

								var dia = data.substr(0, 2);
								var mes = data.substr(2, 2);
								var ano = data.substr(4, 4);

								data = ano + "-" + mes + "-" + dia;

								return data.trim();
							}
						}
						return data.trim();
					};
					
					$('#verificarSenha').click(function() {
						var senhaPessoa = $('#validarSenha').val();
						
						if(senhaPessoa != $('#cSenha').val()) {
							alert("Senha incorreta");
							return false;
						} else {
							var nomeCompletoPessoa = $('#cNome').prop("disabled", false);
							var sexoPessoa = $("input:radio[id='radioSexo']").prop("disabled", false);
							var dataNascimentoPessoa = $('input[id="cData"]').prop("disabled", false);
							var estadoCivilPessoa = $('#selectEcivil').prop("disabled", false);
							var corPessoa = $('#selectRaca').prop("disabled", false);
							var responsavelPessoa = $('#cResp').prop("disabled", false);
							var crnPessoa = $('#cCrn').prop("disabled", false);

							var telefonePessoa = $('#cTel').prop("disabled", false);
							var celularPessoa = $('#cCel').prop("disabled", false);
							var telefoneComercialPessoa = $('#cCom').prop("disabled", false);

							var enderecoPessoa = $('#cEnd').prop("disabled", false);
							var numeroPessoa = $('#cNum').prop("disabled", false);
							var complementoPessoa = $('#cCompl').prop("disabled", false);
							var bairroPessoa = $('#cBairro').prop("disabled", false);
							var cidadePessoa = $('#cCity').prop("disabled", false);
							var estadoPessoa = $('#cUf').prop("disabled", false);

							var usuarioPessoa = $('#cEmail').prop("disabled", false);
							var senhaPessoa = $('#cSenha').prop("disabled", false);
							
							return true;
						}
					});
					
					function deixarDivsInvisiveis() {
						$('#idCadPaciente').toggle();
						$('#idCadNutricionista').toggle();
					}

					$('#btnPaci').click(function() {
						location.href = '/ProjetoTcc/telaCadastrarUsuario/paciente';
						$('#idCadPaciente').show();
						$('#idCadNutricionista').hide();
						$('#idModalTipoCadastro').modal('toggle');
					});
						
					$('#btnNutri').click(function() {
						location.href = '/ProjetoTcc/telaCadastrarUsuario/nutricionista';
						$('#idCadPaciente').hide();
						$('#idCadNutricionista').show();
						$('#idModalTipoCadastro').modal('toggle');
					});
					
					if(tipoPessoa == null) {
						 $('#idModalTipoCadastro').modal('show');
						 
						 function deixarDivsInvisiveis() {
								$('#idCadPaciente').toggle();
								$('#idCadNutricionista').toggle();
							}

							$('#btnPaci').click(function() {
								location.href = '/ProjetoTcc/telaCadastrarUsuario/paciente';
							});
								
							$('#btnNutri').click(function() {
								location.href = '/ProjetoTcc/telaCadastrarUsuario/nutricionista';
							});
							
							deixarDivsInvisiveis();
					} else 
						if(tipoPessoa == 'paciente') {
							$('#idCadPaciente').show();
							$('#idCadNutricionista').hide();
						} else 
							if(tipoPessoa == 'nutricionista') {
								$('#idCadPaciente').hide();
								$('#idCadNutricionista').show();
							}
					
					carregarDadosUsuario();
					validarCamposDigitados(email);
					validarCamposDigitados(apelido);
					validarCamposDigitados(senha);
					colocarMascaraCep($('input[id="cCep"]'));
					validarCPF(cpf);
					onlyNumber(dataNascimento);
					onlyNumber($('input[id="cCep"]'));
					onlyNumber(celular);
					onlyNumber(cpf);
					onlyNumber(telefone);
					onlyNumber(comercial);
					onlyNumber(numero);
					$('[data-toggle="tooltip"]').tooltip();
					cpf.tooltip("disable");
					dataNascimento.tooltip("disable");
					email.tooltip("disable");
				});


	  
	






