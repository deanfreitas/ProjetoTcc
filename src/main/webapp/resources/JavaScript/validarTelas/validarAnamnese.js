$(document).ready(function() {
	$.material.init();

	var dataPrimeiraConsulta = $('#tData');
	var nome = $('#tNome');
	var endereco = $('#tEnd');
	var numero = $('#tNum');
	var bairro = $('#tBairro');
	var cidade = $('#tCity');
	var estado = $('#tUf');
	var email = $('#tEmail');
	var telefoneResidencial = $('#tTel');
	var celular = $('#tCel');
	var dataNascimento = $('#tNasc');
	var idade = $('#tIdade');
	var sexo = $('#tSexo');
	var estadoCivil = $('#idEstadoCivil');
	var corRaca = $('#idRaca');
	var motivoConsulta = $('#tMotivo');
	var observacoes = $('#tObs');

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

	function validarData(fields) {
		fields.blur(function() {
			var data = $(this).val();
			var tamanhoData = data.length;
			var dataCerta = true;

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
	}

	celular.blur(function() {
		var celular = $(this).val();

		celular = celular.replace(/\W/g, "");

		celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
		celular = celular.replace(/(\d{0})(\d)/, "$1($2");
		celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
		celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
		$(this).val(celular);
	});
	
	telefoneResidencial.blur(
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

	function deixarDivsInvisiveis() {
		$('#divIdentificacao').toggle();
		$('#divHistoricoFamiliar').toggle();
		$('#divDadosAntropo').toggle();
		$('#divDadosClinicos').toggle();
		$('#divAtividadeFisica').toggle();
		$('#divHistoricoAlimentar').toggle();
		$('#divExamesBio').toggle();
		$('#divUsoMedicamentos').toggle();
		$('#divRecordata').toggle();
		$('#divFrequenciaAlimentar').toggle();
	}

	$('#btnIdentificacao').click(function() {
		$('#divIdentificacao').show();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnHistoricoFamiliar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').show();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnDadosAntropo').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').show();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnDadosClinicos').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').show();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnAtividadeFisica').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').show();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnHistoricoAlimentar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').show();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnExamesBio').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').show();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnUsoMedicamentos').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').show();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnRecordata').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').show();
		$('#divFrequenciaAlimentar').hide();
	});

	$('#btnFrequenciaAlimentar').click(function() {
		$('#divIdentificacao').hide();
		$('#divHistoricoFamiliar').hide();
		$('#divDadosAntropo').hide();
		$('#divDadosClinicos').hide();
		$('#divAtividadeFisica').hide();
		$('#divHistoricoAlimentar').hide();
		$('#divExamesBio').hide();
		$('#divUsoMedicamentos').hide();
		$('#divRecordata').hide();
		$('#divFrequenciaAlimentar').show();
	});

	$('#inputOculto').hide();
	$('#HabIntestinal').change(function() {
		if ($('#HabIntestinal').val() == 'Outro') {
			$('#inputOculto').show();
		} else {
			$('#inputOculto').hide();
		}
	});

	$('#inputOculto2').hide();
	$('#ConsFezes').change(function() {
		if ($('#ConsFezes').val() == 'Outro') {
			$('#inputOculto2').show();
		} else {
			$('#inputOculto2').hide();
		}
	});

	$('#inputOculto3').hide();
	$('#AltApetite').change(function() {
		if ($('#AltApetite').val() == 'Sim') {
			$('#inputOculto3').show();
		} else {
			$('#inputOculto3').hide();
		}
	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid").jsGrid({
			height : "500px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : true,
			fields : [ {
				name : "Data",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PA",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "Peso (kg)",
				type : "number",
				width : 100,
				validate : "required"
			}, {
				name : "Altura (cm)",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "IMC",
				type : "number",
				width : 100,
				validate : "required"
			}, {
				name : "PCT",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCB",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCSE",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCPeitoral",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCAb",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCSI",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCCoxa",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "PCPant",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CBraço",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CAntebraço",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CPunho",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CTórax",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CCintura",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CCoxa",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CPanturrilha",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "Compleição",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "EM",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "%G",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "%MM",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				name : "CCintura",
				type : "text",
				width : 100,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid2").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Data",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "GLI",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "HG",
				type : "number",
				width : 70,
				validate : "required"
			}, {
				name : "TG",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "CT",
				type : "number",
				width : 70,
				validate : "required"
			}, {
				name : "LDL",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "HDL",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Sódio",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Potássio",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Creatinina",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "TGO",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "TGP",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "GGT",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Ferritina",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Vitamina B12",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Ácido Fólico",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Não HDL",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "VLDL",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Ureia",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Fósforo",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Cálcio",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Ácido Úrico",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid3").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Nome ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Dose ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Horário ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Motivo ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Inter. Droga x Nutr. ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid4").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid5").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid6").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid7").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid8").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid9").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	$(function() {

		jsGrid.locale("pt-br");

		$("#jsGrid10").jsGrid({
			height : "300px",
			width : "100%",
			filtering : true,
			editing : true,
			inserting : true,
			sorting : true,
			paging : true,
			autoload : true,
			pageSize : 15,
			pageButtonCount : 5,
			deleteConfirm : "Você tem certeza que deseja apagar esse dado?",
			controller : db,
			fields : [ {
				name : "Alimento ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				name : "Quantidade ",
				type : "text",
				width : 70,
				validate : "required"
			}, {
				type : "control"
			} ]
		});

	});

	validarData(dataPrimeiraConsulta);
	validarData(dataNascimento);
	onlyNumber(dataNascimento);
	onlyNumber(dataPrimeiraConsulta);
	onlyNumber(celular);
	onlyNumber(idade);
	onlyNumber(telefoneResidencial);
	onlyNumber(numero);
	deixarDivsInvisiveis();
	$('[data-toggle="tooltip"]').tooltip();
	dataPrimeiraConsulta.tooltip("disable");
	dataNascimento.tooltip("disable");
	email.tooltip("disable");
});