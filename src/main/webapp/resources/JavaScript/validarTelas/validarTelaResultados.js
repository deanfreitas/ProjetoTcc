$(document).ready(function () {

    var url = window.location.href;
    var idCasdastroPessoa = url.replace(/(\/)(\d{1,})/, "$1 $2").replace(/(^[^ ]*)/, "").trim();

    var nome = $('#idNome');
    var idade = $('#idIdade');
    var sexo = $('#idSexo');
    var celular = $('#idCelular');
    var email = $('#idEmail');
    var fazUsoBebidasAlcoolicas = $('#idBebidasAlcoolicas');
    var fuma = $('#idFuma');
    var atividadeFisica = $('#idAtividadeFisica');
    var peso = $('#idPeso');
    var possuiPatologia = $('#idPossuiPatologia');
    var intoleranciaAlimentar = $('#idIntoleranciaAlimentar');
    var segueAlgumaDieta = $('#idDieta');
    var suplementos = $('#idSuplementos');
    var diagnosticoNutricional = $('#idDiagnosticoNutricional');
    var relatoCasoOrientacaoEvolucao = $('#idRelatoCasoOrientacoesEvolucao');

    function getResultadosPaciente() {
        $.ajax({
            url: "/ProjetoTcc/getResultadosPaciente/" + idCasdastroPessoa,
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',
            success: function (data, status) {
                if (data.codigo != 0) {
                    alert(data.mensagem);
                    return false;
                } else {
                    if (data.objeto.identificacao != null) {
                        nome.val(data.objeto.identificacao.nome);
                        idade.val(data.objeto.identificacao.idade);
                        sexo.val(data.objeto.identificacao.sexo);
                        celular.val(data.objeto.identificacao.celular);
                        email.val(data.objeto.identificacao.email);
                    }

                    if (data.objeto.historicoSocialFamiliar != null) {
                        fazUsoBebidasAlcoolicas.val(data.objeto.historicoSocialFamiliar.fazUsoDeBebidasAlcoolicas);
                        fuma.val(data.objeto.historicoSocialFamiliar.fuma);
                    }

                    // Qual informação é essa "tipo de atividade fisica" (é a a atividade fisica que ele pratica: futebol, caminhada, etc
                    atividadeFisica.val();

                    // Essa informação esta na tabela filha da ... NÃO TEM UM INPUT NA TELA DE ANAMNESE EM DADOS ANTROPOMETRICO QUE TEM LÁ PESO USUAL(ATUAL) É PRA PUXAR DE LÁ
                    peso.val();

                    if (data.objeto.dadosClinicos != null) {
                        possuiPatologia.val(data.objeto.dadosClinicos.patologia);
                    }

                    if (data.objeto.historicoAlimentarNutricional != null) {
                        intoleranciaAlimentar.val(data.objeto.historicoAlimentarNutricional.intoleranciaAlimentar);
                        segueAlgumaDieta.val(data.objeto.historicoAlimentarNutricional.segueDietaEspecial);
                    }

                    // Não encontrei essa informação na tela ESTA ESCRITO "FAZ USO DE SUPLEMENTOS?QUAL? É UM INPUT TEXT
                    suplementos.val();

                    if (data.objeto.frequenciaAlimentar != null) {
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