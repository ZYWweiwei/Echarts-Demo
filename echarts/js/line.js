function getLine1Option(data){
    var colorDefault = ['#3791d3', '#ffaf00', '#54b5aa', '#800000', '#3f89ca', '#53931b', '#e78b2c', '#e8c532', '#e40012', '#7333bd', '#d43ef1', '#929dda', '#3246b6', '#3e7abc'];
    var colorDefaultRgbaTo = ['rgba(55,145,211,.6)', 'rgba(255,175,0,.6)', 'rgba(84,181,170,.6)'];
    var colorDefaultRgbaFrom = ['rgba(55,145,211,.2)', 'rgba(255,175,0,.2)', 'rgba(84,181,170,.2)'];
    var valArr = data.val;
    var seriesArr = [];
    for(var i = 0; i < valArr.length; i++){
        var areaStyle;
        if(data.showAreaShadow === false){
            areaStyle = {};
        }else{
            areaStyle = {
                normal:{
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: colorDefaultRgbaTo[i]
                    }, {
                        offset: 0.8,
                        color: colorDefaultRgbaFrom[i]
                    }], false),
                    shadowColor: 'rgba(0, 0, 0, 0.1)',
                    shadowBlur: 10
                }
            };
        }
        seriesArr.push({
            name: data.legend[i],
            type: 'line',
            smooth:true,
            symbolSize:6,
            data:valArr[i],
            symbol:'circle',
            itemStyle:{
                normal:{
                    color:colorDefault[i],
                    // borderColor: colorDefaultRgbaFrom[i],
                    // borderWidth: 5
                }
            },
            areaStyle: areaStyle
        });
    }

    var option = {
        title: {
            text: data.title,
            left: -5,
            top: 5,
            textStyle: {
                color: '#3b92e2',
                fontWeight: 'normal',
                fontSize: 14
            }
        },
        grid:{
            left: 5,
            top: 40,
            bottom: 15,
            right: 10,
            containLabel:true
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            show: true,
            //icon: 'circle',
            itemWidth: 18,
            itemHeight: 10,
            data: data.legend,
            top: 5,
            right: 0,
            textStyle: {
                fontSize: 12,
                color: '#999999'
            }
        },
        xAxis: {
            data: data.xAxisVal,
            boundaryGap: false,
            axisLabel: {
                textStyle: {
                    color: '#aaaaaa'
                }
            },
            axisLine: {
                lineStyle: {
                    color: '#BFBFBF'
                }
            },
            axisTick: {
                show: false
            }
        },
        yAxis: {
            boundaryGap: ['20%', '5%'],
            scale: true,
            splitNumber: 2,
            axisLabel: {
                textStyle: {
                    color: '#aaaaaa'
                }
            },
            splitLine:{
                show: true,
                lineStyle:{
                    color:'#e8e8e8'
                }
            },
            axisLine: {
                lineStyle: {
                    color: '#BFBFBF'
                }
            },
            axisTick: {
                show: false
            }
        },
        series: seriesArr
    };
    return option;
}