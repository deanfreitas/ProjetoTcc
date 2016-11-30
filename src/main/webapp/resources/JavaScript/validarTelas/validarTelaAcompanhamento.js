$(document).ready(function () {
    $.material.init();

    function init() {
        var ctx = $("#myChart").get(0).getContext("2d");

        var data = {
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
        }

        var myNewChart = new Chart(ctx).Line(data);
    }

    init();
});