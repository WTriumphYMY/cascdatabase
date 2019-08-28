$(function () {
    $("#pp1").draggable();
    $("#pp2").draggable();
    $("#pp3").draggable();
    // $("#newSysDlg").dialog({
    //     title: 'My Dialog',
    //     width: 400,
    //     height: 200,
    //     closed: false,
    //     cache: false,
    //     href: 'get_content.php',
    //     modal: true
    // });
    // $("#newComDlg").dialog('close');

    Highcharts.chart('linechart', {
        title: {
            text: '组件报价'
        },
        subtitle: {
            text: '数据来源：我瞎猜的'
        },
        yAxis: {
            title: {
                text: '数量'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                },
                pointStart: 2010
            }
        },
        series: [{
            name: '推力室',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
        }, {
            name: '电磁阀',
            data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
        }, {
            name: '喷管',
            data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
        }, {
            name: '高压气瓶',
            data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
        }, {
            name: '其他',
            data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
        }],
        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        }
    });

    Highcharts.chart('pinechart', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '各组件占成本比例'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [{
                name: '减压阀',
                y: 61.41,
                sliced: true,
                selected: true
            }, {
                name: '电磁阀',
                y: 11.84
            }, {
                name: '推力室',
                y: 10.85
            }, {
                name: '气瓶',
                y: 4.67
            }, {
                name: '推进剂贮箱',
                y: 4.18
            }, {
                name: '推进剂',
                y: 1.64
            }, {
                name: '排挤气体',
                y: 1.6
            }, {
                name: '管路',
                y: 1.2
            }, {
                name: '其他',
                y: 2.61
            }]
        }]
    });
});

function openNewSys() {
    $('#newSysDlg').dialog('open');
}

function openNewCom() {
    $('#newComDlg').dialog('open');
}