$(document).ready(function () {
    // const listDiarioAlimentar = getAllDiarioAlimentar();
    const listDiarioAlimentar = [
        {
            title: 'All Day Event',
            start: '2017-11-01'
        },
        {
            title: 'Long Event',
            start: '2017-11-07',
            end: '2017-11-10'
        },
        {
            id: 999,
            title: 'Repeating Event',
            start: '2017-11-09T16:00:00'
        },
        {
            id: 999,
            title: 'Repeating Event',
            start: '2017-11-16T16:00:00'
        },
        {
            title: 'Conference',
            start: '2017-11-11',
            end: '2017-11-13'
        },
        {
            title: 'Meeting',
            start: '2017-11-12T10:30:00',
            end: '2017-11-12T12:30:00'
        },
        {
            title: 'Lunch',
            start: '2017-11-12T12:00:00'
        },
        {
            title: 'Meeting',
            start: '2017-11-12T14:30:00'
        },
        {
            title: 'Dinner',
            start: '2017-11-12T20:00:00'
        },
        {
            title: 'Birthday Party',
            start: '2017-11-13T07:00:00'
        },
        {
            title: 'Click for Google',
            url: 'http://google.com/',
            start: '2017-11-28'
        }
    ];

    const test = () => {
        const listEvents = [];

        for (let i in listDiarioAlimentar) {
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Desjejum',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Colacao',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Almoço',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Lanche',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Jantar',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Ceia',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
            listEvents.push({
                id: listDiarioAlimentar[i].id,
                title: 'Fora de Hora',
                start: colocarMascaraData(listDiarioAlimentar[i]),
                end: colocarMascaraData(listDiarioAlimentar[i]),
                url: '',
            });
        }

        return listEvents;
    };

    const initialLocaleCode = 'pt-br';

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

            location.href = '/ProjetoTcc/telaDiarioAlimentar/cadastrar/' + ano + mes + dia;
        },
        events: listDiarioAlimentar,
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

    function colocarMascaraData(data) {
        const ano = data.substring(0, 3);
        const mes = data.substring(4, 5);
        const dia = data.substring(6, 7);

        data = ano + '-' + mes + '-' + dia;

        return data;
    }

    function getAllDiarioAlimentar() {

        $.ajax({
            url: '/ProjetoTcc/getAllDiarioAlimentar/{idDiarioAlimentar}',
            type: 'GET',
            contentType: "application/json",
            dataType: 'json',
            success: function (data) {
                if (data.codigo !== 0) {
                    alert(data.mensagem);
                    location.href = '/ProjetoTcc/sairSistema';
                    return false;
                } else {
                    return data.listaObjetos;
                    ;
                }
            }
        });
    }
});