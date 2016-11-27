$(document).ready(function () {
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

    // Antecendentes familiares/ Quem
    var dm = $('#checkboxDm');
    var ha = $('#checkboxHa');
    var ca = $('#checkboxCa');
    var dislipidemia = $('#checkboxDislipidemia');
    var obesidade = $('#checkboxObesidade');
    var magreza = $('#checkboxMagreza');
    var outros = $('#checkboxOutros');
    var observacaoDm = $('#observacoesDm');
    var observacaoHa = $('#observacoesHa');
    var observacaoCa = $('#observacoesCa');
    var observacaoDislipidemia = $('#observacoesDislipidemia');
    var observacaoObesidade = $('#observacoesObesidade');
    var observacaoMagreza = $('#observacoesMagreza');
    var observacaoOutros = $('#observacoesOutros');

    // Atividade Fisica
    var tipoAtividadeFisica = $('#TipoAtivFisica');
    var frequencia = $('#FreqAtiv');
    var duracao = $('#DuracaoAtiv');
    var vocePraticaAtividades = $('#vocePreticaAtividades');
    var horarioPreferido = $('#HorarioPref');

    // Historico Alimentar Nutricional 
    var intolerânciaAlimentar = $('#IntAlimentar');
    var preferenciaAlimentar = $('#PrefAlimentar');
    var alteracoesApetite = $('#AltApetite');
    var desdeQuandoAlteracoesApetite = $('#desdeQuando');
    var faseQueIniciouObesidadePerdaPeso = $('#ObesidadePerda');
    var segueAlgumaDietaEspecial = $('#DietaEspecial');
    var quantasRefeicoesDia = $('#QuantRefeicoes');
    var consumoAgua = $('#ConsumoAgua');
    var consumoSal = $('#ConsumoSal');
    var comsumoOleo = $('#ConsumoOleo');
    var fazUsoSupremento = $('#UsoSuplemento');
    var quemInicou = $('#QuemIndicou');

    // Frequencia Alimentar
    var opcaoArroz = $('#idArroz');
    var opcaoMacarrao = $('#idMacarrao');
    var opcaoBatataMandioca = $('#idBatata');
    var opcaoPao = $('#idPao');
    var opcaoPaoQueijo = $('#idPaoQueijo');
    var opcaoFarinhas = $('#idFarinhas');
    var opcaoCerealMatinal = $('#idCereal');
    var opcaoHortalicasCruas = $('#idHortalicasCruas');
    var opcaoHortalicasCozidas = $('#idHortalicasCozidas');
    var opcaoFrutas = $('#idFrutas');
    var opcaoLeiteIntegral = $('#idLeiteInt');
    var opcaoLeiteDesnatado = $('#idLeiteDes');
    var opcaoIogurte = $('#idIogurte');
    var opcaoIogurteDesnatado = $('#idIogurteDes');
    var opcaoQueijos = $('#idQueijos');
    var opcaoCarneVermelha = $('#idCarneVermelha');
    var opcaoEmbutidos = $('#idEmbutidos');
    var opcaoEnlatados = $('#idEnlatados');
    var opcaoOvos = $('#idOvos');
    var opcaoLeguminosas = $('#idLeguminosas');
    var opcaoMargarinaComum = $('#idMargarinaComum');
    var opcaoMargarinaLight = $('#idMargarinaLight');
    var opcaoManteiga = $('#idManteiga');
    var opcaoRequeijaoComum = $('#idRequijaoComum');
    var opcaoRequeijaoLight = $('#idRequeijaoLight');
    var opcaoMaioneseComum = $('#idMaioneseComum');
    var opcaoMaioneseLight = $('#idMaioneseLight');
    var opcaoCremeLeite = $('#idCremeDeLeite');
    var opcaoFrituras = $('#idFrituras');
    var opcaoAcucar = $('#idAcucar');
    var opcaoAdocante = $('#idAdocante');
    var opcaoMel = $('#idMel');
    var opcaoBarraCereal = $('#idBarraDeCereal');
    var opcaoDoces = $('#idDoces');
    var opcaoBolachaRecheada = $('#idBolachaRecheada');
    var opcaoBolachaBoloBiscoito = $('#idBolachaBoloBiscoito');
    var opcaoChicleteBalas = $('#idChicleteBalas');
    var opcaoChocolate = $('#idChocolate');
    var opcaoSanduichePizza = $('#idSanduichePizza');
    var opcaoSalgadinhos = $('#idSalgadinhos');
    var opcaoSalgadinhoPacote = $('#idSalgadinhoPacote');
    var opcaoRefrigeranteComum = $('#idRefrigeranteComum');
    var opcaoRefrigeranteDietLight = $('#idRefriLightDiet');
    var opcaoSucoNatural = $('#idSucoNatural');
    var opcaoSucoArtificial = $('#idSucoArtificial');
    var opcaoCafe = $('#idCafe');
    var opcaoCha = $('#idCha');
    var diagnosticoNutricional = $('#idDiagnostico');
    var condutaDietoterapica = $('#idConduta');
    var relatoOrientacoesNutricionaisEvolucao = $('#idRelatoOrientacoesNutricionaisEvolucao');
    var porcaoArroz = $('#porcaoArroz');
    var porcaoMacarrao = $('#porcaoMacarrao');
    var porcaoBatataMandioca = $('#porcaoBatata');
    var porcaoPao = $('#porcaoPao');
    var porcaoPaoQueijo = $('#porcaoPaoQueijo');
    var porcaoFarinhas = $('#porcaoFarinhas');
    var porcaoCerealMatinal = $('#porcaoCereal');
    var porcaoHortalicasCruas = $('#porcaoHortalicasCruas');
    var porcaoHortalicasCozidas = $('#porcaoHortalicasCozidas');
    var porcaoFrutas = $('#porcaoFrutas');
    var porcaoLeiteIntegral = $('#porcaoLeiteInt');
    var porcaoLeiteDesnatado = $('#porcaoLeiteDes');
    var porcaoIogurte = $('#porcaoIogurte');
    var porcaoIogurteDesnatado = $('#porcaoIogurteDes');
    var porcaoQueijos = $('#porcaoQueijos');
    var porcaoCarneVermelha = $('#porcaoCarneVermelha');
    var porcaoEmbutidos = $('#porcaoEmbutidos');
    var porcaoEnlatados = $('#porcaoEnlatados');
    var porcaoOvos = $('#porcaoOvos');
    var porcaoLeguminosas = $('#porcaoLeguminosas');
    var porcaoMargarinaComum = $('#porcaoMargarinaComum');
    var porcaoMargarinaLight = $('#porcaoMargarinaLight');
    var porcaoManteiga = $('#porcaoManteiga');
    var porcaoRequeijaoComum = $('#porcaoRequijaoComum');
    var porcaoRequeijaoLight = $('#porcaoRequeijaoLight');
    var porcaoMaioneseComum = $('#porcaoMaioneseComum');
    var porcaoMaioneseLight = $('#porcaoMaioneseLight');
    var porcaoCremeLeite = $('#porcaoCremeDeLeite');
    var porcaoFrituras = $('#porcaoFrituras');
    var porcaoAcucar = $('#porcaoAcucar');
    var porcaoAdocante = $('#porcaoAdocante');
    var porcaoMel = $('#porcaoMel');
    var porcaoBarraCereal = $('#porcaoBarraDeCereal');
    var porcaoDoces = $('#porcaoDoces');
    var porcaoBolachaRecheada = $('#porcaoBolachaRecheada');
    var porcaoBolachaBoloBiscoito = $('#porcaoBolachaBoloBiscoito');
    var porcaoChicleteBalas = $('#porcaoChicleteBalas');
    var porcaoChocolate = $('#porcaoChocolate');
    var porcaoSanduichePizza = $('#porcaoSanduichePizza');
    var porcaoSalgadinhos = $('#porcaoSalgadinhos');
    var porcaoSalgadinhoPacote = $('#porcaoSalgadinhoPacote');
    var porcaoRefrigeranteComum = $('#porcaoRefrigeranteComum');
    var porcaoRefrigeranteDietLight = $('#porcaoRefriLightDiet');
    var porcaoSucoNatural = $('#porcaoSucoNatural');
    var porcaoSucoArtificial = $('#porcaoSucoArtificial');
    var porcaoCafe = $('#porcaoCafe');
    var porcaoCha = $('#porcaoCha');

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

    //	Identificacao
    function validarData(fields) {
        fields.blur(function () {
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

    celular.blur(function () {
        let celular = $(this).val();

        celular = celular.replace(/\W/g, "");

        celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
        celular = celular.replace(/(\d{0})(\d)/, "$1($2");
        celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
        celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
        $(this).val(celular);
    });

    telefoneResidencial.blur(
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

    $('#btnSalvar').click(function () {

        let object = {
            id: idPaciente,
            identificacao: {
                dataPrimeiraConsuta: dataPrimeiraConsulta.val(), nome: nome.val(), email: email.val(), dataNascimento: dataNascimento.val(), idade: idade.val(),
                motivoConsulta: motivoConsulta.val(), observacao: observacoes.val(), telefoneResidencial: telefoneResidencial.val(), celular: celular.val(),
                endereco: endereco.val(), bairro: bairro.val(), cidade: cidade.val(), sexo: sexo.val(), estadoCivil: estadoCivil.val(), raca: corRaca.val(),
                numero: numero.val(), estado: estado.val()
            },
            historicoSocialFamiliar: {
                profissao: profissao.val(), cargaHoraria: cargaHoraria.val(),
                composicaoFamiliar: composicaoFamiliar.val(), quemCompraAlimentos: quemCompraAlimentos.val(),
                compraFeita: compraFeita.val(), quemPreparaRefeicoes: quemPreparaRefeicoes.val(),
                fazUsoDeBebidasAlcoolicas: fazUsoBedidasAlcoolicas.val(), fuma: fumaJaFumou.val(),
                comQuemRealizaRefeicoes: comQuemRealizaRefeicoes.val()
            },
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
            },
            antecedentesFamiliares: {
                dm: dm.is(":checked"), ha: ha.is(":checked"), ca: ca.is(":checked"), dislipidemia: dislipidemia.is(":checked"),
                obesidade: obesidade.is(":checked"), magreza: magreza.is(":checked"), outros: outros.is(":checked"), observacaoDm: observacaoDm.val(),
                observacaoHa: observacaoHa.val(), observacaoCa: observacaoCa.val(), observacaoDislipedemia: observacaoDislipidemia.val(),
                observacaoObesidade: observacaoObesidade.val(), observacaoMagreza: observacaoMagreza.val(), observacaoOutros: observacaoOutros.val()
            },
            atividadeFisica: {
                tipo: tipoAtividadeFisica.val(), frequencia: frequencia.val(), duracao: duracao.val(), pratica: vocePraticaAtividades.val(),
                suplemento: false, horaPreferida: horarioPreferido.val(), observacaoSuplemento: null
            },
            historicoAlimentarNutricional: {
                intoleranciaAlimentar: intolerânciaAlimentar.val(), preferenciaAlimentar: preferenciaAlimentar.val(), alteracoesDoApetite: (alteracoesApetite.val() == 'Sim' ? true : false),
                observacaoAlteracoesDoApetite: desdeQuandoAlteracoesApetite.val(), iniciouObesidadePerdaPeso: faseQueIniciouObesidadePerdaPeso.val(),
                segueDietaEspecial: segueAlgumaDietaEspecial.val(), refeicoesDia: quantasRefeicoesDia.val(), consumoAgua: consumoAgua.val(), consumoSal: consumoSal.val(),
                consumoOleo: comsumoOleo.val(), fazUsoSuplemento: fazUsoSupremento.val(), quemInidicou: quemInicou.val()
            },
            frequenciaAlimentar: {
                arroz: opcaoArroz.val(), macarrao: opcaoMacarrao.val(), batataMandioca: opcaoBatataMandioca.val(), pao: opcaoPao.val(),
                paoQueijo: opcaoPaoQueijo.val(), farinhas: opcaoFarinhas.val(), cerealMatinal: opcaoCerealMatinal.val(), hortalicasCruas: opcaoHortalicasCruas.val(),
                hortalicasCozidas: opcaoHortalicasCozidas.val(), frutas: opcaoFrutas.val(), leiteIntegral: opcaoLeiteIntegral.val(), leiteDesnatado: opcaoLeiteDesnatado.val(),
                iorgute: opcaoIogurte.val(), iorguteDesnatado: opcaoIogurteDesnatado.val(), queijos: opcaoQueijos.val(), carneVermelha: opcaoCarneVermelha.val(),
                embutidos: opcaoEmbutidos.val(), enlatados: opcaoEnlatados.val(), ovos: opcaoOvos.val(), leguminosas: opcaoLeguminosas.val(),
                margarinaComum: opcaoMargarinaComum.val(), margarinaLight: opcaoMargarinaLight.val(), manteiga: opcaoManteiga.val(),
                requeijaoComum: opcaoRequeijaoComum.val(), requeijaoLight: opcaoRequeijaoLight.val(), maioneseComum: opcaoMaioneseComum.val(),
                maioneseLight: opcaoMaioneseLight.val(), cremeLeite: opcaoCremeLeite.val(), frituras: opcaoFrituras.val(), acucar: opcaoAcucar.val(),
                adocante: opcaoAdocante.val(), mel: opcaoMel.val(), barraCereal: opcaoBarraCereal.val(), doces: opcaoDoces.val(),
                bolachaRecheada: opcaoBolachaRecheada.val(), boloBiscoito: opcaoBolachaBoloBiscoito.val(), chicleteBalas: opcaoChicleteBalas.val(),
                chocolate: opcaoChocolate.val(), sanduichePizza: opcaoSanduichePizza.val(), salgadinhos: opcaoSalgadinhos.val(),
                salgadinhosPacote: opcaoSalgadinhoPacote.val(), refrigeranteComum: opcaoRefrigeranteComum.val(), refrigeranteDietLight: opcaoRefrigeranteDietLight.val(),
                sucoNatural: opcaoSucoNatural.val(), sucoArtificial: opcaoSucoArtificial.val(), cafe: opcaoCafe.val(), cha: opcaoCha.val(),
                diagnosticoNutricional: diagnosticoNutricional.val(), condutaDietoterapica: condutaDietoterapica.val(), relatosDeCaso: relatoOrientacoesNutricionaisEvolucao.val()
            }
        };
        $.ajax({
            url: "/ProjetoTcc/cadastrarInformacoesPaciente",
            type: 'PUT',
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
                    alert(data.mensagem);
                    window.location.href = '/ProjetoTcc/telaPaciente';
                    return true;
                }

            }
        });
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
        $('#divFrequenciaAlimentar').toggle();
    }

    $('#btnIdentificacao').click(function () {
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

    $('#btnHistoricoFamiliar').click(function () {
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

    $('#btnDadosAntropo').click(function () {
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

    $('#btnDadosClinicos').click(function () {
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

    $('#btnAtividadeFisica').click(function () {
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

    $('#btnHistoricoAlimentar').click(function () {
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

    $('#btnExamesBio').click(function () {
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

    $('#btnUsoMedicamentos').click(function () {
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

    $('#btnFrequenciaAlimentar').click(function () {
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
    $('#HabIntestinal').change(function () {
        if ($('#HabIntestinal').val() == 'Outro') {
            $('#inputOculto').show();
        } else {
            $('#inputOculto').hide();
        }
    });

    $('#inputOculto2').hide();
    $('#ConsFezes').change(function () {
        if ($('#ConsFezes').val() == 'Outro') {
            $('#inputOculto2').show();
        } else {
            $('#inputOculto2').hide();
        }
    });

    $('#inputOculto3').hide();
    $('#AltApetite').change(function () {
        if ($('#AltApetite').val() == 'Sim') {
            $('#inputOculto3').show();
        } else {
            $('#inputOculto3').hide();
        }
    });

    $(function () {

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

    $(function () {

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

    $(function () {

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