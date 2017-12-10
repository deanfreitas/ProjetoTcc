$(document).ready(function () {

    const listIdPaciente = [];
    const listNomePaciente = [];
    const tabelaPacientes = $('#pacientes');
    const btnAdicionarPaciente = $('#adicionarPaciente');
    const btnApagarPaciente = $("#apagarPaciente");
    const btnGerarRelatorio = $("#gerarRelatorio");
    const brnTelaAcompanhamento = $("#telaAcompanhamento");
    const btnTelaDiarioAlimentar = $("#telaDiarioAlimentar");

    function getPacientes() {
        let object;

        $.ajax({
            url: "/ProjetoTcc/getPacientesNutricionista",
            type: 'GET',
            data: JSON.stringify(object),
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);

                    if (data.codigo === 2) {
                        location.href = '/ProjetoTcc/sairSistema';
                    }
                    return false;
                }

                for (let i = data.listaObjetos.length - 1; i >= 0; i--) {
                    tabelaPacientes.find('tbody').append(`<tr class="info" style="cursor: pointer;" id="tr` + i + `">
  															<td> <input type="checkbox" id="checkbox` + i + `" value="` + data.listaObjetos[i].id + `"></td>
    														<td id="idNome` + i + `">` + (data.listaObjetos[i].identificacao ? data.listaObjetos[i].identificacao.nome : '') + `</td> 
    														<td id="idIdade` + i + `">` + (data.listaObjetos[i].identificacao ? data.listaObjetos[i].identificacao.idade : '') + `</td>
    														<td id="idSexo` + i + `">` + (data.listaObjetos[i].identificacao ? data.listaObjetos[i].identificacao.sexo : '') + `</td>
  														</tr>`);
                    $("#idNome" + i).click(function () {
                        location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
                    });

                    $("#idIdade" + i).click(function () {
                        location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
                    });

                    $("#idSexo" + i).click(function () {
                        location.href = '/ProjetoTcc/telaAnamnese/atualizar/' + data.listaObjetos[i].id
                    });

                    $("#checkbox" + i).click(function () {
                        if ($(this).is(":checked")) {
                            listIdPaciente.push($(this).val());
                            listNomePaciente.push((data.listaObjetos[i].identificacao ? data.listaObjetos[i].identificacao.nome : 'null'));
                        } else {
                            listIdPaciente.pop($(this).val());
                            listNomePaciente.pop((data.listaObjetos[i].identificacao ? data.listaObjetos[i].identificacao.nome : 'null'));
                        }
                    });
                }
                tabelaPacientes.DataTable();
                return true;
            }
        });
    }

    function deletarPaciente() {
        if (listIdPaciente.length > 0) {
            let object = [];
            for (let i in listIdPaciente) {
                object.push(
                    {
                        id: listIdPaciente[i],
                        identificacao: {
                            nome: listNomePaciente[i]
                        }
                    }
                )
            }

            return $.ajax({
                url: "/ProjetoTcc/deletarPacientes",
                type: 'DELETE',
                data: JSON.stringify(object),
                contentType: "application/json",
                dataType: 'json',
            });
        }
    }

    function adicionarPaciente(fields) {
        fields.click(function () {
            location.href = '/ProjetoTcc/telaAnamnese/cadastrar';
        });
    }

    function apagarPaciente(fields) {
        fields.click(function () {
            if (listIdPaciente.length > 0) {
                deletarPaciente().done(function (data) {
                    if (data.codigo !== 0) {
                        for (let i in data.listaObjetos) {
                            alert(data.mensagem[i]);
                        }
                        location.reload();
                        return false;
                    } else {
                        alert(data.mensagem);
                        location.reload();
                        return true;
                    }
                })
            } else {
                alert('Selecione um Paciente para deletar');
            }
        });
    }

    function gerarRelatorio(fields) {
        fields.click(function () {
            if (listIdPaciente.length === 1) {
                location.href = '/ProjetoTcc/telaResultados/' + listIdPaciente[0];
            } else if (listIdPaciente.length === 0) {
                alert('Selecione um Paciente para gerar o relatorio');
            } else {
                alert('Selecione apenas um Paciente para gerar o relatorio');
            }
        });
    }

    function telaAcompanhamento(fields) {
        fields.click(function () {
            if (listIdPaciente.length === 1) {
                location.href = '/ProjetoTcc/telaAcompanhamento/' + listIdPaciente[0];
            } else if (listIdPaciente.length === 0) {
                alert('Selecione um Paciente para acompanhar');
            } else {
                alert('Selecione apenas um Paciente para acompanhar');
            }
        });
    }

    function telaDiarioAlimentar(fields) {
        fields.click(function () {
            if (listIdPaciente.length === 1) {
                location.href = '/ProjetoTcc/telaDiarioAlimentarHome/' + listIdPaciente[0];
            } else if (listIdPaciente.length === 0) {
                alert('Selecione um Paciente para var o Diário Alimentar');
            } else {
                alert('Selecione apenas um Paciente para ver Diário Alimentar');
            }
        });
    }

    getPacientes();
    adicionarPaciente(btnAdicionarPaciente);
    apagarPaciente(btnApagarPaciente);
    gerarRelatorio(btnGerarRelatorio);
    telaAcompanhamento(brnTelaAcompanhamento);
    telaDiarioAlimentar(btnTelaDiarioAlimentar);
});