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
                id: data,
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
                    horario: "",
                    local: "",
                    humor: "",
                    alimentos: "",
                    quantidade: "",
                }
            };

            $.ajax({
                url: "/ProjetoTcc/cadastrarDiarioAlimentar",
                type: 'PUT',
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

    cadastrarDiarioAlimentar(btnSalvar);
    limparDiarioAlimentar(btnLimpar);
    cancelar(btnCancelar);
});