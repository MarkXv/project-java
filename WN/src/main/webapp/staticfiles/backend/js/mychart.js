$(function () {
    var str = $("#data").val();
    var data0 = JSON.parse(str);

    var data = new Array();
    for(var i=0;i<data0.length;i++){
        data[i] = new Array();
        for(var j = 0;j<2;j++){
            data[i][0] = data0[i].name;
            data[i][1] = data0[i].clickVlnum;
        }
    }

    var dateList = data.map(function (item) {
        return item[0];
    });
    var valueList = data.map(function (item) {
        return item[1];
    });

    option = {
        // Make gradient line here
        visualMap: [{
            show: false,
            type: 'continuous',
            seriesIndex: 0,
            min: 0,
            max: 400
        }, {
            show: false,
            type: 'continuous',
            seriesIndex: 1,
            dimension: 0,
            min: 0,
            max: dateList.length - 1
        }],

        title: [{
            left: 'center',
            text: '点击量统计'
        },{
            top: '55%',
            left: 'center',
            text: '浏览量统计'
        }],
        tooltip: {
            trigger: 'axis'
        },
        xAxis: [{
            data: dateList
        }, {
            data: dateList,
            gridIndex: 1
        }],
        yAxis: [{
            splitLine: {show: false}
        }, {
            splitLine: {show: false},
            gridIndex: 1
        }],
        grid: [{
            bottom: '60%'
        }, {
            top: '60%'
        }],
        series: [{
            type: 'line',
            showSymbol: false,
            data: valueList
        }, {
            type: 'line',
            showSymbol: false,
            data: valueList,
            xAxisIndex: 1,
            yAxisIndex: 1
        }]
    };
    var myChart = echarts.init(document.getElementById("chart-panel"));
    myChart.setOption(option);
});



