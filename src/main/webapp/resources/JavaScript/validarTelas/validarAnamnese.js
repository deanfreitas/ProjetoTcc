$(document).ready(function () {
    $.material.init();

    const url = window.location.href;
    const idPaciente = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

    //	Identificacao
    const dataPrimeiraConsulta = $('#tData');
    const nome = $('#tNome');
    const endereco = $('#tEnd');
    const numero = $('#tNum');
    const bairro = $('#tBairro');
    const cidade = $('#tCity');
    const estado = $('#tUf');
    const email = $('#tEmail');
    const telefoneResidencial = $('#tTel');
    const celular = $('#tCel');
    const dataNascimento = $('#tNasc');
    const idade = $('#tIdade');
    const sexo = $('#tSexo');
    const estadoCivil = $('#idEstadoCivil');
    const corRaca = $('#idRaca');
    const motivoConsulta = $('#tMotivo');
    const observacoes = $('#tObs');

    // Historico Social e Familiar
    const profissao = $('#tProfi');
    const cargaHoraria = $('#tChor');
    const composicaoFamiliar = $('#tCfam');
    const quemCompraAlimentos = $('#tQcomp');
    const compraFeita = $('#tCompfre');
    const quemPreparaRefeicoes = $('#tPrepara');
    const comQuemRealizaRefeicoes = $('#tQuemr');
    const fazUsoBedidasAlcoolicas = $('#tBeber');
    const fumaJaFumou = $('#tFumar');

    // Dados Clinicos
    const vomito = $('#checkboxVomito');
    const nausea = $('#checkboxNausea');
    const mastigacao = $('#checkboxMastigacao');
    const degluticao = $('#checkboxDegluticao');
    const digestao = $('#checkboxDigestao');
    const pirose = $('#checkboxPirose');
    const refluxo = $('#checkboxRefluxo');
    const diarreia = $('#checkboxDiarreia');
    const obstipacao = $('#checkboxObstipacao');
    const insonia = $('#checkboxInsonia');
    const estresse = $('#checkboxEstresse');
    const cansaco = $('#checkboxCansaco');
    const ansiedade = $('#checkboxAnsiedade');
    const lesoesProblemasPele = $('#PeleCabelo');
    const cirurgia = $('#CirurgiaQuando');
    const habitoIntestinal = $('#HabIntestinal');
    const fezes = $('#ConsFezes');
    const diureseCor = $('#DiureseQuant');
    const patologia = $('#PossuiPatologia');
    const observacoesVomito = $('#observacoesVomito');
    const observacoesNausea = $('#observacoesNausea');
    const observacoesMastigacao = $('#observacoesMastigacao');
    const observacoesDegluticao = $('#observacoesDegluticao');
    const observacoesDigestao = $('#observacoesDigestao');
    const observacoesPirose = $('#observacoesPirose');
    const observacoesRefluxo = $('#observacoesRefluxo');
    const observacoesDiarreia = $('#observacoesDiarreia');
    const observacoesObstipacao = $('#observacoesObstipacao');
    const observacoesInsonia = $('#observacoesInsonia');
    const observacoesEstresse = $('#observacoesEstresse');
    const observacoesCansaco = $('#observacoesCansaco');
    const observacoesAnsiedade = $('#observacoesAnsiedade');
    const observacaoHabitoIntestinal = $('#observacaoHabitoIntestinal');
    const observacaoFezes = $('#observacaoFezes');

    // Antecendentes familiares/ Quem
    const dm = $('#checkboxDm');
    const ha = $('#checkboxHa');
    const ca = $('#checkboxCa');
    const dislipidemia = $('#checkboxDislipidemia');
    const obesidade = $('#checkboxObesidade');
    const magreza = $('#checkboxMagreza');
    const outros = $('#checkboxOutros');
    const observacaoDm = $('#observacoesDm');
    const observacaoHa = $('#observacoesHa');
    const observacaoCa = $('#observacoesCa');
    const observacaoDislipidemia = $('#observacoesDislipidemia');
    const observacaoObesidade = $('#observacoesObesidade');
    const observacaoMagreza = $('#observacoesMagreza');
    const observacaoOutros = $('#observacoesOutros');

    // Atividade Fisica
    const tipoAtividadeFisica = $('#TipoAtivFisica');
    const frequencia = $('#FreqAtiv');
    const duracao = $('#DuracaoAtiv');
    const vocePraticaAtividades = $('#vocePreticaAtividades');
    const horarioPreferido = $('#HorarioPref');

    // Historico Alimentar Nutricional 
    const intoleranciaAlimentar = $('#IntAlimentar');
    const preferenciaAlimentar = $('#PrefAlimentar');
    const alteracoesApetite = $('#AltApetite');
    const desdeQuandoAlteracoesApetite = $('#desdeQuando');
    const faseQueIniciouObesidadePerdaPeso = $('#ObesidadePerda');
    const segueAlgumaDietaEspecial = $('#DietaEspecial');
    const quantasRefeicoesDia = $('#QuantRefeicoes');
    const consumoAgua = $('#ConsumoAgua');
    const consumoSal = $('#ConsumoSal');
    const comsumoOleo = $('#ConsumoOleo');
    const fazUsoSupremento = $('#UsoSuplemento');
    const quemInicou = $('#QuemIndicou');

    // Frequencia Alimentar
    const opcaoArroz = $('#idArroz');
    const opcaoMacarrao = $('#idMacarrao');
    const opcaoBatataMandioca = $('#idBatata');
    const opcaoPao = $('#idPao');
    const opcaoPaoQueijo = $('#idPaoQueijo');
    const opcaoFarinhas = $('#idFarinhas');
    const opcaoCerealMatinal = $('#idCereal');
    const opcaoHortalicasCruas = $('#idHortalicasCruas');
    const opcaoHortalicasCozidas = $('#idHortalicasCozidas');
    const opcaoFrutas = $('#idFrutas');
    const opcaoLeiteIntegral = $('#idLeiteInt');
    const opcaoLeiteDesnatado = $('#idLeiteDes');
    const opcaoIogurte = $('#idIogurte');
    const opcaoIogurteDesnatado = $('#idIogurteDes');
    const opcaoQueijos = $('#idQueijos');
    const opcaoCarneVermelha = $('#idCarneVermelha');
    const opcaoEmbutidos = $('#idEmbutidos');
    const opcaoEnlatados = $('#idEnlatados');
    const opcaoOvos = $('#idOvos');
    const opcaoLeguminosas = $('#idLeguminosas');
    const opcaoMargarinaComum = $('#idMargarinaComum');
    const opcaoMargarinaLight = $('#idMargarinaLight');
    const opcaoManteiga = $('#idManteiga');
    const opcaoRequeijaoComum = $('#idRequijaoComum');
    const opcaoRequeijaoLight = $('#idRequeijaoLight');
    const opcaoMaioneseComum = $('#idMaioneseComum');
    const opcaoMaioneseLight = $('#idMaioneseLight');
    const opcaoCremeLeite = $('#idCremeDeLeite');
    const opcaoFrituras = $('#idFrituras');
    const opcaoAcucar = $('#idAcucar');
    const opcaoAdocante = $('#idAdocante');
    const opcaoMel = $('#idMel');
    const opcaoBarraCereal = $('#idBarraDeCereal');
    const opcaoDoces = $('#idDoces');
    const opcaoBolachaRecheada = $('#idBolachaRecheada');
    const opcaoBolachaBoloBiscoito = $('#idBolachaBoloBiscoito');
    const opcaoChicleteBalas = $('#idChicleteBalas');
    const opcaoChocolate = $('#idChocolate');
    const opcaoSanduichePizza = $('#idSanduichePizza');
    const opcaoSalgadinhos = $('#idSalgadinhos');
    const opcaoSalgadinhoPacote = $('#idSalgadinhoPacote');
    const opcaoRefrigeranteComum = $('#idRefrigeranteComum');
    const opcaoRefrigeranteDietLight = $('#idRefriLightDiet');
    const opcaoSucoNatural = $('#idSucoNatural');
    const opcaoSucoArtificial = $('#idSucoArtificial');
    const opcaoCafe = $('#idCafe');
    const opcaoCha = $('#idCha');
    const diagnosticoNutricional = $('#idDiagnostico');
    const condutaDietoterapica = $('#idConduta');
    const relatoOrientacoesNutricionaisEvolucao = $('#idRelatoOrientacoesNutricionaisEvolucao');
    const porcaoArroz = $('#porcaoArroz');
    const porcaoMacarrao = $('#porcaoMacarrao');
    const porcaoBatataMandioca = $('#porcaoBatata');
    const porcaoPao = $('#porcaoPao');
    const porcaoPaoQueijo = $('#porcaoPaoQueijo');
    const porcaoFarinhas = $('#porcaoFarinhas');
    const porcaoCerealMatinal = $('#porcaoCereal');
    const porcaoHortalicasCruas = $('#porcaoHortalicasCruas');
    const porcaoHortalicasCozidas = $('#porcaoHortalicasCozidas');
    const porcaoFrutas = $('#porcaoFrutas');
    const porcaoLeiteIntegral = $('#porcaoLeiteInt');
    const porcaoLeiteDesnatado = $('#porcaoLeiteDes');
    const porcaoIogurte = $('#porcaoIogurte');
    const porcaoIogurteDesnatado = $('#porcaoIogurteDes');
    const porcaoQueijos = $('#porcaoQueijos');
    const porcaoCarneVermelha = $('#porcaoCarneVermelha');
    const porcaoEmbutidos = $('#porcaoEmbutidos');
    const porcaoEnlatados = $('#porcaoEnlatados');
    const porcaoOvos = $('#porcaoOvos');
    const porcaoLeguminosas = $('#porcaoLeguminosas');
    const porcaoMargarinaComum = $('#porcaoMargarinaComum');
    const porcaoMargarinaLight = $('#porcaoMargarinaLight');
    const porcaoManteiga = $('#porcaoManteiga');
    const porcaoRequeijaoComum = $('#porcaoRequijaoComum');
    const porcaoRequeijaoLight = $('#porcaoRequeijaoLight');
    const porcaoMaioneseComum = $('#porcaoMaioneseComum');
    const porcaoMaioneseLight = $('#porcaoMaioneseLight');
    const porcaoCremeLeite = $('#porcaoCremeDeLeite');
    const porcaoFrituras = $('#porcaoFrituras');
    const porcaoAcucar = $('#porcaoAcucar');
    const porcaoAdocante = $('#porcaoAdocante');
    const porcaoMel = $('#porcaoMel');
    const porcaoBarraCereal = $('#porcaoBarraDeCereal');
    const porcaoDoces = $('#porcaoDoces');
    const porcaoBolachaRecheada = $('#porcaoBolachaRecheada');
    const porcaoBolachaBoloBiscoito = $('#porcaoBolachaBoloBiscoito');
    const porcaoChicleteBalas = $('#porcaoChicleteBalas');
    const porcaoChocolate = $('#porcaoChocolate');
    const porcaoSanduichePizza = $('#porcaoSanduichePizza');
    const porcaoSalgadinhos = $('#porcaoSalgadinhos');
    const porcaoSalgadinhoPacote = $('#porcaoSalgadinhoPacote');
    const porcaoRefrigeranteComum = $('#porcaoRefrigeranteComum');
    const porcaoRefrigeranteDietLight = $('#porcaoRefriLightDiet');
    const porcaoSucoNatural = $('#porcaoSucoNatural');
    const porcaoSucoArtificial = $('#porcaoSucoArtificial');
    const porcaoCafe = $('#porcaoCafe');
    const porcaoCha = $('#porcaoCha');

    let tipoAcaoTelaAnamnese = null;

    if (url.indexOf("cadastrar") > -1) {
        tipoAcaoTelaAnamnese = "cadastrar";
    } else if (url.indexOf("atualizar") > -1) {
        tipoAcaoTelaAnamnese = "atualizar";
    } else if (url.indexOf("visualizar") > -1) {
        tipoAcaoTelaAnamnese = "visualizar";
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
            const inputValue = event.which;
            if (!(inputValue >= 65 && inputValue <= 120)
                && (inputValue !== 32 && inputValue !== 0 && inputValue !== 122 && inputValue !== 225 && inputValue !== 227 && inputValue !== 245 && inputValue !== 243 && inputValue !== 250 && inputValue !== 237 && inputValue !== 233)
                || inputValue === 95 || inputValue === 91 || inputValue === 93 || inputValue === 92) {
                event.preventDefault();
            }
        });
    }

    //	Identificacao
    function validarData(fields) {
        fields.blur(function () {
            let data = $(this).val();
            let tamanhoData = data.length;
            let dataCerta = true;

            if (data === "") {
                return false;
            } else {
                for (let i = 0; i < tamanhoData; i++) {
                    if (data.charAt(i) === "-") {
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

            else if (mes === '01') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '02') {
                if (dia > 28) {
                    dataCerta = false;
                }
            }

            else if (mes === '03') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '04') {
                if (dia > 30) {
                    dataCerta = false;
                }
            }

            else if (mes === '05') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '06') {
                if (dia > 30) {
                    dataCerta = false;
                }
            }

            else if (mes === '07') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '08') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '09') {
                if (dia > 30) {
                    dataCerta = false;
                }
            }

            else if (mes === '10') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes === '11') {
                if (dia > 30) {
                    dataCerta = false;
                }
            }

            else if (mes === '12') {
                if (dia > 31) {
                    dataCerta = false;
                }
            }

            else if (mes > '12') {
                dataCerta = false
            }

            if (dataCerta === false) {
                $(this).css("color", "#FF0000");
                $(this).tooltip("enable");
                data = data.replace(/(\d{2})(\d)/, "$1/$2");
                data = data.replace(/(\d{2})(\d)/, "$1/$2");
                $(this).val(data);
                return false;
            } else {
                $(this).css("color", "#FFFFFF");
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

        if (emailValidar === '') {
            emailInvalido = true;
        } else {
            for (i = 0; i < emailValidar.length; i++) {
                if (emailValidar.charAt(i) !== "@") {
                    emailInvalido = true;
                }

                if (emailValidar.charAt(i) === "@" && emailValidar.charAt(i) !== " ") {
                    emailInvalido = false;

                    i = emailValidar.length + 1;

                    for (i = 0; i < emailValidar.length; i++) {
                        if (emailValidar.charAt(i) === " ") {
                            emailInvalido = true;
                        }
                    }
                }
            }
        }

        if (emailInvalido === true) {
            $(this).css("color", "#FF0000");
            $(this).tooltip("enable");
            return false;
        } else {
            $(this).css("color", "#FFFFFF");
            $(this).tooltip("disable");
            return true;
        }
    });

    $('#btnSalvar').click(function () {
        if (nome.val() === '') {
            if (idade.val() === '') {
                let object = {
                    id: idPaciente,
                    identificacao: {
                        dataPrimeiraConsuta: dataPrimeiraConsulta.val(),
                        nome: nome.val(),
                        email: email.val(),
                        dataNascimento: dataNascimento.val(),
                        idade: idade.val(),
                        motivoConsulta: motivoConsulta.val(),
                        observacao: observacoes.val(),
                        telefoneResidencial: telefoneResidencial.val(),
                        celular: celular.val(),
                        endereco: endereco.val(),
                        bairro: bairro.val(),
                        cidade: cidade.val(),
                        sexo: sexo.val(),
                        estadoCivil: estadoCivil.val(),
                        raca: corRaca.val(),
                        numero: numero.val(),
                        estado: estado.val()
                    },
                    historicoSocialFamiliar: {
                        profissao: profissao.val(), cargaHoraria: cargaHoraria.val(),
                        composicaoFamiliar: composicaoFamiliar.val(), quemCompraAlimentos: quemCompraAlimentos.val(),
                        compraFeita: compraFeita.val(), quemPreparaRefeicoes: quemPreparaRefeicoes.val(),
                        fazUsoDeBebidasAlcoolicas: fazUsoBedidasAlcoolicas.val(), fuma: fumaJaFumou.val(),
                        comQuemRealizaRefeicoes: comQuemRealizaRefeicoes.val()
                    },
                    dadosClinicos: {
                        vomito: vomito.is(":checked"),
                        nausea: nausea.is(":checked"),
                        mastigacao: mastigacao.is(":checked"),
                        degluticao: degluticao.is(":checked"),
                        digestao: digestao.is(":checked"),
                        pirose: pirose.is(":checked"),
                        refluxo: refluxo.is(":checked"),
                        diarreia: diarreia.is(":checked"),
                        obstipacao: obstipacao.is(":checked"),
                        insonia: insonia.is(":checked"),
                        estresse: estresse.is(":checked"),
                        cancaso: cansaco.is(":checked"),
                        ansiedade: ansiedade.is(":checked"),
                        lesoesProblemasPele: lesoesProblemasPele.val(),
                        cirurgia: cirurgia.val(),
                        habitoIntestinal: habitoIntestinal.val(),
                        fezes: fezes.val(),
                        cor: diureseCor.val(),
                        patologia: patologia.val(),
                        observacaoHabitoIntestinal: observacaoHabitoIntestinal.val(),
                        observacaoFezes: observacaoFezes.val(),
                        observacaoVomito: observacoesVomito.val(),
                        observacaoNausea: observacoesNausea.val(),
                        observacaoMastigacao: observacoesMastigacao.val(),
                        observacaoDegluticao: observacoesDegluticao.val(),
                        observacaoDigestao: observacoesDigestao.val(),
                        observacaoPirose: observacoesPirose.val(),
                        observacaoRefluxo: observacoesRefluxo.val(),
                        observacaoDiarreia: observacoesDiarreia.val(),
                        observacaoObstipacao: observacoesObstipacao.val(),
                        observacaoInsonia: observacoesInsonia.val(),
                        observacaoEstresse: observacoesEstresse.val(),
                        observacaoCancaso: observacoesCansaco.val(),
                        observacaoAnsiedade: observacoesAnsiedade.val()
                    },
                    antecedentesFamiliares: {
                        dm: dm.is(":checked"),
                        ha: ha.is(":checked"),
                        ca: ca.is(":checked"),
                        dislipidemia: dislipidemia.is(":checked"),
                        obesidade: obesidade.is(":checked"),
                        magreza: magreza.is(":checked"),
                        outros: outros.is(":checked"),
                        observacaoDm: observacaoDm.val(),
                        observacaoHa: observacaoHa.val(),
                        observacaoCa: observacaoCa.val(),
                        observacaoDislipedemia: observacaoDislipidemia.val(),
                        observacaoObesidade: observacaoObesidade.val(),
                        observacaoMagreza: observacaoMagreza.val(),
                        observacaoOutros: observacaoOutros.val()
                    },
                    atividadeFisica: {
                        tipo: tipoAtividadeFisica.val(),
                        frequencia: frequencia.val(),
                        duracao: duracao.val(),
                        pratica: vocePraticaAtividades.val(),
                        suplemento: false,
                        horaPreferida: horarioPreferido.val(),
                        observacaoSuplemento: null
                    },
                    historicoAlimentarNutricional: {
                        intoleranciaAlimentar: intoleranciaAlimentar.val(),
                        preferenciaAlimentar: preferenciaAlimentar.val(),
                        alteracoesDoApetite: alteracoesApetite.val(),
                        observacaoAlteracoesDoApetite: desdeQuandoAlteracoesApetite.val(),
                        iniciouObesidadePerdaPeso: faseQueIniciouObesidadePerdaPeso.val(),
                        segueDietaEspecial: segueAlgumaDietaEspecial.val(),
                        refeicoesDia: quantasRefeicoesDia.val(),
                        consumoAgua: consumoAgua.val(),
                        consumoSal: consumoSal.val(),
                        consumoOleo: comsumoOleo.val(),
                        fazUsoSuplemento: fazUsoSupremento.val(),
                        quemInidicou: quemInicou.val()
                    },
                    frequenciaAlimentar: {
                        arroz: opcaoArroz.val(),
                        macarrao: opcaoMacarrao.val(),
                        batataMandioca: opcaoBatataMandioca.val(),
                        pao: opcaoPao.val(),
                        paoQueijo: opcaoPaoQueijo.val(),
                        farinhas: opcaoFarinhas.val(),
                        cerealMatinal: opcaoCerealMatinal.val(),
                        hortalicasCruas: opcaoHortalicasCruas.val(),
                        hortalicasCozidas: opcaoHortalicasCozidas.val(),
                        frutas: opcaoFrutas.val(),
                        leiteIntegral: opcaoLeiteIntegral.val(),
                        leiteDesnatado: opcaoLeiteDesnatado.val(),
                        iorgurte: opcaoIogurte.val(),
                        iorgurteDesnatado: opcaoIogurteDesnatado.val(),
                        queijos: opcaoQueijos.val(),
                        carneVermelha: opcaoCarneVermelha.val(),
                        embutidos: opcaoEmbutidos.val(),
                        enlatados: opcaoEnlatados.val(),
                        ovos: opcaoOvos.val(),
                        leguminosas: opcaoLeguminosas.val(),
                        margarinaComum: opcaoMargarinaComum.val(),
                        margarinaLight: opcaoMargarinaLight.val(),
                        manteiga: opcaoManteiga.val(),
                        requeijaoComum: opcaoRequeijaoComum.val(),
                        requeijaoLight: opcaoRequeijaoLight.val(),
                        maioneseComum: opcaoMaioneseComum.val(),
                        maioneseLight: opcaoMaioneseLight.val(),
                        cremeLeite: opcaoCremeLeite.val(),
                        frituras: opcaoFrituras.val(),
                        acucar: opcaoAcucar.val(),
                        adocante: opcaoAdocante.val(),
                        mel: opcaoMel.val(),
                        barraCereal: opcaoBarraCereal.val(),
                        doces: opcaoDoces.val(),
                        bolachaRecheada: opcaoBolachaRecheada.val(),
                        boloBiscoito: opcaoBolachaBoloBiscoito.val(),
                        chicleteBalas: opcaoChicleteBalas.val(),
                        chocolate: opcaoChocolate.val(),
                        sanduichePizza: opcaoSanduichePizza.val(),
                        salgadinhos: opcaoSalgadinhos.val(),
                        salgadinhosPacote: opcaoSalgadinhoPacote.val(),
                        refrigeranteComum: opcaoRefrigeranteComum.val(),
                        refrigeranteDietLight: opcaoRefrigeranteDietLight.val(),
                        sucoNatural: opcaoSucoNatural.val(),
                        sucoArtificial: opcaoSucoArtificial.val(),
                        cafe: opcaoCafe.val(),
                        cha: opcaoCha.val(),
                        diagnosticoNutricional: diagnosticoNutricional.val(),
                        condutaDietoterapica: condutaDietoterapica.val(),
                        relatosDeCaso: relatoOrientacoesNutricionaisEvolucao.val()
                    }
                };
                $.ajax({
                    url: "/ProjetoTcc/cadastrarInformacoesPaciente",
                    type: 'PUT',
                    data: JSON.stringify(object),
                    contentType: "application/json",
                    dataType: 'json',
                    success: function (data, status) {
                        if (data.codigo !== 0) {
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
            }
        }
    });

    function getDadosPaciente() {
        if (tipoAcaoTelaAnamnese !== "cadastrar") {
            let object;

            $.ajax({
                url: "/ProjetoTcc/pegarDadosPaciente/" + idPaciente,
                type: 'GET',
                data: JSON.stringify(object),
                contentType: "application/json",
                dataType: 'json',
                success: function (data, status) {
                    if (data.codigo !== 0) {
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
                        if (data.objeto.identificacao) {
                            dataPrimeiraConsulta.val(data.objeto.identificacao.dataPrimeiraConsuta);
                            nome.val(data.objeto.identificacao.nome);
                            endereco.val(data.objeto.identificacao.endereco);
                            numero.val(data.objeto.identificacao.numero);
                            bairro.val(data.objeto.identificacao.bairro);
                            cidade.val(data.objeto.identificacao.cidade);
                            estado.val(data.objeto.identificacao.estado);
                            email.val(data.objeto.identificacao.email);
                            telefoneResidencial.val(data.objeto.identificacao.telefoneResidencial);
                            celular.val(data.objeto.identificacao.celular);
                            dataNascimento.val(data.objeto.identificacao.dataNascimento);
                            idade.val(data.objeto.identificacao.idade);
                            sexo.val(data.objeto.identificacao.sexo);
                            estadoCivil.val(data.objeto.identificacao.estadoCivil);
                            corRaca.val(data.objeto.identificacao.raca);
                            motivoConsulta.val(data.objeto.identificacao.motivoConsulta);
                            observacoes.val(data.objeto.identificacao.observacao);
                        }
                        if (data.objeto.historicoSocialFamiliar) {
                            profissao.val(data.objeto.historicoSocialFamiliar.profissao);
                            cargaHoraria.val(data.objeto.historicoSocialFamiliar.cargaHoraria);
                            composicaoFamiliar.val(data.objeto.historicoSocialFamiliar.composicaoFamiliar);
                            quemCompraAlimentos.val(data.objeto.historicoSocialFamiliar.quemCompraAlimentos);
                            compraFeita.val(data.objeto.historicoSocialFamiliar.compraFeita);
                            quemPreparaRefeicoes.val(data.objeto.historicoSocialFamiliar.quemPreparaRefeicoes);
                            comQuemRealizaRefeicoes.val(data.objeto.historicoSocialFamiliar.comQuemRealizaRefeicoes);
                            fazUsoBedidasAlcoolicas.val(data.objeto.historicoSocialFamiliar.fazUsoDeBebidasAlcoolicas);
                            fumaJaFumou.val(data.objeto.historicoSocialFamiliar.fuma);
                        }

                        if (data.objeto.dadosClinicos) {
                            if (data.objeto.dadosClinicos.vomito) {
                                vomito.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.nausea) {
                                nausea.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.mastigacao) {
                                mastigacao.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.degluticao) {
                                degluticao.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.digestao) {
                                digestao.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.pirose) {
                                pirose.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.refluxo) {
                                refluxo.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.diarreia) {
                                diarreia.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.obstipacao) {
                                obstipacao.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.insonia) {
                                insonia.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.estresse) {
                                estresse.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.cancaso) {
                                cansaco.prop("checked", true);
                            }

                            if (data.objeto.dadosClinicos.ansiedade) {
                                ansiedade.prop("checked", true);
                            }

                            lesoesProblemasPele.val(data.objeto.dadosClinicos.lesoesProblemasPele);
                            cirurgia.val(data.objeto.dadosClinicos.cirurgia);
                            habitoIntestinal.val(data.objeto.dadosClinicos.habitoIntestinal);
                            fezes.val(data.objeto.dadosClinicos.fezes);
                            diureseCor.val(data.objeto.dadosClinicos.cor);
                            patologia.val(data.objeto.dadosClinicos.patologia);
                            observacoesVomito.val(data.objeto.dadosClinicos.observacaoVomito);
                            observacoesNausea.val(data.objeto.dadosClinicos.observacaoNausea);
                            observacoesMastigacao.val(data.objeto.dadosClinicos.observacaoMastigacao);
                            observacoesDegluticao.val(data.objeto.dadosClinicos.observacaoDegluticao);
                            observacoesDigestao.val(data.objeto.dadosClinicos.observacaoDigestao);
                            observacoesPirose.val(data.objeto.dadosClinicos.observacaoPirose);
                            observacoesRefluxo.val(data.objeto.dadosClinicos.observacaoRefluxo);
                            observacoesDiarreia.val(data.objeto.dadosClinicos.observacaoDiarreia);
                            observacoesObstipacao.val(data.objeto.dadosClinicos.observacaoObstipacao);
                            observacoesInsonia.val(data.objeto.dadosClinicos.observacaoInsonia);
                            observacoesEstresse.val(data.objeto.dadosClinicos.observacaoEstresse);
                            observacoesCansaco.val(data.objeto.dadosClinicos.observacaoCancaso);
                            observacoesAnsiedade.val(data.objeto.dadosClinicos.observacaoAnsiedade);
                            observacaoHabitoIntestinal.val(data.objeto.dadosClinicos.observacaoHabitoIntestinal);
                            observacaoFezes.val(data.objeto.dadosClinicos.observacaoFezes);
                        }

                        if (data.objeto.antecedentesFamiliares) {
                            if (data.objeto.antecedentesFamiliares.dm) {
                                dm.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.ha) {
                                ha.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.ca) {
                                ca.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.dislipidemia) {
                                dislipidemia.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.obesidade) {
                                obesidade.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.magreza) {
                                magreza.prop("checked", true);
                            }

                            if (data.objeto.antecedentesFamiliares.outros) {
                                outros.prop("checked", true);
                            }

                            observacaoDm.val(data.objeto.antecedentesFamiliares.observacaoDm);
                            observacaoHa.val(data.objeto.antecedentesFamiliares.observacaoHa);
                            observacaoCa.val(data.objeto.antecedentesFamiliares.observacaoCa);
                            observacaoDislipidemia.val(data.objeto.antecedentesFamiliares.observacaoDislipedemia);
                            observacaoObesidade.val(data.objeto.antecedentesFamiliares.observacaoObesidade);
                            observacaoMagreza.val(data.objeto.antecedentesFamiliares.observacaoMagreza);
                            observacaoOutros.val(data.objeto.antecedentesFamiliares.observacaoOutros);
                        }

                        if (data.objeto.atividadeFisica) {
                            tipoAtividadeFisica.val(data.objeto.atividadeFisica.tipo);
                            frequencia.val(data.objeto.atividadeFisica.frequencia);
                            duracao.val(data.objeto.atividadeFisica.duracao);
                            vocePraticaAtividades.val(data.objeto.atividadeFisica.pratica);
                            horarioPreferido.val(data.objeto.atividadeFisica.horaPreferida);
                        }

                        if (data.objeto.historicoAlimentarNutricional) {
                            intoleranciaAlimentar.val(data.objeto.historicoAlimentarNutricional.intoleranciaAlimentar);
                            preferenciaAlimentar.val(data.objeto.historicoAlimentarNutricional.preferenciaAlimentar);
                            alteracoesApetite.val(data.objeto.historicoAlimentarNutricional.alteracoesDoApetite);
                            desdeQuandoAlteracoesApetite.val(data.objeto.historicoAlimentarNutricional.observacaoAlteracoesDoApetite);
                            faseQueIniciouObesidadePerdaPeso.val(data.objeto.historicoAlimentarNutricional.iniciouObesidadePerdaPeso);
                            segueAlgumaDietaEspecial.val(data.objeto.historicoAlimentarNutricional.segueDietaEspecial);
                            quantasRefeicoesDia.val(data.objeto.historicoAlimentarNutricional.refeicoesDia);
                            consumoAgua.val(data.objeto.historicoAlimentarNutricional.consumoAgua);
                            consumoSal.val(data.objeto.historicoAlimentarNutricional.consumoSal);
                            comsumoOleo.val(data.objeto.historicoAlimentarNutricional.consumoOleo);
                            fazUsoSupremento.val(data.objeto.historicoAlimentarNutricional.fazUsoSuplemento);
                            quemInicou.val(data.objeto.historicoAlimentarNutricional.quemInidicou);
                        }

                        if (data.objeto.frequenciaAlimentar) {
                            opcaoArroz.val(data.objeto.frequenciaAlimentar.arroz);
                            opcaoMacarrao.val(data.objeto.frequenciaAlimentar.macarrao);
                            opcaoBatataMandioca.val(data.objeto.frequenciaAlimentar.batataMandioca);
                            opcaoPao.val(data.objeto.frequenciaAlimentar.pao);
                            opcaoPaoQueijo.val(data.objeto.frequenciaAlimentar.paoQueijo);
                            opcaoFarinhas.val(data.objeto.frequenciaAlimentar.farinhas);
                            opcaoCerealMatinal.val(data.objeto.frequenciaAlimentar.cerealMatinal);
                            opcaoHortalicasCruas.val(data.objeto.frequenciaAlimentar.hortalicasCruas);
                            opcaoHortalicasCozidas.val(data.objeto.frequenciaAlimentar.hortalicasCozidas);
                            opcaoFrutas.val(data.objeto.frequenciaAlimentar.frutas);
                            opcaoLeiteIntegral.val(data.objeto.frequenciaAlimentar.leiteIntegral);
                            opcaoLeiteDesnatado.val(data.objeto.frequenciaAlimentar.leiteDesnatado);
                            opcaoIogurte.val(data.objeto.frequenciaAlimentar.iorgurte);
                            opcaoIogurteDesnatado.val(data.objeto.frequenciaAlimentar.iorgurteDesnatado);
                            opcaoQueijos.val(data.objeto.frequenciaAlimentar.queijos);
                            opcaoCarneVermelha.val(data.objeto.frequenciaAlimentar.carneVermelha);
                            opcaoEmbutidos.val(data.objeto.frequenciaAlimentar.embutidos);
                            opcaoEnlatados.val(data.objeto.frequenciaAlimentar.enlatados);
                            opcaoOvos.val(data.objeto.frequenciaAlimentar.ovos);
                            opcaoLeguminosas.val(data.objeto.frequenciaAlimentar.leguminosas);
                            opcaoMargarinaComum.val(data.objeto.frequenciaAlimentar.margarinaComum);
                            opcaoMargarinaLight.val(data.objeto.frequenciaAlimentar.margarinaLight);
                            opcaoManteiga.val(data.objeto.frequenciaAlimentar.manteiga);
                            opcaoRequeijaoComum.val(data.objeto.frequenciaAlimentar.requeijaoComum);
                            opcaoRequeijaoLight.val(data.objeto.frequenciaAlimentar.requeijaoLight);
                            opcaoMaioneseComum.val(data.objeto.frequenciaAlimentar.maioneseComum);
                            opcaoMaioneseLight.val(data.objeto.frequenciaAlimentar.maioneseLight);
                            opcaoCremeLeite.val(data.objeto.frequenciaAlimentar.cremeLeite);
                            opcaoFrituras.val(data.objeto.frequenciaAlimentar.frituras);
                            opcaoAcucar.val(data.objeto.frequenciaAlimentar.acucar);
                            opcaoAdocante.val(data.objeto.frequenciaAlimentar.adocante);
                            opcaoMel.val(data.objeto.frequenciaAlimentar.mel);
                            opcaoBarraCereal.val(data.objeto.frequenciaAlimentar.barraCereal);
                            opcaoDoces.val(data.objeto.frequenciaAlimentar.doces);
                            opcaoBolachaRecheada.val(data.objeto.frequenciaAlimentar.bolachaRecheada);
                            opcaoBolachaBoloBiscoito.val(data.objeto.frequenciaAlimentar.boloBiscoito);
                            opcaoChicleteBalas.val(data.objeto.frequenciaAlimentar.chicleteBalas);
                            opcaoChocolate.val(data.objeto.frequenciaAlimentar.chocolate);
                            opcaoSanduichePizza.val(data.objeto.frequenciaAlimentar.sanduichePizza);
                            opcaoSalgadinhos.val(data.objeto.frequenciaAlimentar.salgadinhos);
                            opcaoSalgadinhoPacote.val(data.objeto.frequenciaAlimentar.salgadinhosPacote);
                            opcaoRefrigeranteComum.val(data.objeto.frequenciaAlimentar.refrigeranteComum);
                            opcaoRefrigeranteDietLight.val(data.objeto.frequenciaAlimentar.refrigeranteDietLight);
                            opcaoSucoNatural.val(data.objeto.frequenciaAlimentar.sucoNatural);
                            opcaoSucoArtificial.val(data.objeto.frequenciaAlimentar.sucoArtificial);
                            opcaoCafe.val(data.objeto.frequenciaAlimentar.cafe);
                            opcaoCha.val(data.objeto.frequenciaAlimentar.cha);
                            diagnosticoNutricional.val(data.objeto.frequenciaAlimentar.diagnosticoNutricional);
                            condutaDietoterapica.val(data.objeto.frequenciaAlimentar.condutaDietoterapica);
                            relatoOrientacoesNutricionaisEvolucao.val(data.objeto.frequenciaAlimentar.relatosDeCaso);
                            porcaoArroz.val(data.objeto.frequenciaAlimentar.observacaoArroz);
                            porcaoMacarrao.val(data.objeto.frequenciaAlimentar.observacaoMacarrao);
                            porcaoBatataMandioca.val(data.objeto.frequenciaAlimentar.observacaoBatataMandioca);
                            porcaoPao.val(data.objeto.frequenciaAlimentar.observacaoPao);
                            porcaoPaoQueijo.val(data.objeto.frequenciaAlimentar.observacaoPaoQueijo);
                            porcaoFarinhas.val(data.objeto.frequenciaAlimentar.observacaoFarinhas);
                            porcaoCerealMatinal.val(data.objeto.frequenciaAlimentar.observacaoCerealMatinal);
                            porcaoHortalicasCruas.val(data.objeto.frequenciaAlimentar.observacaoHortalicasCruas);
                            porcaoHortalicasCozidas.val(data.objeto.frequenciaAlimentar.observacaoHortalicasCozidas);
                            porcaoFrutas.val(data.objeto.frequenciaAlimentar.observacaoFrutas);
                            porcaoLeiteIntegral.val(data.objeto.frequenciaAlimentar.observacaoLeiteIntegral);
                            porcaoLeiteDesnatado.val(data.objeto.frequenciaAlimentar.observacaoLeiteDesnatado);
                            porcaoIogurte.val(data.objeto.frequenciaAlimentar.observacaoIorgute);
                            porcaoIogurteDesnatado.val(data.objeto.frequenciaAlimentar.observacaoLeiteDesnatado);
                            porcaoQueijos.val(data.objeto.frequenciaAlimentar.observacaoQueijos);
                            porcaoCarneVermelha.val(data.objeto.frequenciaAlimentar.observacaoCarneVermelha);
                            porcaoEmbutidos.val(data.objeto.frequenciaAlimentar.observacaoEmbutidos);
                            porcaoEnlatados.val(data.objeto.frequenciaAlimentar.observacaoEnlatados);
                            porcaoOvos.val(data.objeto.frequenciaAlimentar.observacaoOvos);
                            porcaoLeguminosas.val(data.objeto.frequenciaAlimentar.observacaoLeguminosas);
                            porcaoMargarinaComum.val(data.objeto.frequenciaAlimentar.observacaoMargarinaComum);
                            porcaoMargarinaLight.val(data.objeto.frequenciaAlimentar.observacaoMargarinaLight);
                            porcaoManteiga.val(data.objeto.frequenciaAlimentar.observacaoManteiga);
                            porcaoRequeijaoComum.val(data.objeto.frequenciaAlimentar.observacaoRequeijaoComum);
                            porcaoRequeijaoLight.val(data.objeto.frequenciaAlimentar.observacaoRequeijaoLight);
                            porcaoMaioneseComum.val(data.objeto.frequenciaAlimentar.observacaoMaioneseComum);
                            porcaoMaioneseLight.val(data.objeto.frequenciaAlimentar.observacaoMaioneseLight);
                            porcaoCremeLeite.val(data.objeto.frequenciaAlimentar.observacaoCremeLeite);
                            porcaoFrituras.val(data.objeto.frequenciaAlimentar.observacaoFrituras);
                            porcaoAcucar.val(data.objeto.frequenciaAlimentar.observacaoAcucar);
                            porcaoAdocante.val(data.objeto.frequenciaAlimentar.observacaoAdocante);
                            porcaoMel.val(data.objeto.frequenciaAlimentar.observacaoMel);
                            porcaoBarraCereal.val(data.objeto.frequenciaAlimentar.observacaoBarradeCereal);
                            porcaoDoces.val(data.objeto.frequenciaAlimentar.observacaoDoces);
                            porcaoBolachaRecheada.val(data.objeto.frequenciaAlimentar.observacaoBolachaRecheada);
                            porcaoBolachaBoloBiscoito.val(data.objeto.frequenciaAlimentar.observacaoBoloBiscoito);
                            porcaoChicleteBalas.val(data.objeto.frequenciaAlimentar.observacaoChicleteBalas);
                            porcaoChocolate.val(data.objeto.frequenciaAlimentar.observacaoChocolate);
                            porcaoSanduichePizza.val(data.objeto.frequenciaAlimentar.observacaoSanduichepizza);
                            porcaoSalgadinhos.val(data.objeto.frequenciaAlimentar.observacaoSalgadinhos);
                            porcaoSalgadinhoPacote.val(data.objeto.frequenciaAlimentar.observacaoSalgadinhosPacote);
                            porcaoRefrigeranteComum.val(data.objeto.frequenciaAlimentar.observacaoRefrigeranteComum);
                            porcaoRefrigeranteDietLight.val(data.objeto.frequenciaAlimentar.observacaoRefrigeranteDietLight);
                            porcaoSucoNatural.val(data.objeto.frequenciaAlimentar.observacaoSucoNatural);
                            porcaoSucoArtificial.val(data.objeto.frequenciaAlimentar.observacaoSucoArtificial);
                            porcaoCafe.val(data.objeto.frequenciaAlimentar.observacaoCafe);
                            porcaoCha.val(data.objeto.frequenciaAlimentar.observacaoCha);
                        }

                        if (tipoAcaoTelaAnamnese === "visualizar") {
                            dataPrimeiraConsulta.prop("disabled", true);
                            nome.prop("disabled", true);
                            endereco.prop("disabled", true);
                            numero.prop("disabled", true);
                            bairro.prop("disabled", true);
                            cidade.prop("disabled", true);
                            estado.prop("disabled", true);
                            email.prop("disabled", true);
                            telefoneResidencial.prop("disabled", true);
                            celular.prop("disabled", true);
                            dataNascimento.prop("disabled", true);
                            idade.prop("disabled", true);
                            sexo.prop("disabled", true);
                            estadoCivil.prop("disabled", true);
                            corRaca.prop("disabled", true);
                            motivoConsulta.prop("disabled", true);
                            observacoes.prop("disabled", true);

                            profissao.prop("disabled", true);
                            cargaHoraria.prop("disabled", true);
                            composicaoFamiliar.prop("disabled", true);
                            quemCompraAlimentos.prop("disabled", true);
                            compraFeita.prop("disabled", true);
                            quemPreparaRefeicoes.prop("disabled", true);
                            comQuemRealizaRefeicoes.prop("disabled", true);
                            fazUsoBedidasAlcoolicas.prop("disabled", true);
                            fumaJaFumou.prop("disabled", true);

                            vomito.prop("disabled", true);
                            nausea.prop("disabled", true);
                            mastigacao.prop("disabled", true);
                            degluticao.prop("disabled", true);
                            digestao.prop("disabled", true);
                            pirose.prop("disabled", true);
                            refluxo.prop("disabled", true);
                            diarreia.prop("disabled", true);
                            obstipacao.prop("disabled", true);
                            insonia.prop("disabled", true);
                            estresse.prop("disabled", true);
                            cansaco.prop("disabled", true);
                            ansiedade.prop("disabled", true);
                            lesoesProblemasPele.prop("disabled", true);
                            cirurgia.prop("disabled", true);
                            habitoIntestinal.prop("disabled", true);
                            fezes.prop("disabled", true);
                            diureseCor.prop("disabled", true);
                            patologia.prop("disabled", true);
                            observacoesVomito.prop("disabled", true);
                            observacoesNausea.prop("disabled", true);
                            observacoesMastigacao.prop("disabled", true);
                            observacoesDegluticao.prop("disabled", true);
                            observacoesDigestao.prop("disabled", true);
                            observacoesPirose.prop("disabled", true);
                            observacoesRefluxo.prop("disabled", true);
                            observacoesDiarreia.prop("disabled", true);
                            observacoesObstipacao.prop("disabled", true);
                            observacoesInsonia.prop("disabled", true);
                            observacoesEstresse.prop("disabled", true);
                            observacoesCansaco.prop("disabled", true);
                            observacoesAnsiedade.prop("disabled", true);
                            observacaoHabitoIntestinal.prop("disabled", true);
                            observacaoFezes.prop("disabled", true);

                            dm.prop("disabled", true);
                            ha.prop("disabled", true);
                            ca.prop("disabled", true);
                            dislipidemia.prop("disabled", true);
                            obesidade.prop("disabled", true);
                            magreza.prop("disabled", true);
                            outros.prop("disabled", true);
                            observacaoDm.prop("disabled", true);
                            observacaoHa.prop("disabled", true);
                            observacaoCa.prop("disabled", true);
                            observacaoDislipidemia.prop("disabled", true);
                            observacaoObesidade.prop("disabled", true);
                            observacaoMagreza.prop("disabled", true);
                            observacaoOutros.prop("disabled", true);

                            tipoAtividadeFisica.prop("disabled", true);
                            frequencia.prop("disabled", true);
                            duracao.prop("disabled", true);
                            vocePraticaAtividades.prop("disabled", true);
                            horarioPreferido.prop("disabled", true);

                            intoleranciaAlimentar.prop("disabled", true);
                            preferenciaAlimentar.prop("disabled", true);
                            alteracoesApetite.prop("disabled", true);
                            desdeQuandoAlteracoesApetite.prop("disabled", true);
                            faseQueIniciouObesidadePerdaPeso.prop("disabled", true);
                            segueAlgumaDietaEspecial.prop("disabled", true);
                            quantasRefeicoesDia.prop("disabled", true);
                            consumoAgua.prop("disabled", true);
                            consumoSal.prop("disabled", true);
                            comsumoOleo.prop("disabled", true);
                            fazUsoSupremento.prop("disabled", true);
                            quemInicou.prop("disabled", true);

                            opcaoArroz.prop("disabled", true);
                            opcaoMacarrao.prop("disabled", true);
                            opcaoBatataMandioca.prop("disabled", true);
                            opcaoPao.prop("disabled", true);
                            opcaoPaoQueijo.prop("disabled", true);
                            opcaoFarinhas.prop("disabled", true);
                            opcaoCerealMatinal.prop("disabled", true);
                            opcaoHortalicasCruas.prop("disabled", true);
                            opcaoHortalicasCozidas.prop("disabled", true);
                            opcaoFrutas.prop("disabled", true);
                            opcaoLeiteIntegral.prop("disabled", true);
                            opcaoLeiteDesnatado.prop("disabled", true);
                            opcaoIogurte.prop("disabled", true);
                            opcaoIogurteDesnatado.prop("disabled", true);
                            opcaoQueijos.prop("disabled", true);
                            opcaoCarneVermelha.prop("disabled", true);
                            opcaoEmbutidos.prop("disabled", true);
                            opcaoEnlatados.prop("disabled", true);
                            opcaoOvos.prop("disabled", true);
                            opcaoLeguminosas.prop("disabled", true);
                            opcaoMargarinaComum.prop("disabled", true);
                            opcaoMargarinaLight.prop("disabled", true);
                            opcaoManteiga.prop("disabled", true);
                            opcaoRequeijaoComum.prop("disabled", true);
                            opcaoRequeijaoLight.prop("disabled", true);
                            opcaoMaioneseComum.prop("disabled", true);
                            opcaoMaioneseLight.prop("disabled", true);
                            opcaoCremeLeite.prop("disabled", true);
                            opcaoFrituras.prop("disabled", true);
                            opcaoAcucar.prop("disabled", true);
                            opcaoAdocante.prop("disabled", true);
                            opcaoMel.prop("disabled", true);
                            opcaoBarraCereal.prop("disabled", true);
                            opcaoDoces.prop("disabled", true);
                            opcaoBolachaRecheada.prop("disabled", true);
                            opcaoBolachaBoloBiscoito.prop("disabled", true);
                            opcaoChicleteBalas.prop("disabled", true);
                            opcaoChocolate.prop("disabled", true);
                            opcaoSanduichePizza.prop("disabled", true);
                            opcaoSalgadinhos.prop("disabled", true);
                            opcaoSalgadinhoPacote.prop("disabled", true);
                            opcaoRefrigeranteComum.prop("disabled", true);
                            opcaoRefrigeranteDietLight.prop("disabled", true);
                            opcaoSucoNatural.prop("disabled", true);
                            opcaoSucoArtificial.prop("disabled", true);
                            opcaoCafe.prop("disabled", true);
                            opcaoCha.prop("disabled", true);
                            diagnosticoNutricional.prop("disabled", true);
                            condutaDietoterapica.prop("disabled", true);
                            relatoOrientacoesNutricionaisEvolucao.prop("disabled", true);
                            porcaoArroz.prop("disabled", true);
                            porcaoMacarrao.prop("disabled", true);
                            porcaoBatataMandioca.prop("disabled", true);
                            porcaoPao.prop("disabled", true);
                            porcaoPaoQueijo.prop("disabled", true);
                            porcaoFarinhas.prop("disabled", true);
                            porcaoCerealMatinal.prop("disabled", true);
                            porcaoHortalicasCruas.prop("disabled", true);
                            porcaoHortalicasCozidas.prop("disabled", true);
                            porcaoFrutas.prop("disabled", true);
                            porcaoLeiteIntegral.prop("disabled", true);
                            porcaoLeiteDesnatado.prop("disabled", true);
                            porcaoIogurte.prop("disabled", true);
                            porcaoIogurteDesnatado.prop("disabled", true);
                            porcaoQueijos.prop("disabled", true);
                            porcaoCarneVermelha.prop("disabled", true);
                            porcaoEmbutidos.prop("disabled", true);
                            porcaoEnlatados.prop("disabled", true);
                            porcaoOvos.prop("disabled", true);
                            porcaoLeguminosas.prop("disabled", true);
                            porcaoMargarinaComum.prop("disabled", true);
                            porcaoMargarinaLight.prop("disabled", true);
                            porcaoManteiga.prop("disabled", true);
                            porcaoRequeijaoComum.prop("disabled", true);
                            porcaoRequeijaoLight.prop("disabled", true);
                            porcaoMaioneseComum.prop("disabled", true);
                            porcaoMaioneseLight.prop("disabled", true);
                            porcaoCremeLeite.prop("disabled", true);
                            porcaoFrituras.prop("disabled", true);
                            porcaoAcucar.prop("disabled", true);
                            porcaoAdocante.prop("disabled", true);
                            porcaoMel.prop("disabled", true);
                            porcaoBarraCereal.prop("disabled", true);
                            porcaoDoces.prop("disabled", true);
                            porcaoBolachaRecheada.prop("disabled", true);
                            porcaoBolachaBoloBiscoito.prop("disabled", true);
                            porcaoChicleteBalas.prop("disabled", true);
                            porcaoChocolate.prop("disabled", true);
                            porcaoSanduichePizza.prop("disabled", true);
                            porcaoSalgadinhos.prop("disabled", true);
                            porcaoSalgadinhoPacote.prop("disabled", true);
                            porcaoRefrigeranteComum.prop("disabled", true);
                            porcaoRefrigeranteDietLight.prop("disabled", true);
                            porcaoSucoNatural.prop("disabled", true);
                            porcaoSucoArtificial.prop("disabled", true);
                            porcaoCafe.prop("disabled", true);
                            porcaoCha.prop("disabled", true);

                            $('#btnSalvar').toggle();
                        }
                        return true;
                    }
                }
            });
        }
    };

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
    };

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

    getDadosPaciente();
    validarData(dataPrimeiraConsulta);
    validarData(dataNascimento);
    // chamar função que aceita apenas numeros (variavel do campo)
    onlyNumber(dataNascimento);
    onlyNumber(dataPrimeiraConsulta);
    onlyNumber(celular);
    onlyNumber(idade);
    onlyNumber(telefoneResidencial);
    onlyNumber(numero);
    // chamar função que aceita apenas letras e o espaço (variavel do campo)
    lettersOnly(nome);
    lettersOnly(endereco);
    lettersOnly(bairro);
    lettersOnly(cidade);
    deixarDivsInvisiveis();
    $('[data-toggle="tooltip"]').tooltip();
    dataPrimeiraConsulta.tooltip("disable");
    dataNascimento.tooltip("disable");
    email.tooltip("disable");
});