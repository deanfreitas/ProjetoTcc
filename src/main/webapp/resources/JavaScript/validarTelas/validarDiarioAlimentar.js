$(document).ready(function () {
    $.material.init();

    const url = window.location.href;
    const data = url.substring(url.lastIndexOf('/') + 1);
    const urlWithoutDate = url.replace('/' + data, '');
    const idPaciente = urlWithoutDate.substring(urlWithoutDate.lastIndexOf('/') + 1);

    //Cafe da manha
    const horarioCafeManha = $('#CM-horario');
    const humorCafeManha = $('#CM-humor');
    const localCafeManha = $('#CM-local');
    const alimentoCafeManha = $('#CM-alimento');
    const quantidadeCafeManha = $('#CM-quant');

    //Lanche da manha
    const horarioLancheManha = $('#LM-horario');
    const humorLancheManha = $('#LM-humor');
    const localLancheManha = $('#LM-local');
    const alimentoLancheManha = $('#LM-alimento');
    const quantidadeLancheManha = $('#LM-quant');

    //Almoco
    const horarioAlmoco = $('#ALM-horario');
    const humorAlmoco = $('#ALM-humor');
    const localAlmoco = $('#ALM-local');
    const alimentoAlmoco = $('#ALM-alimento');
    const quantidadeAlmoco = $('#ALM-quant');

    //Lanche da tarde
    const horarioLancheTarde = $('#LT-horario');
    const humorLancheTarde = $('#LT-humor');
    const localLancheTarde = $('#LT-local');
    const alimentoLancheTarde = $('#LT-alimento');
    const quantidadeLancheTarde = $('#LT-quant');

    //Jantar
    const horarioJantar = $('#JAN-horario');
    const humorJantar = $('#JAN-humor');
    const localJantar = $('#JAN-local');
    const alimentoJantar = $('#JAN-alimento');
    const quantidadeJantar = $('#JAN-quant');

    //Ceia
    const horarioCeia = $('#CE-horario');
    const humorCeia = $('#CE-humor');
    const localCeia = $('#CE-local');
    const alimentoCeia = $('#CE-alimento');
    const quantidadeCeia = $('#CE-quant');

    //Botões
    const btnSalvar = $('#btnSalvar');
    const btnLimpar = $('#btnLimpar');
    const btnCancelar = $('#btnCancelar');

    //tabela
    const tabelaDiarioAlimentar = $('#diarioAlimentar');

    let idData;
    let tipoAcaoDiarioAlimentar;

    if (url.indexOf("cadastrar") > -1) {
        tipoAcaoDiarioAlimentar = "cadastrar";
    } else if (url.indexOf("atualizar") > -1) {
        tipoAcaoDiarioAlimentar = "atualizar";
    } else if (url.indexOf("visualizar") > -1) {
        tipoAcaoDiarioAlimentar = "visualizar";
    }

    function cadastrarDiarioAlimentar(fields) {
        let isAddDb = false;

        if (tipoAcaoDiarioAlimentar === 'visualizar') {
            return false;
        }

        fields.click(function () {
            const object = {};

            object.dData = data.replace('#', '');

            if (horarioCeia.val()) {
                isAddDb = true;
                object.ceia = {
                    horario: horarioCeia.val(),
                    local: localCeia.val(),
                    humor: humorCeia.val(),
                    alimentos: alimentoCeia.val(),
                    quantidade: quantidadeCeia.val(),
                }
            }

            if (horarioLancheManha.val()) {
                isAddDb = true;
                object.colacao = {
                    horario: horarioLancheManha.val(),
                    local: localLancheManha.val(),
                    humor: humorLancheManha.val(),
                    alimentos: alimentoLancheManha.val(),
                    quantidade: quantidadeLancheManha.val(),
                }
            }

            if (horarioJantar.val()) {
                isAddDb = true;
                object.jantar = {
                    horario: horarioJantar.val(),
                    local: localJantar.val(),
                    humor: humorJantar.val(),
                    alimentos: alimentoJantar.val(),
                    quantidade: quantidadeJantar.val(),
                }
            }

            if (horarioLancheTarde.val()) {
                isAddDb = true;
                object.lanche = {
                    horario: horarioLancheTarde.val(),
                    local: localLancheTarde.val(),
                    humor: humorLancheTarde.val(),
                    alimentos: alimentoLancheTarde.val(),
                    quantidade: quantidadeLancheTarde.val(),
                }
            }

            if (horarioAlmoco.val()) {
                isAddDb = true;
                object.almoco = {
                    horario: horarioAlmoco.val(),
                    local: localAlmoco.val(),
                    humor: humorAlmoco.val(),
                    alimentos: alimentoAlmoco.val(),
                    quantidade: quantidadeAlmoco.val(),
                }
            }

            if (horarioCafeManha.val()) {
                isAddDb = true;
                object.desjejum = {
                    horario: horarioCafeManha.val(),
                    local: localCafeManha.val(),
                    humor: humorCafeManha.val(),
                    alimentos: alimentoCafeManha.val(),
                    quantidade: quantidadeCafeManha.val(),
                }
            }

            if (!isAddDb) {
                alert('Precisa preencher alguma data');
                return false;
            }

            if (tipoAcaoDiarioAlimentar === 'cadastrar') {
                $.ajax({
                    url: "/ProjetoTcc/cadastrarDiarioAlimentar",
                    type: 'POST',
                    data: JSON.stringify(object),
                    contentType: "application/json",
                    dataType: 'json',
                    success: function (data) {
                        alert(data.mensagem);
                        if (data.codigo === 0) {
                            return true;
                        } else {
                            limparTodosCampos();
                            if (data.codigo === 2) {
                                location.href = '/ProjetoTcc/sairSistema';
                            }
                            return false;
                        }
                    }
                });
            } else if (tipoAcaoDiarioAlimentar === 'atualizar') {
                object.id = idData;

                $.ajax({
                    url: "/ProjetoTcc/atualizarDiarioAlimentar",
                    type: 'PUT',
                    data: JSON.stringify(object),
                    contentType: "application/json",
                    dataType: 'json',
                    success: function (data) {
                        alert(data.mensagem);
                        if (data.codigo === 0) {
                            location.reload();
                            return true;
                        } else {
                            if (data.codigo === 2) {
                                location.href = '/ProjetoTcc/sairSistema';
                            }
                            return false;
                        }
                    }
                });
            }
        })
    }

    function getDiarioAlimentar() {
        $.ajax({
            url: "/ProjetoTcc/getDiarioAlimentar/" + idPaciente + '/' + data,
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);

                    if (data.codigo === 2) {
                        location.href = '/ProjetoTcc/sairSistema';
                    }
                    return false;
                } else {
                    if (tipoAcaoDiarioAlimentar === 'cadastrar') {
                        return false;
                    }

                    idData = data.objeto.id;

                    if (data.objeto.desjejum) {
                        horarioCafeManha.val(retirarSegundosHorario(data.objeto.desjejum.horario));
                        humorCafeManha.val(data.objeto.desjejum.humor);
                        localCafeManha.val(data.objeto.desjejum.local);
                        alimentoCafeManha.val(data.objeto.desjejum.alimentos);
                        quantidadeCafeManha.val(data.objeto.desjejum.quantidade);
                    }

                    if (data.objeto.colacao) {
                        horarioLancheManha.val(retirarSegundosHorario(data.objeto.colacao.horario));
                        humorLancheManha.val(data.objeto.colacao.humor);
                        localLancheManha.val(data.objeto.colacao.local);
                        alimentoLancheManha.val(data.objeto.colacao.alimentos);
                        quantidadeLancheManha.val(data.objeto.colacao.quantidade);
                    }

                    if (data.objeto.almoco) {
                        horarioAlmoco.val(retirarSegundosHorario(data.objeto.almoco.horario));
                        humorAlmoco.val(data.objeto.almoco.humor);
                        localAlmoco.val(data.objeto.almoco.local);
                        alimentoAlmoco.val(data.objeto.almoco.alimentos);
                        quantidadeAlmoco.val(data.objeto.almoco.quantidade);
                    }

                    if (data.objeto.lanche) {
                        horarioLancheTarde.val(retirarSegundosHorario(data.objeto.lanche.horario));
                        humorLancheTarde.val(data.objeto.lanche.humor);
                        localLancheTarde.val(data.objeto.lanche.local);
                        alimentoLancheTarde.val(data.objeto.lanche.alimentos);
                        quantidadeLancheTarde.val(data.objeto.lanche.quantidade);
                    }

                    if (data.objeto.jantar) {
                        horarioJantar.val(retirarSegundosHorario(data.objeto.jantar.horario));
                        humorJantar.val(data.objeto.jantar.humor);
                        localJantar.val(data.objeto.jantar.local);
                        alimentoJantar.val(data.objeto.jantar.alimentos);
                        quantidadeJantar.val(data.objeto.jantar.quantidade);
                    }

                    if (data.objeto.ceia) {
                        horarioCeia.val(retirarSegundosHorario(data.objeto.ceia.horario));
                        humorCeia.val(data.objeto.ceia.humor);
                        localCeia.val(data.objeto.ceia.local);
                        alimentoCeia.val(data.objeto.ceia.alimentos);
                        quantidadeCeia.val(data.objeto.ceia.quantidade);
                    }

                    if (tipoAcaoDiarioAlimentar === 'visualizar') {
                        btnSalvar.toggle();
                        btnLimpar.toggle();
                        btnCancelar.toggle();

                        tabelaDiarioAlimentar.find('tbody').find('input[type=text]').each(function () {
                            $(this).prop('disabled', true);
                        })
                    }

                    return true;
                }
            }
        });
    }

    function limparTodosCampos() {
        tabelaDiarioAlimentar.find('tbody').find('input[type=text]').each(function () {
            $(this).val('');
        })
    }

    function limparDiarioAlimentar(fields) {
        fields.click(function () {
            limparTodosCampos();
        })
    }

    function cancelar(fields) {
        fields.click(function () {
            location.href = '/ProjetoTcc/telaDiarioAlimentarHome';
        })
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

    function retirarSegundosHorario(fields) {
        const patternWithSeconds = /^([0-9]{2}):([0-9]{2}):([0-9]{2})$/;
        const patternTimeWithoutSeconds = /^([0-9]{2}):([0-9]{2})$/;

        if (patternTimeWithoutSeconds.test(fields)) {
            return fields;
        } else if (patternWithSeconds.test(fields)) {
            return fields.substring(0, fields.lastIndexOf(':'));
        }
    }

    function colocarMascaraHorario(fields) {
        fields.blur(function () {
            let horario = $(this).val();
            let isHorarioValid = true;

            horario = horario.replace(/\W/g, "");

            if (horario.length !== 4 && horario.length !== 3) {
                isHorarioValid = false;
            } else {

                if (horario.length === 3) {
                    horario = '0' + horario;
                }

                const hora = horario.substring(0, 2);
                const minutos = horario.substring(2, 4);

                if ((hora < 0 ) || (hora > 23) || ( minutos < 0) || ( minutos > 59)) {
                    isHorarioValid = false;
                }
            }

            horario = horario.replace(/(\d{2})(\d)/, "$1:$2");
            $(this).val(horario);

            if (isHorarioValid) {
                $(this).css("border-color", "#FFFFFF");
                $(this).css("color", "#000000");
                return true;
            } else {
                $(this).css("border-color", "#FF0000");
                $(this).css("color", "#FF0000");
                return false;
            }
        });
    }

    getDiarioAlimentar();

    onlyNumber(horarioAlmoco);
    onlyNumber(horarioCafeManha);
    onlyNumber(horarioCeia);
    onlyNumber(horarioJantar);
    onlyNumber(horarioLancheManha);
    onlyNumber(horarioLancheTarde);

    onlyNumber(quantidadeAlmoco);
    onlyNumber(quantidadeCafeManha);
    onlyNumber(quantidadeCeia);
    onlyNumber(quantidadeJantar);
    onlyNumber(quantidadeLancheManha);
    onlyNumber(quantidadeLancheTarde);

    colocarMascaraHorario(horarioAlmoco);
    colocarMascaraHorario(horarioCafeManha);
    colocarMascaraHorario(horarioCeia);
    colocarMascaraHorario(horarioJantar);
    colocarMascaraHorario(horarioLancheManha);
    colocarMascaraHorario(horarioLancheTarde);

    cadastrarDiarioAlimentar(btnSalvar);
    limparDiarioAlimentar(btnLimpar);
    cancelar(btnCancelar);
});