$(function(){
    window.winHeight = $(window).height(); //窗口高度
    window.docHeight = $(document).height(); //文档高度

    initScrollWarp();
    initPage1Right()
});

function initPage1Right() {
    var xAxisValArr = [];
    for(var i = 0; i < 24; i++){
        if(i < 10){
            xAxisValArr.push('0'+i+':00');
        }else{
            xAxisValArr.push(i+':00');
        }
    }
    xAxisValArr = ['07','08','09','10','11','12'];
    var valArr = [];
    var valArr2 = [];
    var valArr3 = [];
    for(var i = 0; i < 6; i++){
        valArr.push(randomNumBoth(100, 1050));
        valArr2.push(randomNumBoth(100, 1050));
        valArr3.push(randomNumBoth(100, 1050));
    }
    var chart = echarts.init(document.getElementById('p1_line1'));
    chart.setOption(getLine1Option({
        val: [[4595.74, 4516.81, 4268.76, 4503.55, 4479.55, 4244.91], [4568.7, 4368.62, 4148.95, 4676.82, 4399.43, 3349.08]],
        legend: ['计划', '实际'],
        title: '发电量',
        xAxisVal: xAxisValArr,
        type: ['line', 'bar']
    }));

    var chart2 = echarts.init(document.getElementById('p1_line2'));
    chart2.setOption(getLine1Option({
        val: [[3818.26, 3736.31, 3573.47, 3770.06, 3779.54, 3641.12], [3757.4, 3555.18, 3383.87, 3856.35, 3654.34, 2795.39]],
        legend: ['计划', '实际'],
        title: '上网电量',
        xAxisVal: xAxisValArr,
        type: ['line', 'bar']
    }));
    valArr = [116464.01,117360.9,109406.54,117230.92,115447.58,111353.62];
    valArr2 = [105254.30,106152.84,95353.00,133631.70,119987.38,93687.48];
    var chart3 = echarts.init(document.getElementById('p1_line3'));
    chart3.setOption(getLine1Option({
        val: [valArr, valArr2],
        legend: ['计划', '实际'],
        title: '垃圾入厂量',
        xAxisVal: xAxisValArr,
        type: ['line', 'bar']
    }));
    
    valArr = [98484.5,97689.25,94277.5,99965,100578.75,104681.55];
    valArr2 = [104677.00,99808.00,95353.00,113860.00,100529.00,86791.00];
    var chart4 = echarts.init(document.getElementById('p1_line4'));
    chart4.setOption(getLine1Option({
        val: [valArr, valArr2],
        legend: ['计划', '实际'],
        title: '垃圾入炉量',
        xAxisVal: xAxisValArr,
        type: ['line', 'bar']
    }));
}

//获取指定范围大小的随机数
function randomNumBoth(min, max, toFixedNum) {
    var range = (max || 1000) - (min || 0);
    range = range * 1000000;
    var rand = Math.random();
    var num = Math.round(rand * range); //四舍五入
    return (min + num/1000000).toFixed(toFixedNum || 2);
}

function initScrollWarp() {
    var scrollInterval = null; //定时器对象
    var scrollTop = 0;
    $(window).scroll(function(){
        var currScrollTop = $(window).scrollTop();
        if(currScrollTop == 0){
            $("#shade_wrap_up").fadeOut(300);
            $("#shade_wrap_down").fadeIn(300);
        }else if((currScrollTop + winHeight) == docHeight){
            $("#shade_wrap_up").fadeIn(300);
            $("#shade_wrap_down").fadeOut(300);
        }else{
            if(currScrollTop > scrollTop){ // 向下滚动
                var upTag = $('#shade_wrap_up');
                if(upTag.is(':hidden')){
                    upTag.fadeIn(300);
                }
            }else if(currScrollTop < scrollTop){ // 向上滚动
                var downTag = $('#shade_wrap_down');
                if(downTag.is(':hidden')){
                    downTag.fadeIn(300);
                }
            }
        }
        scrollTop = currScrollTop;
    });
    $('#shade_wrap_up').click(function () {
        //点击上，页面滚动的位置
        var toPageTop = parseInt(scrollTop / winHeight) * winHeight;
        if($(window).scrollTop() == toPageTop){
            toPageTop = toPageTop - winHeight;
        }
        clearInterval(scrollInterval);
        function fireToTop(){
            scrollInterval = setInterval(function(){
                var toTop = $(window).scrollTop();
                if(toTop > toPageTop){
                    var cz = parseInt(toPageTop - toTop); //差值
                    var speed = Math.floor(cz / 5); //向下取整
                    $(window).scrollTop(parseInt(toTop + speed));
                }else{
                    $(window).scrollTop(toPageTop);
                    clearInterval(scrollInterval);
                }
            }, 40);
        };
        fireToTop();
    });
    $('#shade_wrap_down').click(function () {
        //点击下，页面滚动的位置
        var toPageBottom = (parseInt(scrollTop / winHeight) + 1) * winHeight;
        clearInterval(scrollInterval);
        function fireToBottom(){
            scrollInterval = setInterval(function(){
                var toBottom = $(window).scrollTop();
                //if(toBottom < toPageBottom && (toBottom + toPageBottom) != docHeight){
                if(toBottom < toPageBottom){
                    var cz = parseInt(toPageBottom - toBottom); //差值
                    var speed = Math.ceil(cz / 5); //向上取整
                    $(window).scrollTop(parseInt(toBottom + speed));
                }else{
                    $(window).scrollTop(toPageBottom);
                    clearInterval(scrollInterval);
                }
            }, 40);
        }
        fireToBottom();
    });
}



