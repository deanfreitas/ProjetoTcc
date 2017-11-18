$(document).ready(function () {

    const url = window.location.href;
    const idCasdastroPessoa = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

    const nome = $('#idNome');
    const idade = $('#idIdade');
    const sexo = $('#idSexo');
    const celular = $('#idCelular');
    const email = $('#idEmail');
    const fazUsoBebidasAlcoolicas = $('#idBebidasAlcoolicas');
    const fuma = $('#idFuma');
    const atividadeFisica = $('#idAtividadeFisica');
    const peso = $('#idPeso');
    const possuiPatologia = $('#idPossuiPatologia');
    const intoleranciaAlimentar = $('#idIntoleranciaAlimentar');
    const segueAlgumaDieta = $('#idDieta');
    const suplementos = $('#idSuplementos');
    const diagnosticoNutricional = $('#idDiagnosticoNutricional');
    const relatoCasoOrientacaoEvolucao = $('#idRelatoCasoOrientacoesEvolucao');

    function getResultadosPaciente() {
        $.ajax({
            url: "/ProjetoTcc/getResultadosPaciente/" + idCasdastroPessoa,
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);
                    return false;
                } else {
                    if (data.objeto.identificacao) {
                        nome.val(data.objeto.identificacao.nome);
                        idade.val(data.objeto.identificacao.idade);
                        sexo.val(data.objeto.identificacao.sexo);
                        celular.val(data.objeto.identificacao.celular);
                        email.val(data.objeto.identificacao.email);
                    }

                    if (data.objeto.historicoSocialFamiliar) {
                        fazUsoBebidasAlcoolicas.val(data.objeto.historicoSocialFamiliar.fazUsoDeBebidasAlcoolicas);
                        fuma.val(data.objeto.historicoSocialFamiliar.fuma);
                    }

                    if (data.objeto.atividadeFisica) {
                        atividadeFisica.val(data.objeto.atividadeFisica.tipo);
                    }

                    // Essa informação esta na tabela filha da ... NÃO TEM UM INPUT NA TELA DE ANAMNESE EM DADOS ANTROPOMETRICO QUE TEM LÁ PESO USUAL(ATUAL) É PRA PUXAR DE LÁ
                    peso.val();

                    if (data.objeto.dadosClinicos) {
                        possuiPatologia.val(data.objeto.dadosClinicos.patologia);
                    }

                    if (data.objeto.historicoAlimentarNutricional) {
                        intoleranciaAlimentar.val(data.objeto.historicoAlimentarNutricional.intoleranciaAlimentar);
                        segueAlgumaDieta.val(data.objeto.historicoAlimentarNutricional.segueDietaEspecial);
                    }

                    if (data.objeto.historicoAlimentarNutricional) {
                        suplementos.val(data.objeto.historicoAlimentarNutricional.fazUsoSuplemento);
                    }

                    if (data.objeto.frequenciaAlimentar) {
                        diagnosticoNutricional.val(data.objeto.frequenciaAlimentar.diagnosticoNutricional);
                        relatoCasoOrientacaoEvolucao.val(data.objeto.frequenciaAlimentar.relatosDeCaso);
                    }
                    return true;
                }
            }
        });
    }

    getResultadosPaciente();
});