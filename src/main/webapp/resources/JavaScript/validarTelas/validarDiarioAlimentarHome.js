$(document).ready(function () {
    const url = window.location.href;
    const dataDiarioAlimentar = url.substring(url.lastIndexOf('/') + 1);
    const initialLocaleCode = 'pt-br';

    const getAllDiarioAlimentar = $.ajax({
        url: '/ProjetoTcc/getAllDiarioAlimentar/' + dataDiarioAlimentar,
        type: 'GET',
        contentType: "application/json",
        dataType: 'json',
    });

    const calendar = $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listMonth'
        },
        defaultDate: '2017-11-12',
        locale: initialLocaleCode,
        buttonIcons: false, // show the prev/next text
        weekNumbers: true,
        navLinks: true, // can click day/week names to navigate views
        editable: true,
        firstDay: 0,
        defaultView: 'month',
        eventLimit: true, // allow "more" link when too many events
        selectable: true,
        selectHelper: true,
        eventClick: (event, jsEvent, view) => {

        },
        select: (start, end, allDay) => {
            const data = end.toDate();

            const ano = data.getFullYear();
            let dia = data.getDate();
            let mes = parseInt(data.getMonth()) + 1;

            if (dia.toString().length < 2) {
                dia = "0" + dia;
            }

            if (mes.toString().length < 2) {
                mes = "0" + mes;
            }

            location.href = '/ProjetoTcc/telaDiarioAlimentar/cadastrar/' + ano + '-' + mes + '-' + dia;
        },
        events: (start, end, timezone, callback) => {
            getAllDiarioAlimentar.done(function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);
                    location.href = '/ProjetoTcc/sairSistema';
                    return false;
                }

                const listDiarioAlimentar = data.listaObjetos;
                const listEvents = [];

                if (listDiarioAlimentar.length <= 0) {
                    callback(listEvents);
                }

                for (let i in listDiarioAlimentar) {
                    listEvents.push({
                        id: listDiarioAlimentar[i].desjejum.id,
                        title: 'Desjejum',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].desjejum.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].desjejum.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].colacao.id,
                        title: 'Colacao',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].colacao.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].colacao.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].almoco.id,
                        title: 'Almoço',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].almoco.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].almoco.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].lanche.id,
                        title: 'Lanche',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].lanche.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].lanche.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].jantar.id,
                        title: 'Jantar',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].jantar.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].jantar.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].ceia.id,
                        title: 'Ceia',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].ceia.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].ceia.horario)),
                        url: '',
                    });
                    listEvents.push({
                        id: listDiarioAlimentar[i].foraHora.id,
                        title: 'Fora de Hora',
                        start: colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].foraHora.horario),
                        end: somarMinutos(colocarMascaraData(listDiarioAlimentar[i].dData) + 'T' + colocarMascaraHora(listDiarioAlimentar[i].foraHora.horario)),
                        url: '',
                    });
                }
                callback(listEvents);
            });
        },
    });

    // build the locale selector's options
    $.each($.fullCalendar.locales, function (localeCode) {
        $('#locale-selector').append(
            $('<option/>')
                .attr('value', localeCode)
                .prop('selected', localeCode === initialLocaleCode)
                .text(localeCode)
        );
    });

    // when the selected option changes, dynamically change the calendar option
    $('#locale-selector').on('change', function () {
        if (this.value) {
            calendar.fullCalendar('option', 'locale', this.value);
        }
    });

    function somarMinutos(date) {
        const newDate = new Date(date);
        newDate.setMinutes(newDate.getMinutes() + 30);

        return newDate;
    }

    function colocarMascaraHora(time) {
        const pattern = /^([0-9]{2}):([0-9]{2}):([0-9]{2})$/;

        if (pattern.test(time)) {
            return time;
        }

        const timeFormatada = time.replace(/\W/g, "");
        const hora = timeFormatada.substring(0, 2);
        const minutos = timeFormatada.substring(2, 4);
        const segundos = timeFormatada.substring(4, 6);

        time = hora + ':' + minutos + ':' + segundos;

        return time;
    }

    function colocarMascaraData(data) {
        const pattern = /^([0-9]{4})-([0-9]{2})-([0-9]{2})$/;

        if (pattern.test(data)) {
            return data;
        }

        const dataFormatada = data.replace(/\W/g, "");
        const ano = dataFormatada.substring(0, 4);
        const mes = dataFormatada.substring(4, 6);
        const dia = dataFormatada.substring(6, 8);

        data = ano + '-' + mes + '-' + dia;

        return data;
    }
});