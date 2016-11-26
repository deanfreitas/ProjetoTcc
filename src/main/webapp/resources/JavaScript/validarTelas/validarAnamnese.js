$(document).ready(function() {
    $.material.init();

    var url = window.location.href;
    var idPaciente = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

    //	Identificacao
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

    // Historico Social e Familiar
    var profissao = $('#tProfi');
    var cargaHoraria = $('#tChor');
    var composicaoFamiliar = $('#tCfam');
    var quemCompraAlimentos = $('#tQcomp');
    var compraFeita = $('#tCompfre');
    var quemPreparaRefeicoes = $('#tPrepara');
    var comQuemRealizaRefeicoes = $('#tQuemr');
    var fazUsoBedidasAlcoolicas = $('#tBeber');
    var fumaJaFumou = $('#tFumar');

    // Dados Clinicos
    var vomito = $('#checkboxVomito');
    var nausea = $('#checkboxNausea');
    var mastigacao = $('#checkboxMastigacao');
    var degluticao = $('#checkboxDegluticao');
    var digestao = $('#checkboxDigestao');
    var pirose = $('#checkboxPirose');
    var refluxo = $('#checkboxRefluxo');
    var diarreia = $('#checkboxDiarreia');
    var obstipacao = $('#checkboxObstipacao');
    var insonia = $('#checkboxInsonia');
    var estresse = $('#checkboxEstresse');
    var cansaco = $('#checkboxCansaco');
    var ansiedade = $('#checkboxAnsiedade');
    var lesoesProblemasPele = $('#PeleCabelo');
    var cirurgia = $('#CirurgiaQuando');
    var habitoIntestinal = $('#HabIntestinal');
    var fezes = $('#ConsFezes');
    var diureseCor = $('#DiureseQuant');
    var patologia = $('#PossuiPatologia');
    var observacoesVomito = $('#observacoesVomito');
    var observacoesNausea = $('#observacoesNausea');
    var observacoesMastigacao = $('#observacoesMastigacao');
    var observacoesDegluticao = $('#observacoesDegluticao');
    var observacoesDigestao = $('#observacoesDigestao');
    var observacoesPirose = $('#observacoesPirose');
    var observacoesRefluxo = $('#observacoesRefluxo');
    var observacoesDiarreia = $('#observacoesDiarreia');
    var observacoesObstipacao = $('#observacoesObstipacao');
    var observacoesInsonia = $('#observacoesInsonia');
    var observacoesEstresse = $('#observacoesEstresse');
    var observacoesCansaco = $('#observacoesCansaco');
    var observacoesAnsiedade = $('#observacoesAnsiedade');
    var observacaoHabitoIntestinal = $('#observacaoHabitoIntestinal');
    var observacaoFezes = $('#observacaoFezes');

    function onlyNumber(fields) {
        $(fields).unbind('keyup').bind('keyup', function(e) {
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

    //	Identificacao
    function validarData(fields) {
        fields.blur(function() {
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
    }

    celular.blur(function() {
        let celular = $(this).val();

        celular = celular.replace(/\W/g, "");

        celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
        celular = celular.replace(/(\d{0})(\d)/, "$1($2");
        celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
        celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
        $(this).val(celular);
    });

    telefoneResidencial.blur(
        function() {
            let telefoneResidencial = $(this).val();

            telefoneResidencial = telefoneResidencial
                .replace(/\W/g, "");

            telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\d)/, "$1 $2");
            telefoneResidencial = telefoneResidencial.replace(/(\d{0})(\d)/, "$1($2");
            telefoneResidencial = telefoneResidencial.replace(/(\d{2})(\D)/, "$1)$2");
            telefoneResidencial = telefoneResidencial.replace(/(\d{4})(\d)/, "$1-$2");

            $(this).val(telefoneResidencial);
        });

    email.blur(function() {
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

    $('#').click(function() {

        let object = {
            id: idPaciente,
            identificacao: {
                dataPrimeiraConsuta: dataPrimeiraConsulta.val(), nome: nome.val(), endereco: endereco.val(), numero: numero.val(),
                bairro: bairro.val(), cidade: cidade.val(), estado: estado.val(), email: email.val(), telefoneResidencial: telefoneResidencial.val(),
                celular: celular.val(), dataNascimento: dataNascimento.val(), idade: idade.val(), sexo: sexo.val(), estadoCivil: estadoCivil.val(),
                corRaca: corRaca.val(), motivoConsulta: motivoConsulta.val(), observacoes: observacoes.val()
            }
        };
        callCadastrarInformacoesPaciente(object);
    });

    $('#').click(function() {

        let object = {
            id: idPaciente,
            historicoSocialFamiliar: {
                profissao: profissao.val(), cargaHoraria: cargaHoraria.val(),
                composicaoFamiliar: composicaoFamiliar.val(), quemCompraAlimentos: quemCompraAlimentos.val(),
                compraFeita: compraFeita.val(), quemPreparaRefeicoes: quemPreparaRefeicoes.val(),
                fazUsoDeBebidasAlcoolicas: fazUsoBedidasAlcoolicas.val(), fuma: fumaJaFumou.val(),
                comQuemRealizaRefeicoes: comQuemRealizaRefeicoes.val()
            }
        };
        callCadastrarInformacoesPaciente(object);
    });

    $('#').click(function() {

        let object = {
            id: idPaciente,
            dadosClinicos: {
                vomito: vomito.is(":checked"), nausea: nausea.is(":checked"), mastigacao: mastigacao.is(":checked"),
                degluticao: degluticao.is(":checked"), digestao: digestao.is(":checked"), pirose: pirose.is(":checked"),
                refluxo: refluxo.is(":checked"), diarreia: diarreia.is(":checked"), obstipacao: obstipacao.is(":checked"),
                insonia: insonia.is(":checked"), estresse: estresse.is(":checked"), cancaso: cansaco.is(":checked"),
                ansiedade: ansiedade.is(":checked"), lesoesProblemasPele: lesoesProblemasPele.val(), cirurgia: cirurgia.val(),
                habitoIntestinal: habitoIntestinal.val(), fezes: fezes.val(), cor: diureseCor.val(), patologia: patologia.val(),
                observacaoHabitoIntestinal: observacaoHabitoIntestinal.val(), observacaoFezes: observacaoFezes.val(), observacaoVomito: observacoesVomito.val(),
                observacaoNausea: observacoesNausea.val(), observacaoMastigacao: observacoesMastigacao.val(), observacaoDegluticao: observacoesDegluticao.val(),
                observacaoDigestao: observacoesDigestao.val(), observacaoPirose: observacoesPirose.val(), observacaoRefluxo: observacoesRefluxo.val(),
                observacaoDiarreia: observacoesDiarreia.val(), observacaoObstipacao: observacoesObstipacao.val(), observacaoInsonia: observacoesInsonia.val(),
                observacaoEstresse: observacoesEstresse.val(), observacaoCancaso: observacoesCansaco.val(), observacaoAnsiedade: observacoesAnsiedade.val()
            }
        };
        callCadastrarInformacoesPaciente(object);
    });

    function callCadastrarInformacoesPaciente(object) {
        $.ajax({
            url: "/ProjetoTcc/cadastrarInformacoesPaciente",
            type: 'PUT',
            data: JSON.stringify(object),
            contentType: "application/json",
            dataType: 'json',
            success: function(data, status) {
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
    }

    function deixarDivsInvisiveis() {
        $('#divIdentificacao').toggle();
        $('#divHistoricoFamiliar').toggle();
        $('#divDadosAntropo').toggle();
        $('#divDadosClinicos').toggle();
        $('#divAtividadeFisica').toggle();
        $('#divHistoricoAlimentar').toggle();
        $('#divExamesBio').toggle();
        $('#divUsoMedicamentos').toggle();
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
            height: "500px",
            width: "100%",
            filtering: true,
            editing: true,
            inserting: true,
            sorting: true,
            paging: true,
            autoload: true,
            pageSize: 15,
            pageButtonCount: 5,
            deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
            controller: true,
            fields: [{
                name: "Data",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PA",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "Peso (kg)",
                type: "number",
                width: 100,
                validate: "required"
            }, {
                name: "Altura (cm)",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "IMC",
                type: "number",
                width: 100,
                validate: "required"
            }, {
                name: "PCT",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCB",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCSE",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCPeitoral",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCAb",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCSI",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCCoxa",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "PCPant",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CBraço",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CAntebraço",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CPunho",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CTórax",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CCintura",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CCoxa",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CPanturrilha",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "Compleição",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "EM",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "%G",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "%MM",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                name: "CCintura",
                type: "text",
                width: 100,
                validate: "required"
            }, {
                type: "control"
            }]
        });

    });

    $(function() {

        jsGrid.locale("pt-br");

        $("#jsGrid2").jsGrid({
            height: "300px",
            width: "100%",
            filtering: true,
            editing: true,
            inserting: true,
            sorting: true,
            paging: true,
            autoload: true,
            pageSize: 15,
            pageButtonCount: 5,
            deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
            controller: db,
            fields: [{
                name: "Data",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "GLI",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "HG",
                type: "number",
                width: 70,
                validate: "required"
            }, {
                name: "TG",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "CT",
                type: "number",
                width: 70,
                validate: "required"
            }, {
                name: "LDL",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "HDL",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Sódio",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Potássio",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Creatinina",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "TGO",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "TGP",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "GGT",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Ferritina",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Vitamina B12",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Ácido Fólico",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Não HDL",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "VLDL",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Ureia",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Fósforo",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Cálcio",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Ácido Úrico",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                type: "control"
            }]
        });

    });

    $(function() {

        jsGrid.locale("pt-br");

        $("#jsGrid3").jsGrid({
            height: "300px",
            width: "100%",
            filtering: true,
            editing: true,
            inserting: true,
            sorting: true,
            paging: true,
            autoload: true,
            pageSize: 15,
            pageButtonCount: 5,
            deleteConfirm: "Você tem certeza que deseja apagar esse dado?",
            controller: db,
            fields: [{
                name: "Nome ",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Dose ",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Horário ",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Motivo ",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                name: "Inter. Droga x Nutr. ",
                type: "text",
                width: 70,
                validate: "required"
            }, {
                type: "control"
            }]
        })

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