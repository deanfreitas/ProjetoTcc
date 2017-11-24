$(document).ready(function () {
    new Chartist.Line('.ct-chart', {
        labels: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
        series: [
            [2, 3, 2, 2, 3, 3, 3],
        ]
    }, {
        fullWidth: true,
        chartPadding: {
            right: 60
        }
    });

    const data = {
        labels: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
        series: [1300, 890, 1040, 1400, 980, 1350, 732,]
    };

    const options = {
        labelInterpolationFnc: function (value) {
            return value[0]
        }
    };

    const responsiveOptions = [
        ['screen and (min-width: 640px)', {
            chartPadding: 30,
            labelOffset: 100,
            labelDirection: 'explode',
            labelInterpolationFnc: function (value) {
                return value;
            }
        }],
        ['screen and (min-width: 1024px)', {
            labelOffset: 80,
            chartPadding: 20
        }]
    ];

    new Chartist.Pie('.ct-chart2', data, options, responsiveOptions);

    function init() {
        const ctx = $("#myChart").get(0).getContext("2d");

        const data = {
            // labels onde ficara as datas das consultas, que estará armazenando no banco de dados
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
                {
                    fillColor: "rgba(151,187,205,0.5)",
                    strokeColor: "rgba(151,187,205,1)",
                    pointColor: "rgba(151,187,205,1)",
                    pointStrokeColor: "#fff",

                    // valores do grafico que vamos representar, como peso do paciente, que estará
                    // armazenando no banco de dados
                    data: [20, 48, 40, 19, 96, 27, 100]
                }
            ]
        };

        const obj = {
            type: 'line',
            data: data,
            options: {}
        };

        new Chart(ctx, obj);
    }

    init();
});