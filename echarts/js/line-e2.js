function getLine1Option(data){
    var colorDefault = ['#ffaf00', '#3791d3', '#54b5aa', '#800000', '#3f89ca', '#53931b', '#e78b2c', '#e8c532', '#e40012', '#7333bd', '#d43ef1', '#929dda', '#3246b6', '#3e7abc'];
    var colorDefaultRgbaTo = ['rgba(55,145,211,.6)', 'rgba(255,175,0,.6)', 'rgba(84,181,170,.6)'];
    var colorDefaultRgbaFrom = ['rgba(55,145,211,.2)', 'rgba(255,175,0,.2)', 'rgba(84,181,170,.2)'];
    var valArr = data.val;
    var type = data.type;
    var seriesArr = [];
    for(var i = 0; i < valArr.length; i++){
        var itemStyle;
        if(data.showAreaShadow === false){
            itemStyle = {
                normal:{
                    color:colorDefault[i]
                }
            }
        }else{
            itemStyle = {
                normal:{
                    color:colorDefault[i],
                        areaStyle: {
                        type: 'default',
                        color: colorDefaultRgbaFrom[i]
                    }
                }
            }
        }
        itemStyle = {
            normal:{
                color:colorDefault[i]
            }
        }
        var seriesType;
        if(type[i] == 'bar'){
            seriesType = 'bar'
        }else{
            seriesType = 'line'
        }
        seriesArr.push({
            name: data.legend[i],
            type: seriesType,
            smooth:true,
            symbolSize:2,
            barWidth : 16,
            data:valArr[i],
            symbol:'circle',
            itemStyle: itemStyle
        });
    }

    seriesArr = seriesArr.reverse();

    var option = {
        title: {
            text: data.title,
            left: -5,
            y: 8,
            textStyle: {
                color: '#3b92e2',
                fontWeight: 'normal',
                fontSize: 14,
                fontFamily: 'Microsoft YaHei'
            }
        },
        grid:{
            x: 5,
            y: 35,
            x2: 5,
            y2: 20,
            //containLabel:true
            borderWidth: 0
        },
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            show: true,
            //icon: 'circle',
            data: data.legend,
            y: 12,
            x: 'right',
            textStyle: {
                fontSize: 12,
                color: '#999999'
            }
        },
        xAxis: {
            data: data.xAxisVal,
            boundaryGap: true,
            axisLabel: {
                textStyle: {
                    color: '#aaaaaa'
                }
            },
            axisLine: {
                show: false,
                lineStyle: {
                    color: '#BFBFBF'
                }
            },
            splitLine:{
                show: false
            },
            axisTick: {
                show: false
            }
        },
        yAxis: {
            type: 'value',
            splitNumber: 3,
            //nameGap: -50,
            axisLabel: {
                show: false,
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
                show: false,
                lineStyle: {
                    color: '#BFBFBF',
                    width: 0
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