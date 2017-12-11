$(document).ready(function () {
    $.material.init();

    const url = window.location.href;
    const idCasdastroPessoa = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

    const cep = $('input[id="cCep"]');

    // Campos para as duas pessoas
    const nome = $('#idNome');
    const sexo = $("input:radio[id='radioSexo']:checked");
    const crn = $('#idCRN');
    const email = $('#idEmail');
    const apelido = $('#idApelido');
    const senha = $('#idSenha');

    // Campo para paciente
    const responsavel = $('#idResp');

    // Campos para o nutricionista
    const cpf = $('#idCPF');
    const dataNascimento = $('#idDataNascimento');
    const endereco = $('#idEndereco');
    const numero = $('#idNumero');
    const complemento = $('#idComplemento');
    const telefone = $('#idTelefone');
    const celular = $('#idCelular');
    const comercial = $('#idComercial');

    // botoes
    const btnLimparFormulario = $('#btnLimparFormulario');
    const btnSalvarUsuario = $('#btnSalvarUsuario');
    const btnAlterarDados = $('#btnAlterarDados');
    const btnCancelar = $('#btnCancelar');

    // divs
    const divPaciente = $('#idCadPaciente');
    const divNutricionista = $('#idCadNutricionista');

    // modal cadastro
    const idModalTipoCadastro = $('#idModalTipoCadastro');
    const modalBtnPaciente = $('#btnPaci');
    const modalBntNutricionista = $('#btnNutri');

    // modal senha
    const btnVerificarSenha = $('#verificarSenha');
    const btnCancelarVerificarSenha = $('#cancelarVerificarSenha');
    const validarSenha = $('#validarSenha');

    // validar
    let isValidEmail = false;

    let tipoPessoa = null;

    if (url.indexOf("nutricionista") > -1) {
        tipoPessoa = "nutricionista";
    } else if (url.indexOf("paciente") > -1) {
        tipoPessoa = "paciente";
    }

    if (!tipoPessoa || tipoPessoa === 'acrescentar') {
        idModalTipoCadastro.modal('show');

        modalBtnPaciente.click(function () {
            location.href = '/ProjetoTcc/telaCadastrarUsuario/paciente';
            divPaciente.show();
            divNutricionista.hide();
            idModalTipoCadastro.modal('toggle');
        });

        modalBntNutricionista.click(function () {
            location.href = '/ProjetoTcc/telaCadastrarUsuario/nutricionista';
            divPaciente.hide();
            divNutricionista.show();
            idModalTipoCadastro.modal('toggle');
        });

        deixarDivsInvisiveis(divPaciente);
        deixarDivsInvisiveis(divNutricionista);
    } else if (tipoPessoa === 'paciente') {
        divPaciente.show();
        divNutricionista.hide();
    } else if (tipoPessoa === 'nutricionista') {
        divPaciente.hide();
        divNutricionista.show();
    }

    function deixarDivsInvisiveis(fields) {
        fields.toggle();
    }

    function onlyNumber(fields) {
        fields.unbind('keyup').bind('keyup', function () {
            const thisVal = $(this).val();
            let tempVal = "";

            for (let i = 0; i < thisVal.length; i++) {
                if (new RegExp(/^[0-9]$/).test(thisVal.charAt(i))) {
                    tempVal += thisVal.charAt(i);
                }
            }
            $(this).val(tempVal);
        });
    }

    function lettersOnly(fields) {
        fields.keypress(function (event) {
            const inputValue = event.which;
            if (!(inputValue >= 65 && inputValue <= 120)
                && (inputValue !== 32 && inputValue !== 0 && inputValue !== 122 && inputValue !== 225 && inputValue !== 227 && inputValue !== 245 && inputValue !== 243 && inputValue !== 250 && inputValue !== 237 && inputValue !== 233)
                || inputValue === 95 || inputValue === 91 || inputValue === 93 || inputValue === 92) {
                event.preventDefault();
            }
        });
    }

    function validarCpf(fields) {
        fields.blur(function () {
            let cpf = $(this).val();
            let i;
            let soma;
            let resto;
            let cpfValid = true;

            cpf = cpf.replace(/\W/g, "");

            if (cpf.length !== 11
                || cpf === "00000000000"
                || cpf === "11111111111"
                || cpf === "22222222222"
                || cpf === "33333333333"
                || cpf === "44444444444"
                || cpf === "55555555555"
                || cpf === "66666666666"
                || cpf === "77777777777"
                || cpf === "88888888888"
                || cpf === "99999999999") {
                cpfValid = false;
            } else {

                soma = 0;
                for (i = 0; i < 9; i++) {
                    soma += parseInt(cpf.charAt(i)) * (10 - i);
                }

                resto = 11 - (soma % 11);
                if (resto === 10 || resto === 11) {
                    resto = 0;
                }
                if (resto !== parseInt(cpf.charAt(9))) {
                    cpfValid = false;
                } else {

                    soma = 0;
                    for (i = 0; i < 10; i++) {
                        soma += parseInt(cpf.charAt(i))
                            * (11 - i);
                    }
                    resto = 11 - (soma % 11);
                    if (resto === 10 || resto === 11) {
                        resto = 0;
                    }

                    if (resto !== parseInt(cpf.charAt(10))) {
                        cpfValid = false;
                    }
                }
            }

            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2");
            cpf = cpf.replace(/(\d{3})(\d)/, "$1-$2");
            $(this).val(cpf);

            if (cpfValid) {
                $(this).css("border-color", "#FFFFFF");
                $(this).css("color", "#000000");
                $(this).tooltip("disable");
                return true;
            } else {
                $(this).css("border-color", "#FF0000");
                $(this).css("color", "#FF0000");
                $(this).tooltip("enable");
                return false;
            }
        });
    }

    function validarRG(rgField) {
        $(rgField).blur(function () {
            let rg = $(this).val();
            let i;
            let soma;
            let resto;
            let rgValid = true;

            rg = rg.replace(/\W/g, "");

            if (rg.length !== 9
                || rg === "00000000000"
                || rg === "11111111111"
                || rg === "22222222222"
                || rg === "33333333333"
                || rg === "44444444444"
                || rg === "55555555555"
                || rg === "66666666666"
                || rg === "77777777777"
                || rg === "88888888888"
                || rg === "99999999999") {
                rgValid = false;
            } else {

                soma = 0;
                for (i = 0; i < 8; i++) {
                    soma += parseInt(rg.charAt(i)) * (2 + i);
                }

                resto = 11 - (soma % 11);
                if (resto === 10 || resto === 11) {
                    resto = 0;
                }
                if (resto !== parseInt(rg.charAt(8))) {
                    rgValid = false;
                }
            }

            rg = rg.replace(/(\d{2})(\d)/, "$1.$2");
            rg = rg.replace(/(\d{3})(\d)/, "$1.$2");
            rg = rg.replace(/(\d{3})(\d)/, "$1-$2");
            $(this).val(rg);

            if (rgValid) {
                $(this).css("border-color", "#FFFFFF");
                $(this).css("color", "#000000");
                $(this).tooltip("disable");
                return true;
            } else {
                $(this).tooltip("enable");
                $(this).css("border-color", "#FF0000");
                $(this).css("color", "#FF0000");
                return false;
            }
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
        fields.unbind('keyup').bind('keyup', function () {
            let thisVal = $(this).val();
            /*
             * Essa função de se o campo esta vazio. No if valida se o campo
             * esta vazio ou não. Caso esteja, escolhe algum ação para o
             * campo
             *
             * else é para caso o campo não esteja mais vazio.
             */

            if (!thisVal || thisVal === "") {
                $(this).css("border-color", "#FF0000");
            } else {
                $(this).css("border-color", "#FFFFFF");
            }
        });
    }

    function validarData(fields) {
        fields.blur(function () {
            let data = $(this).val();
            let dataCerta = true;
            const tamanhoData = data.length;

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

            const dia = data.substr(0, 2);
            const mes = data.substr(2, 2);
            const ano = data.substr(4, 4);

            const now = new Date;
            const yyyy = now.getFullYear();

            if (ano < 1900 || ano > yyyy) {
                dataCerta = false;
            } else if (mes === '01' || mes === '03' || mes === '05' || mes === '07' || mes === '08' || mes === '10' || mes === '12') {
                if (dia > 31) {
                    dataCerta = false;
                }
            } else if (mes === '02') {
                if (dia > 28) {
                    dataCerta = false;
                }
            } else if (mes === '04' || mes === '06' || mes === '09' || mes === '11') {
                if (dia > 30) {
                    dataCerta = false;
                }
            } else if (mes > 12) {
                dataCerta = false
            }

            data = data.replace(/(\d{2})(\d)/, "$1/$2");
            data = data.replace(/(\d{2})(\d)/, "$1/$2");
            $(this).val(data);

            if (dataCerta === false) {
                $(this).css("border-color", "#FF0000");
                $(this).css("color", "#FF0000");
                $(this).tooltip("enable");
                return false;
            } else {
                $(this).css("border-color", "#FFFFFF");
                $(this).css("color", "#000000");
                $(this).tooltip("disable");
                return true;
            }
        });
    }

    function colocarMascaraCelular(fields) {
        fields.blur(function () {
            let celular = $(this).val();
            celular = celular.replace(/\W/g, "");
            celular = celular.replace(/(\d{2})(\d)/, "$1 $2");
            celular = celular.replace(/(\d{0})(\d)/, "$1($2");
            celular = celular.replace(/(\d{2})(\D)/, "$1)$2");
            celular = celular.replace(/(\d{5})(\d)/, "$1-$2");
            $(this).val(celular);
        });
    }

    function colocarMascaraTelefone(fields) {
        fields.blur(function () {
            let telefone = $(this).val();
            telefone = telefone.replace(/\W/g, "");
            telefone = telefone.replace(/(\d{2})(\d)/, "$1 $2");
            telefone = telefone.replace(/(\d{0})(\d)/, "$1($2");
            telefone = telefone.replace(/(\d{2})(\D)/, "$1)$2");
            telefone = telefone.replace(/(\d{4})(\d)/, "$1-$2");
            $(this).val(telefone);
        });
    }

    function validarEmail(fields) {
        fields.blur(function () {
            let emailValidar = $(this).val();
            let emailInvalido = false;
            let i;

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

            if (emailInvalido) {
                isValidEmail = false;
                $(this).css("border-color", "#FF0000");
                $(this).css("color", "#FF0000");
                $(this).tooltip("enable");
                return false;
            } else {
                isValidEmail = true;
                $(this).css("border-color", "#FFFFFF");
                $(this).css("color", "#000000");
                $(this).tooltip("disable");
                checkEmaiIsExist(fields);
                return true;
            }
        });
    }

    function limparFormulario(fields) {
        fields.click(function () {
            nome.val('');
            sexo.val('');
            crn.val('');
            email.val('');
            apelido.val('');
            senha.val('');

            if (tipoPessoa === 'paciente') {
                responsavel.val('');

            } else if (tipoPessoa === 'nutricionista') {
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
             * Mostra a mensagem de formurario apagado
             */

            alert("Formulario Apagado");
        });
    }

    function checkLogin(fields) {
        fields.blur(function () {
            let object = {usuario: apelido.val()};

            $.ajax({
                url: "/ProjetoTcc/validarLoginExiste",
                type: 'POST',
                data: JSON.stringify(object),
                contentType: "application/json",
                dataType: 'json',
                success: function (data) {
                    if (data.mensagem) {
                        /*
                         * Uanderson a mensagem que você vai que aparece no
                         * alert está na variavel "data.mensagem" Essa mensagem
                         * está escrito "Já tem um login Igual a esse", que
                         * aparece quando o usuario coloca um email que já foi
                         * colocado.
                         */

                        alert(data.mensagem);

                        /*
                         * Dar um jeito de aparecer a mensagem antes do "return
                         * false"
                         */
                        return false;
                    }
                    return true;
                }
            });
        });
    }

    function salvarUsuario(fields) {
        fields.click(function () {
            let display = false;
            let menssage = 'Esses parametros são obrigatorios ';

            if (!nome.val() || nome.val().trim() === "") {
                nome.css("border-color", "#DC143C");
                menssage = '\n Nome';
                display = true;

            } else if (!apelido.val() || apelido.val().trim() === "") {
                apelido.css("border-color", "#DC143C");
                menssage = '\n Apelido';
                display = true;

            } else if (!isValidEmail) {
                email.css("border-color", "#DC143C");
                menssage = '\n Email';
                display = true;

            } else if (!senha.val() || senha.val() === "") {
                senha.css("border-color", "#DC143C");
                menssage = '\n Senha';
                display = true;
            }

            if (display) {
                alert(menssage);
                return false;
            } else {
                let object;

                if (!idCasdastroPessoa || idCasdastroPessoa === "" || idCasdastroPessoa === "acrescentar") {
                    if (tipoPessoa === 'nutricionista') {
                        object = {
                            nomeCompleto: nome.val(),
                            sexo: sexo.val(),
                            dataNascimento: dataNascimento.val(),
                            crn: crn.val(),
                            email: email.val(),
                            cpf: cpf.val(),
                            endereco: endereco.val(),
                            numero: numero.val(),
                            complemento: complemento.val(),
                            telefone: telefone.val(),
                            celular: celular.val(),
                            comercial: comercial.val(),
                            login: {usuario: apelido.val(), senha: senha.val()}
                        };
                    } else if (tipoPessoa === 'paciente') {
                        object = {
                            responsavel: responsavel.val(),
                            identificacao: {
                                nome: nome.val(),
                                email: email.val(),
                                sexo: sexo.val()
                            },
                            nutricionista: {crn: crn.val()},
                            login: {usuario: apelido.val(), senha: senha.val()}
                        };
                    }

                    $.ajax({
                        url: "/ProjetoTcc/salvarUsuario/" + tipoPessoa,
                        type: 'POST',
                        data: JSON.stringify(object),
                        contentType: "application/json",
                        dataType: 'json',
                        success: function (data) {
                            if (data.codigo === 1) {
                                alert(data.mensagem);
                                return false;
                            } else {
                                alert(data.mensagem);
                                if (!idCasdastroPessoa || idCasdastroPessoa === "" || idCasdastroPessoa === "acrescentar") {
                                    location.href = '/ProjetoTcc/telaLogin';
                                } else {
                                    location.href = '/ProjetoTcc/telaPrincipal';
                                }
                                return true;
                            }
                        }
                    });
                } else {
                    let object;

                    if (tipoPessoa === 'nutricionista') {
                        object = {
                            nomeCompleto: nome.val(),
                            sexo: sexo.val(),
                            dataNascimento: dataNascimento.val(),
                            crn: crn.val(),
                            email: email.val(),
                            cpf: cpf.val(),
                            endereco: endereco.val(),
                            numero: numero.val(),
                            complemento: complemento.val(),
                            telefone: telefone.val(),
                            celular: celular.val(),
                            comercial: comercial.val(),
                            login: {usuario: apelido.val(), senha: senha.val()}
                        };
                    } else if (tipoPessoa === 'paciente') {
                        object = {
                            responsavel: responsavel.val(),
                            identificacao: {email: email.val()},
                            login: {usuario: apelido.val(), senha: senha.val()}
                        };
                    }

                    $.ajax({
                        url: "/ProjetoTcc/atualizarCadastro/" + tipoPessoa,
                        type: 'PUT',
                        data: JSON.stringify(object),
                        contentType: "application/json",
                        dataType: 'json',
                        success: function (data) {
                            if (data.codigo === 1) {
                                alert(data.mensagem);
                                return false;
                            } else if (data.codigo === 2) {
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
    }

    function carregarDadosUsuario() {
        if (!idCasdastroPessoa || idCasdastroPessoa === "" || idCasdastroPessoa === "acrescentar") {
            btnAlterarDados.toggle();
            return false;
        } else {
            btnLimparFormulario.toggle();

            $.ajax({
                url: "/ProjetoTcc/pegarCadastroUsuario/" + tipoPessoa + "/" + idCasdastroPessoa,
                type: 'GET',
                contentType: "application/json",
                dataType: 'json',
                success: function (data) {
                    if (data.codigo !== 0) {
                        alert(data.mensagem);
                        return false;
                    } else {

                        apelido.val(data.objeto.login.usuario.trim()).prop("disabled", true);
                        senha.val(data.objeto.login.senha.trim()).prop("disabled", true);

                        if (data.mensagem === 'paciente') {
                            responsavel.val(data.objeto.responsavel).prop("disabled", true);
                            email.val(data.objeto.identificacao.email).prop("disabled", true);
                            crn.toggle();
                            nome.toggle();
                            $('#divRadioSexo').toggle();
                        } else if (data.mensagem === 'nutricionista') {
                            nome.val(data.objeto.nomeCompleto.trim()).prop("disabled", true);
                            let sexoPessoa = $("input:radio[id='radioSexo']").prop("disabled", true);
                            if (data.objeto.sexo) {
                                if (sexoPessoa.is(':checked') === false) {
                                    sexoPessoa.filter('[value=' + data.objeto.sexo.trim() + ']').prop('checked', true);
                                }
                            }
                            email.val(data.objeto.email).prop("disabled", true);
                            cpf.val(data.objeto.cpf).prop("disabled", true);
                            dataNascimento.val(data.objeto.dataNascimento.trim()).prop("disabled", true);
                            endereco.val(data.objeto.endereco).prop("disabled", true);
                            numero.val(data.objeto.numero).prop("disabled", true);
                            complemento.val(data.objeto.complemento).prop("disabled", true);
                            telefone.val(data.objeto.telefone).prop("disabled", true);
                            celular.val(data.objeto.celular).prop("disabled", true);
                            comercial.val(data.objeto.comercial).prop("disabled", true);
                            crn.val(data.objeto.crn).prop("disabled", true);
                        }
                        return true;
                    }
                }
            });
        }
    }

    function verificarSenha(fields) {
        fields.click(function () {
            let senhaPessoa = validarSenha.val();

            if (senhaPessoa !== senha.val()) {
                alert("Senha incorreta");
                validarSenha.val('');
                return false;
            } else {
                nome.prop("disabled", false);
                sexo.prop("disabled", false);
                email.prop("disabled", false);
                apelido.prop("disabled", false);
                senha.prop("disabled", false);

                if (tipoPessoa === 'paciente') {
                    responsavel.prop("disabled", false);

                } else if (tipoPessoa === 'nutricionista') {
                    $("input:radio[id='radioSexo']").prop("disabled", false)
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
    }

    function cancelarVerificarSenha(fields) {
        fields.click(function () {
            validarSenha.val('');
        });
    }

    function cancelar(fields) {
        fields.click(function () {
            if (!idCasdastroPessoa || idCasdastroPessoa === '' || idCasdastroPessoa === 'acrescentar') {
                location.href = '/ProjetoTcc/telaLogin';
            } else {
                location.href = '/ProjetoTcc/telaPrincipal';
            }
        });
    }

    function checkEmaiIsExist(fields) {
        if (!isValidEmail) {
            return false;
        }

        let object = {
            email: fields.val(),
        };

        $.ajax({
            url: "/ProjetoTcc/validar/checkEmail",
            type: 'POST',
            data: JSON.stringify(object),
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);
                    isValidEmail = false;
                    fields.css("border-color", "#FF0000");
                    fields.css("color", "#FF0000");
                    return false;
                }

                isValidEmail = true;
                fields.css("border-color", "#FFFFFF");
                fields.css("color", "#000000");
                return true;
            }
        });
    }

    carregarDadosUsuario();
    limparFormulario(btnLimparFormulario);
    salvarUsuario(btnSalvarUsuario);
    checkLogin(apelido);
    verificarSenha(btnVerificarSenha);
    cancelarVerificarSenha(btnCancelarVerificarSenha);
    cancelar(btnCancelar);

    validarCamposDigitados(email);
    validarCamposDigitados(apelido);
    validarCamposDigitados(senha);
    validarCpf(cpf);
    validarData(dataNascimento);
    validarEmail(email);

    colocarMascaraCep(cep);
    colocarMascaraCelular(celular);
    colocarMascaraTelefone(telefone);
    colocarMascaraTelefone(comercial);

    onlyNumber(dataNascimento);
    onlyNumber(cep);
    onlyNumber(celular);
    onlyNumber(cpf);
    onlyNumber(telefone);
    onlyNumber(comercial);
    onlyNumber(numero);

    lettersOnly(responsavel);
    lettersOnly(nome);
    lettersOnly(endereco);

    $('[data-toggle="tooltip"]').tooltip();
    cpf.tooltip("disable");
    dataNascimento.tooltip("disable");
    email.tooltip("disable");
});