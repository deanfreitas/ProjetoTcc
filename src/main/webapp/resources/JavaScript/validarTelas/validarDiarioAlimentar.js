$(document).ready(function () {
    $.material.init();

    const url = window.location.href;
    const data = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

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

    let tipoAcaoDiarioAlimentar = null;

    if (url.indexOf("cadastrar") > -1) {
        tipoAcaoDiarioAlimentar = "cadastrar";
    } else if (url.indexOf("atualizar") > -1) {
        tipoAcaoDiarioAlimentar = "atualizar";
    } else if (url.indexOf("visualizar") > -1) {
        tipoAcaoDiarioAlimentar = "visualizar";
    }

    function cadastrarDiarioAlimentar(fields) {
        fields.click(function () {
            let object = {
                dData: data,
                ceia: {
                    horario: horarioCeia.val(),
                    local: localCeia.val(),
                    humor: humorCeia.val(),
                    alimentos: alimentoCeia.val(),
                    quantidade: quantidadeCeia.val(),
                },
                colacao: {
                    horario: horarioLancheManha.val(),
                    local: localLancheManha.val(),
                    humor: humorLancheManha.val(),
                    alimentos: alimentoLancheManha.val(),
                    quantidade: quantidadeLancheManha.val(),
                },
                jantar: {
                    horario: horarioJantar.val(),
                    local: localJantar.val(),
                    humor: humorJantar.val(),
                    alimentos: alimentoJantar.val(),
                    quantidade: quantidadeJantar.val(),
                },
                lanche: {
                    horario: horarioLancheTarde.val(),
                    local: localLancheTarde.val(),
                    humor: humorLancheTarde.val(),
                    alimentos: alimentoLancheTarde.val(),
                    quantidade: quantidadeLancheTarde.val(),
                },
                almoco: {
                    horario: horarioAlmoco.val(),
                    local: localAlmoco.val(),
                    humor: humorAlmoco.val(),
                    alimentos: alimentoAlmoco.val(),
                    quantidade: quantidadeAlmoco.val(),
                },
                desjejum: {
                    horario: horarioCafeManha.val(),
                    local: localCafeManha.val(),
                    humor: humorCafeManha.val(),
                    alimentos: alimentoCafeManha.val(),
                    quantidade: quantidadeCafeManha.val(),
                },
                foraHora: {
                    horario: new Date,
                    local: "",
                    humor: "",
                    alimentos: "",
                    quantidade: 0,
                }
            };

            $.ajax({
                url: "/ProjetoTcc/cadastrarDiarioAlimentar",
                type: 'POST',
                data: JSON.stringify(object),
                contentType: "application/json",
                dataType: 'json',
                success: function (data) {
                    alert(data.mensagem);
                    return data.codigo === 0;
                }
            });
        })
    }

    function limparDiarioAlimentar(fields) {
        fields.click(function () {
            tabelaDiarioAlimentar.find('tbody').find('input[type=text]').each(function () {
                $(this).val('');
            })
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

    onlyNumber(horarioAlmoco);
    onlyNumber(horarioCafeManha);
    onlyNumber(horarioCeia);
    onlyNumber(horarioJantar);
    onlyNumber(horarioLancheManha);
    onlyNumber(horarioLancheTarde);

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