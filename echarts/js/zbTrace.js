//Á½Æ±×·ËÝ
$('.page3_main').click(function() {
	parent.portalTrace("", 'B1BIS00006');
});
//È±ÏÝ·ÖÎö×·ËÝ
$('.page4_main').click(function() {
	parent.portalTrace("", 'B1BIS00100');
});
//Ö¸±ê×·ËÝ
$('.s1_con table td').click(function() {
	var td = $(this);
	if (td.attr('type')=='h') {
		parent.portalTrace("", 'B1RMG10087');
	} else if (td.attr('type')=='d') {
		parent.portalTrace("", 'B1RMG10083');
	}
});

$('#p1tb_scroll ul li div.p1tb_col.p1_box').each(function(index, ele) {
		switch(index) {
			case 0:{
				$(this).find('span.text').click(function(){
					parent.portalTrace("", 'B1RMG20010','14005');
				});
			}
			break;
			case 1:{
				$(this).find('span.text').click(function(){
					parent.portalTrace("", 'B1RMSSZ158');
				});
			}
			break;
			case 2:{
				$(this).find('span.text').click(function(){
					parent.portalTrace("", 'B1RMSSZ143');
				});
			}
			break;
		}
	}
);