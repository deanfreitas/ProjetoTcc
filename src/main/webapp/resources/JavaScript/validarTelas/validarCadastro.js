$(document)
	.ready(
				function () {
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

		if (url.indexOf("nutricionista") > -1) {
			tipoPessoa = "nutricionista";
		} else
			if (url.indexOf("paciente") > -1) {
				tipoPessoa = "paciente";
			}

		function onlyNumber(fields) {
			$(fields).unbind('keyup').bind('keyup', function (e) {
				let thisVal = $(this).val();
				let tempVal = "";

				for (let i = 0; i < thisVal.length; i++) {
					if (RegExp(/^[0-9]$/).test(thisVal.charAt(i))) {
						tempVal += thisVal.charAt(i);
					}
				}
				$(this).val(tempVal);
			});
		}

		function lettersOnly(fields) {
			$(fields).keypress(function (event) {
				var inputValue = event.which;
				if (!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)) {
					event.preventDefault();
				}
			});
		}


		cpf.blur(
			function () {
				let cpf = $(this).val();
				let i;
				let soma;
				let resto;

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

		function validarRG(rgField) {

			$(rgField)
				.blur(
				function () {
					let rg = $(this).val();
					let i;
					let soma;
					let resto;

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

			$(cepField).blur(function () {
				let cep = $(this).val();

				cep = cep.replace(/\W/g, "");

				cep = cep.replace(/(\d{5})(\d)/, "$1-$2");
				$(this).val(cep);
			});
		}

		function validarCamposDigitados(fields) {
			$(fields).unbind('keyup').bind('keyup', function (e) {
				let thisVal = $(this).val();
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
			function () {
				let data = $(this).val();
				let tamanhoData = data.length;
				let dataCerta = true;

				if (data == "") {
					return false;
				} else {
					for (i = 0; i < data.length; i++) {
						if (data.charAt(i) == "-") {
							return false;
						}
					}
				}

				data = data.replace(/\W/g, "");

				let dia = data.substr(0, 2);
				let mes = data.substr(2, 2);
				let ano = data.substr(4, 4);

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

		celular.blur(function () {
			let celular = $(this).val();

			celular = celular.replace(/\W/g, "");

			celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
			celular = celular.replace(/(\d{0})(\d)/, "$1($2");
			celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
			celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
			$(this).val(celular);
		});

		comercial.blur(
			function () {
				let telefoneComercial = $(this).val();

				telefoneComercial = telefoneComercial
					.replace(/\W/g, "");

				telefoneComercial = telefoneComercial.replace(/(\d{2})(\d)/, "$1 $2");
				telefoneComercial = telefoneComercial.replace(/(\d{0})(\d)/, "$1($2");
				telefoneComercial = telefoneComercial.replace(/(\d{2})(\D)/, "$1)$2");
				telefoneComercial = telefoneComercial.replace(/(\d{4})(\d)/, "$1-$2");

				$(this).val(telefoneComercial);
			});

		telefone.blur(
			function () {
				let telefoneResidencial = $(this).val();

				telefoneResidencial = telefoneResidencial
					.replace(/\W/g, "");

				telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\d)/, "$1 $2");
				telefoneResidencial = telefoneResidencial.replace(/(\d{0})(\d)/, "$1($2");
				telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\D)/, "$1)$2");
				telefoneResidencial = telefoneResidencial.replace(/(\d{4})(\d)/, "$1-$2");

				$(this).val(telefoneResidencial);
			});

		email.blur(function () {
			let emailValidar = $(this).val();
			let emailInvalido = false;
			let i;

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

		$('#btnLimparFormulario').click(function () {
			nome.val('');
			sexo.val('');
			crn.val('');
			email.val('');
			apelido.val('');
			senha.val('');

			if (tipoPessoa == 'paciente') {
				responsavel.val('');

			} else
				if (tipoPessoa == 'nutricionista') {
					cpf.val('');
					dataNascimento.val('');
					endereco.val('');
					numero.val('');
					complemento.val('');
					telefone.val('');
					celular.val('');
					comercial.val('');
				}
			/*
			 *  Mostra a mensagem de formurario apagado
			 */

			alert("Formulario Apagado");
		});

		apelido.blur(function () {
			let object = { usuario: apelido.val() };

			$.ajax({
				url: "/ProjetoTcc/validarLoginExiste",
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
					}
					return true;
				}
			});
		});

		$('#btnSalvarUsuario').click(function () {
			let display = false;

			if (nome.val() == null || nome.val() == "") {
				/*
				 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite o nome
				 */
				nome.css("border-color", "#DC143C");
				/*
				 *  decide oque vamos mostrar antes desse comentario
				 */
				display = true;
			} else
				if (apelido.val() == null || apelido.val() == "") {
					/*
					 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite o apelido
					 */
					apelido.css("border-color", "#DC143C");
					/*
					 *  decide oque vamos mostrar antes desse comentario
					 */
					display = true;
				} else
					if (email.val() == null || email.val() == "") {
						/*
						 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite o email
						 */
						email.css("border-color", "#DC143C");
						/*
						 *  decide oque vamos mostrar antes desse comentario
						 */
						display = true;
					} else
						if (senha.val() == null || senha.val() == "") {
							/*
							 *  Precisamos decidir oque vamos mostrar caso o o usuario não digite a senha
							 */
							senha.css("border-color", "#DC143C");
							/*
							 *  decide oque vamos mostrar antes desse comentario
							 */
							display = true;
						}

			if (display) {
				return false;
			} else {
				let object;

				if (idCasdastroPessoa == null || idCasdastroPessoa == "") {
					if (tipoPessoa == 'nutricionista') {
						object = {
							nomeCompleto: nome.val(), sexo: $("input:radio[id='radioSexo']:checked").val(), dataNascimento: dataNascimento.val(), crn: crn.val(),
							email: email.val(), cpf: cpf.val(), endereco: endereco.val(), numero: numero.val(), complemento: complemento.val(),
							telefone: telefone.val(), celular: celular.val(), comercial: comercial.val(),
							login: { usuario: apelido.val(), senha: senha.val() }
						};
					} else
						if (tipoPessoa == 'paciente') {
							object = {
								responsavel: responsavel.val(),
								identificacao: { nome: nome.val(), email: email.val(), sexo: $("input:radio[id='radioSexo']:checked").val() },
								nutricionista: { crn: crn.val() },
								login: { usuario: apelido.val(), senha: senha.val() }
							};
						}

					$.ajax({
						url: "/ProjetoTcc/salvarUsuario/" + tipoPessoa,
						type: 'POST',
						data: JSON.stringify(object),
						contentType: "application/json",
						dataType: 'json',
						success: function (data, status) {
							if (data.codigo != 0) {
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
					let object;

					if (tipoPessoa == 'nutricionista') {
						object = {
							nomeCompleto: nome.val(), sexo: $("input:radio[id='radioSexo']:checked").val(), dataNascimento: dataNascimento.val(), crn: crn.val(),
							email: email.val(), cpf: cpf.val(), endereco: endereco.val(), numero: numero.val(),
							complemento: complemento.val(), telefone: telefone.val(), celular: celular.val(), comercial: comercial.val(),
							login: { usuario: apelido.val(), senha: senha.val() }
						};
					} else
						if (tipoPessoa == 'paciente') {
							object = {
								nomeCompleto: nome.val(), email: email.val(), responsavel: responsavel.val(),
								login: { usuario: apelido.val(), senha: senha.val() }
							};
						}

					$.ajax({
						url: "/ProjetoTcc/atualizarCadastro/" + tipoPessoa,
						type: 'PUT',
						data: JSON.stringify(object),
						contentType: "application/json",
						dataType: 'json',
						success: function (data, status) {
							if (data.codigo == 1) {
								alert(data.mensagem);
								return false;
							} else
								if (data.codigo == 2) {
									alert(data.mensagem);
									location.href = '/ProjetoTcc/sairSistema';
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
			if (idCasdastroPessoa == null || idCasdastroPessoa == "") {
				$('#btnAlterarDados').toggle();
				return false;
			} else {
				$('#btnLimparFormulario').toggle();

				$.ajax({
					url: "/ProjetoTcc/pegarCadastroUsuario/" + tipoPessoa + "/" + idCasdastroPessoa,
					type: 'GET',
					contentType: "application/json",
					dataType: 'json',
					success: function (data, status) {
						if (data.codigo != 0) {
							alert(data.mensagem);
							return false;
						} else {
							nome.val(data.objeto.nomeCompleto.trim()).prop("disabled", true);
							let sexoPessoa = $("input:radio[id='radioSexo']").prop("disabled", true);
							if (data.objeto.sexo != null) {
								if (sexoPessoa.is(':checked') === false) {
									sexoPessoa.filter('[value=' + data.objeto.sexo.trim() + ']').prop('checked', true);
								}
							}
							email.val(data.objeto.email.trim()).prop("disabled", true);
							apelido.val(data.objeto.login.usuario.trim()).prop("disabled", true);
							senha.val(data.objeto.login.senha.trim()).prop("disabled", true);

							if (data.mensagem == 'paciente') {
								responsavel.val(data.objeto.crn.trim()).prop("disabled", true);
								crn.toggle();
							} else
								if (data.mensagem == 'nutricionista') {
									cpf.val(data.objeto.cpf.trim()).prop("disabled", true);
									dataNascimento.val(data.objeto.dataNascimento.trim()).prop("disabled", true);
									endereco.val(data.objeto.endereco.trim()).prop("disabled", true);
									numero.val(data.objeto.numero.trim()).prop("disabled", true);
									complemento.val(data.objeto.complemento).prop("disabled", true);
									telefone.val(data.objeto.telefone.trim()).prop("disabled", true);
									celular.val(data.objeto.celular.trim()).prop("disabled", true);
									comercial.val(data.objeto.comercial.trim()).prop("disabled", true);
									crn.val(data.objeto.crn).prop("disabled", true);
								}
							return true;
						}
					}
				});
			}
		};

		$('#verificarSenha').click(function () {
			let senhaPessoa = $('#validarSenha').val();

			if (senhaPessoa != senha.val()) {
				alert("Senha incorreta");
				$('#validarSenha').val('');
				return false;
			} else {

				nome.prop("disabled", false);
				sexo.prop("disabled", false);
				email.prop("disabled", false);
				apelido.prop("disabled", false);
				senha.prop("disabled", false);

				if (tipoPessoa == 'paciente') {
					responsavel.prop("disabled", false);

				} else
					if (tipoPessoa == 'nutricionista') {
						let sexoPessoa = $("input:radio[id='radioSexo']").prop("disabled", false)
						cpf.prop("disabled", false);
						dataNascimento.prop("disabled", false);
						endereco.prop("disabled", false);
						numero.prop("disabled", false);
						complemento.prop("disabled", false);
						telefone.prop("disabled", false);
						celular.prop("disabled", false);
						comercial.prop("disabled", false);
						crn.prop("disabled", false);
					}

				return true;
			}
		});

		$('#cancelarVerificarSenha').click(function () {
			let senhaPessoa = $('#validarSenha').val('');
		});

		function deixarDivsInvisiveis() {
			$('#idCadPaciente').toggle();
			$('#idCadNutricionista').toggle();
		}

		$('#btnPaci').click(function () {
			location.href = '/ProjetoTcc/telaCadastrarUsuario/paciente';
			$('#idCadPaciente').show();
			$('#idCadNutricionista').hide();
			$('#idModalTipoCadastro').modal('toggle');
		});

		$('#btnNutri').click(function () {
			location.href = '/ProjetoTcc/telaCadastrarUsuario/nutricionista';
			$('#idCadPaciente').hide();
			$('#idCadNutricionista').show();
			$('#idModalTipoCadastro').modal('toggle');
		});

		if (tipoPessoa == null) {
			$('#idModalTipoCadastro').modal('show');

			function deixarDivsInvisiveis() {
				$('#idCadPaciente').toggle();
				$('#idCadNutricionista').toggle();
			}

			$('#btnPaci').click(function () {
				location.href = '/ProjetoTcc/telaCadastrarUsuario/paciente';
			});

			$('#btnNutri').click(function () {
				location.href = '/ProjetoTcc/telaCadastrarUsuario/nutricionista';
			});

			deixarDivsInvisiveis();
		} else
			if (tipoPessoa == 'paciente') {
				$('#idCadPaciente').show();
				$('#idCadNutricionista').hide();
			} else
				if (tipoPessoa == 'nutricionista') {
					$('#idCadPaciente').hide();
					$('#idCadNutricionista').show();
				}

		carregarDadosUsuario();
		validarCamposDigitados(email);
		validarCamposDigitados(apelido);
		validarCamposDigitados(senha);
		colocarMascaraCep($('input[id="cCep"]'));
		// chamar função que aceita apenas numeros (variavel do campo)
		onlyNumber(dataNascimento);
		onlyNumber($('input[id="cCep"]'));
		onlyNumber(celular);
		onlyNumber(cpf);
		onlyNumber(telefone);
		onlyNumber(comercial);
		onlyNumber(numero);
		// chamar função que aceita apenas letras e o espaço (variavel do campo)
		lettersOnly(nome);
		$('[data-toggle="tooltip"]').tooltip();
		cpf.tooltip("disable");
		dataNascimento.tooltip("disable");
		email.tooltip("disable");
				});