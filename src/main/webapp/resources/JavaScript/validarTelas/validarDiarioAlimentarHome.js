$(document).ready(function() {
    const initialLocaleCode = 'pt-br';

    $('#calendar').fullCalendar({
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
        eventLimit: true, // allow "more" link when too many events
        events: [
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
                title: 'Happy Hour',
                start: '2017-11-12T17:30:00'
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
        ]
    });

    // build the locale selector's options
    $.each($.fullCalendar.locales, function(localeCode) {
        $('#locale-selector').append(
            $('<option/>')
                .attr('value', localeCode)
                .prop('selected', localeCode === initialLocaleCode)
                .text(localeCode)
        );
    });

    // when the selected option changes, dynamically change the calendar option
    $('#locale-selector').on('change', function() {
        if (this.value) {
            $('#calendar').fullCalendar('option', 'locale', this.value);
        }
    });
});