$(document)
		.ready(
				function() {
					$.material.init();
					
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
							var tempVal = "";

							if (thisVal == null || thisVal == "") {
								$(this).css("border-color", "#FF0000");
							} else {
								$(this).css("border-color", "#FFFFFF");
							}
						});
					}

					function colocarValidarData(dataField) {

						$(dataField).blur(
								function() {
									var data = $(this).val();
									var tamanhoData = data.length;
									var dataCerta = true;

									data = data.replace(/\W/g, "");

									if (tamanhoData == 10) {
										return true;
									} else if (tamanhoData == 8) {
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
											$(this).css("border-color",
													"#FF0000");
											$(this).tooltip("enable");
											data = data.replace(/(\d{2})(\d)/,
													"$1/$2");
											data = data.replace(/(\d{2})(\d)/,
													"$1/$2");
											$(this).val(data);
											return false;
										} else {
											$(this).css("border-color",
													"#FFFFFF");
											$(this).tooltip("disable");
											data = data.replace(/(\d{2})(\d)/,
													"$1/$2");
											data = data.replace(/(\d{2})(\d)/,
													"$1/$2");
											$(this).val(data);
											return true;
										}

									}
								});
					}

					function colocarMascaraCelular(celularField) {

						$(celularField).blur(function() {
							var celular = $(this).val();

							celular = celular.replace(/\W/g, "");

							celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
							celular = celular.replace(/(\d{0})(\d)/, "$1($2");
							celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
							celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
							$(this).val(celular);
						});
					}

					function colocarMascaraTelefoneComercial(
							telefoneComercialField) {

						$(telefoneComercialField).blur(
								function() {
									var telefoneComercial = $(this).val();

									telefoneComercial = telefoneComercial
											.replace(/\W/g, "");

									telefoneComercial = telefoneComercial
											.replace(/(\d{2})(\d)/, "$1 $2");
									telefoneComercial = telefoneComercial
											.replace(/(\d{0})(\d)/, "$1($2");
									telefoneComercial = telefoneComercial
											.replace(/(\d{2})(\D)/, "$1)$2");
									telefoneComercial = telefoneComercial
											.replace(/(\d{4})(\d)/, "$1-$2");
									
									$(this).val(telefoneComercial);
								});
					}

					function colocarMascaraTelefoneResidencial(
							telefoneResidencialField) {

						$(telefoneResidencialField).blur(
								function() {
									var telefoneResidencial = $(this).val();

									telefoneResidencial = telefoneResidencial
											.replace(/\W/g, "");

									telefoneResidencial = telefoneResidencial
											.replace(/(\d{2})(\d)/, "$1 $2");
									telefoneResidencial = telefoneResidencial
											.replace(/(\d{0})(\d)/, "$1($2");
									telefoneResidencial = telefoneResidencial
											.replace(/(\d{2})(\D)/, "$1)$2");
									telefoneResidencial = telefoneResidencial
											.replace(/(\d{4})(\d)/, "$1-$2");
									
									$(this).val(telefoneResidencial);
								});
					}

					function validarEmail(emailField) {
						$(emailField).blur(function() {
							var email = $(this).val();
							var nome1 = false;
							var i;

							for (i = 0; i < email.length; i++) {
								if (email.charAt(i) != "@") {
									nome1 = true;
								}

								if (email.charAt(i) == "@" && email.charAt(i) != " ") {
									nome1 = false;

									i = email.length + 1;

									for (i = 0; i < email.length; i++) {
										if (email.charAt(i) == " ") {
											nome1 = true;
										}
									}

								}
							}

							if (nome1 == true) {
								$(this).css("border-color", "#FF0000");
								$(this).tooltip("enable");
								return false;
							} else {
								$(this).css("border-color",
								"#FFFFFF");
								$(this).tooltip("disable");
								return true;
							}
						});
					}
					
					validarEmail($('input[id="cEmail"]'));
					colocarMascaraTelefoneResidencial($('input[id="cTel"]'));
					colocarMascaraTelefoneComercial($('input[id="cCom"]'));
					colocarMascaraCelular($('input[id="cCel"]'));
					colocarValidarData($('input[id="cData"]'));
					validarCamposDigitados($('input[id="cEmail"]'));
					validarCamposDigitados($('input[id="cSenha"]'));
					colocarMascaraCep($('input[id="cCep"]'));
					validarRG($('input[id="cRg"]'));
					validarCPF($('input[id="cCpf"]'));
					onlyNumber($('input[id="cData"]'));
					onlyNumber($('input[id="cCep"]'));
					onlyNumber($('input[id="cCel"]'));
					onlyNumber($('input[id="cRg"]'));
					onlyNumber($('input[id="cCpf"]'));
					onlyNumber($('input[id="cTel"]'));
					onlyNumber($('input[id="cCom"]'));
					$('[data-toggle="tooltip"]').tooltip();
					$('input[id="cCpf"]').tooltip("disable");
					$('input[id="cRg"]').tooltip("disable");
					$('input[id="cNasc"]').tooltip("disable");
				});