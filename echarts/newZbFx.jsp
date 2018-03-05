<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/luculent-taglib" prefix="iEas"%>
<%@ page import="net.luculent.core.base.Charset"%>
<%
	request.setCharacterEncoding("GBK");
	String portletId=Charset.nullToEmpty(request.getParameter("portletId"));
	String portletName = (String) request.getAttribute("portletName");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<!--LiemsMetasBegin-->
		<meta http-equiv=content-type content="text/html; charset=GBK" />
		<meta content="LiEMS" name="Product" />
		<meta content="6.5" name="Version" />
		<meta content="Copyright (c) 2017 by Luculent Corporation" name="Copyright" />
		<!--LiemsMetasEnd-->
		<link rel="stylesheet" href="css/animate.css"/>
    	<link rel="stylesheet" href="css/style.css"/>
	</head>
	<body>
    <div class="web-wrap" id="webContainer">
    	<div class="page1_main">
        <div class="p1_top">
            <div class="p1t_left">
                <div class="p1t_left_cot">
                    <div class="p1t_left_top">
                        <div class="p1tb_title">
                            <div class="p1box_title_text">核心指标</div>
                        </div>
                        <div class="box-scroll p1t_cat" id="p1tt_scroll">
                            <div class="bd">
                                <ul>
                                    <li>
                                        <div class="p1tt_row">
                                            <div class="p1tt_col p1_box">
                                                <div class="p1tt_col_box">
                                                    <div class="p1tt_row1" id="p1_line1"></div>
                                                    <div class="p1tt_row2">
                                                        <div class="p1tt_info">年发电量&nbsp;<span>33721.94/52082.22</span>&nbsp;万kWh</div>
                                                        <div class="p1tt_info">
                                                            <div class="pitt_con">发电完成&nbsp;<span>64.75%</span></div>
                                                            <div class="pitt_con">时间进度&nbsp;<span>100%</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="p1tt_col p1_box">
                                                <div class="p1tt_col_box">
                                                    <div class="p1tt_row1" id="p1_line2"></div>
                                                    <div class="p1tt_row2">
                                                        <div class="p1tt_info">年发电量&nbsp;<span>27847.33/43832.44</span>&nbsp;万kWh</div>
                                                        <div class="p1tt_info">
                                                            <div class="pitt_con">发电完成&nbsp;<span>63.53%</span></div>
                                                            <div class="pitt_con">时间进度&nbsp;<span>100%</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="p1tt_col p1_box">
                                                <div class="p1tt_col_box">
                                                    <div class="p1tt_row1" id="p1_line3"></div>
                                                    <div class="p1tt_row2">
                                                        <div class="p1tt_info">年入场量&nbsp;<span>129.56/134.98</span>&nbsp;万t</div>
                                                        <div class="p1tt_info">
                                                            <div class="pitt_con">入场完成&nbsp;<span>95.98%</span></div>
                                                            <div class="pitt_con">时间进度&nbsp;<span>100%</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="p1tt_col p1_box">
                                                <div class="p1tt_col_box">
                                                    <div class="p1tt_row1" id="p1_line4"></div>
                                                    <div class="p1tt_row2">
                                                        <div class="p1tt_info">年发入炉量&nbsp;<span>116.29/116.70</span>&nbsp;万t</div>
                                                        <div class="p1tt_info">
                                                            <div class="pitt_con">入炉完成&nbsp;<span>99.65%</span></div>
                                                            <div class="pitt_con">时间进度&nbsp;<span>100%</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="p1t_left_bottom" id="p1t_left_bottom">
                        <div class="p1tb_title">
                            <div class="p1box_title_text">管理信息</div>
                        </div>
                        <div class="p1tb_cot">
                            <div class="box-scroll " id="p1tb_scroll">
                                <div class="bd">
                                    <ul>
                                        <li>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box">
                                                    <div class="p1tb_col_title">
                                                        <div class="reset_line_height">
                                                            <span class="icon">
                                                                <img src="images/p1b_i1.png" alt="" />
                                                            </span>
                                                            <span class="text">我的待办</span>
                                                            <span class="more"><a href="#" onclick="javascript:void (0)">更多 >></a></span>
                                                        </div>
                                                    </div>
                                                    <div class="p1tb_col_con">
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2#炉右侧水冷螺旋，螺旋旋输送机电机观油孔损坏</span>
                                                            </div>
                                                            <div class="p1tb_row_time">01-23</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">#1炉液压站循环滤油器经常堵塞报警</span>
                                                            </div>
                                                            <div class="p1tb_row_time">01-22</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">采暖站热水循环泵进口安全阀漏水。</span>
                                                            </div>
                                                            <div class="p1tb_row_time">01-18</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box">
                                                    <div class="p1tb_col_title">
                                                        <div class="reset_line_height">
                                                            <span class="icon">
                                                                <img src="images/p1b_i2.png" alt=""/>
                                                            </span>
                                                            <span class="text">厂级生产日报</span>
                                                            <span class="more"><a href="#" onclick="javascript:void (0)">更多 >></a></span>
                                                        </div>
                                                    </div>
                                                    <div class="p1tb_col_con">
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年12月24日生产日报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">12-24</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年12月23日生产日报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">12-23</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年12月22日生产日报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">12-22</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box">
                                                    <div class="p1tb_col_title">
                                                        <div class="reset_line_height">
                                                            <span class="icon">
                                                                <img src="images/p1b_i3.png" alt=""/>
                                                            </span>
                                                            <span class="text">厂级生产月报</span>
                                                            <span class="more"><a href="#" onclick="javascript:void (0)">更多 >></a></span>
                                                        </div>
                                                    </div>
                                                    <div class="p1tb_col_con">
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年12月生产月报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">12-31</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年11月生产月报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">11-30</div>
                                                        </div>
                                                        <div class="p1tb_con_row">
                                                            <div class="p1tb_row_title">
                                                                <span class="point">.</span>
                                                                <span class="text">2017年10月生产月报</span>
                                                            </div>
                                                            <div class="p1tb_row_time">10-31</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box"></div>
                                            </div>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box"></div>
                                            </div>
                                            <div class="p1tb_col p1_box">
                                                <div class="p1tb_col_box"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="p1t_right p1_box">
                <div class="p1tb_title">
                    <div class="p1box_title_text">主要指标</div>
                </div>
                <div class="p1t_right_cot">
                    <div class="p1tr_row">
                        <div class="p1tr_title">
                            <div class="p1tr_text fl">垃圾进厂量<span>（吨）</span></div>
                            <div class="p1tr_check fr">
                                <span class="check active">昨日</span><span>&nbsp;&nbsp;</span><span class="check">本月</span><span>&nbsp;&nbsp;</span><span class="check">本年</span>
                            </div>
                        </div>
                        <div class="p1tr_cot">
                            <div class="p1tr_cot_title">
                                <div class="pct_top">
                                    <div class="pct_top_text">全厂</div>
                                    <div class="pct_top_num">3873.92</div>
                                </div>
                            </div>
                            <div class="p1tr_cot_con">
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">一期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1015.64</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">二期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1241.34</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">三期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1616.94</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="p1tr_row">
                        <div class="p1tr_title">
                            <div class="p1tr_text fl">垃圾入炉量<span>（吨）</span></div>
                            <div class="p1tr_check fr">
                                <span class="check active">昨日</span><span>&nbsp;&nbsp;</span><span class="check">本月</span><span>&nbsp;&nbsp;</span><span class="check">本年</span>
                            </div>
                        </div>
                        <div class="p1tr_cot">
                            <div class="p1tr_cot_title">
                                <div class="pct_top">
                                    <div class="pct_top_text">全厂</div>
                                    <div class="pct_top_num">3730.00</div>
                                </div>
                            </div>
                            <div class="p1tr_cot_con">
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">一期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1026.00</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">二期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1076.00</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pcc_col">
                                    <div class="p1tt_col_box">
                                        <div class="p1tt_box_right">
                                            <div class="p1tt_box_cot">
                                                <div class="p1tt_box_con">
                                                    <div class="p1tt_box_text">三期项目</div>
                                                    <div class="p1tt_box_num"><span id="">1628.00</span></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="p1_bottom" id="p1_bottom">
            <div class="p1b_title">
                <div class="p1box_title_text">环保监测</div>
                <div class="ptt_num fr">
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    日超标：<b>0</b>&nbsp;&nbsp;&nbsp;&nbsp;月超标：<b>0</b>
                </div>
            </div>
            <div class="p1b_cot">
                <div class="box-scroll p1b_scroll" id="p1b_scroll">
                    <div class="bd">
                        <ul>
                            <li>
                                <div class="s1_tab_top">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="s1_tab">
                                        <tr>
                                            <td width="90" rowspan="2" class="s1_tip"></td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">DUST(mg/Nm3)</div>
                                                <div class="s1_t2">国时<b>30</b>&nbsp;&nbsp;国日<b>20</b>&nbsp;&nbsp;欧盟<b>10</b></div>
                                            </td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">HCL(mg/Nm3)</div>
                                                <div class="s1_t2">国时<b>60</b>&nbsp;&nbsp;国日<b>50</b>&nbsp;&nbsp;欧盟<b>10</b></div>
                                            </td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">CO(mg/Nm3)</div>
                                                <div class="s1_t2">国时<b>100</b>&nbsp;&nbsp;国日<b>80</b>&nbsp;&nbsp;欧盟<b>50</b></div>
                                            </td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">SO2(mg/Nm3)</div>
                                                <div class="s1_t2">国时<b>100</b>&nbsp;&nbsp;国日<b>80</b>&nbsp;&nbsp;欧盟<b>10</b></div>
                                            </td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">NOX(mg/Nm3)</div>
                                                <div class="s1_t2">国时<b>300</b>&nbsp;&nbsp;国日<b>250</b>&nbsp;&nbsp;欧盟<b>200</b></div>
                                            </td>
                                            <td colspan="2" class="s1_line_top">
                                                <div class="s1_t1">炉膛温度(℃)</div>
                                                <div class="s1_t2">国时≥<b>850</b>&nbsp;&nbsp;国日><b></b>&nbsp;&nbsp;欧盟≥<b>850</b></div>
                                            </td>
                                            <td width="16"></td>
                                        </tr>
                                        <tr class="s1_line">
                                            <td >前1h均值</td>
                                            <td>日均值</td>
                                            <td>前1h均值</td>
                                            <td>日均值</td>
                                            <td>前1h均值</td>
                                            <td>日均值</td>
                                            <td>前1h均值</td>
                                            <td>日均值</td>
                                            <td>前1h均值</td>
                                            <td>日均值</td>
                                            <td>前1h均值</td>
                                            <td>日均值</td>
                                            <td ></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="s1_con">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="s1_tab">
                                        <tr class="s1_line2">
                                            <td width="90">#1</td>
                                            <td type='h'>2.6</td>
                                            <td type='d'>2.1</td>
                                            <td type='h'>5.5</td>
                                            <td type='d'>4.7</td>
                                            <td type='h'>0.3</td>
                                            <td type='d'>0.5</td>
                                            <td type='h'>4.9</td>
                                            <td type='d'>2.1</td>
                                            <td type='h'>96.4</td>
                                            <td type='d'>122.3</td>
                                            <td type='h'>1200</td>
                                            <td type='d'>135.2</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#2</td>
                                            <td type='h'>1.1</td>
                                            <td type='d'>3.9</td>
                                            <td type='h'>3.2</td>
                                            <td type='d'>3.3</td>
                                            <td type='h'>0.5</td>
                                            <td type='d'>1.7</td>
                                            <td type='h'>2.3</td>
                                            <td type='d'>0.4</td>
                                            <td type='h'>163.7</td>
                                            <td type='d'>132.5</td>
                                            <td type='h'>1041.5</td>
                                            <td type='d'>136.3</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#3</td>
                                            <td type='h'>1.3</td>
                                            <td type='d'>2.5</td>
                                            <td type='h'>2.6</td>
                                            <td type='d'>4.3</td>
                                            <td type='h'>0</td>
                                            <td type='d'>0.1</td>
                                            <td type='h'>7.8</td>
                                            <td type='d'>0.5</td>
                                            <td type='h'>161.5</td>
                                            <td type='d'>125.3</td>
                                            <td type='h'>1040.3</td>
                                            <td type='d'>138.8</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#4</td>
                                            <td type='h'>2.4</td>
                                            <td type='d'>2.5</td>
                                            <td type='h'>2.5</td>
                                            <td type='d'>3.8</td>
                                            <td type='h'>8.7</td>
                                            <td type='d'>6.1</td>
                                            <td type='h'>13.4</td>
                                            <td type='d'>8.2</td>
                                            <td type='h'>105.9</td>
                                            <td type='d'>119.1</td>
                                            <td type='h'>1141.2</td>
                                            <td type='d'>157.7</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#5</td>
                                            <td type='h'>3.6</td>
                                            <td type='d'>1.3</td>
                                            <td type='h'>4.6</td>
                                            <td type='d'>3.9</td>
                                            <td type='h'>12.3</td>
                                            <td type='d'>5.9</td>
                                            <td type='h'>15.6</td>
                                            <td type='d'>2.4</td>
                                            <td type='h'>122.5</td>
                                            <td type='d'>119.6</td>
                                            <td type='h'>1053.2</td>
                                            <td type='d'>144.9</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#6</td>
                                            <td type='h'>3.1</td>
                                            <td type='d'>3.7</td>
                                            <td type='h'>2.8</td>
                                            <td type='d'>1.5</td>
                                            <td type='h'>11.2</td>
                                            <td type='d'>9.3</td>
                                            <td type='h'>3.1</td>
                                            <td type='d'>0.6</td>
                                            <td type='h'>120.9</td>
                                            <td type='d'>106.5</td>
                                            <td type='h'>1073.2</td>
                                            <td type='d'>126</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#7</td>
                                            <td type='h'>1.8</td>
                                            <td type='d'>2.7</td>
                                            <td type='h'>2.6</td>
                                            <td type='d'>2.3</td>
                                            <td type='h'>3.2</td>
                                            <td type='d'>2.6</td>
                                            <td type='h'>9.5</td>
                                            <td type='d'>20.2</td>
                                            <td type='h'>109.6</td>
                                            <td type='d'>119.4</td>
                                            <td type='h'>1063.5</td>
                                            <td type='d'>138.5</td>
                                        </tr>
                                        <tr class="s1_line2">
                                            <td width="90">#8</td>
                                            <td type='h'>0.9</td>
                                            <td type='d'>3.3</td>
                                            <td type='h'>1.9</td>
                                            <td type='d'>1.5</td>
                                            <td type='h'>2.8</td>
                                            <td type='d'>4.8</td>
                                            <td type='h'>1.5</td>
                                            <td type='d'>9.6</td>
                                            <td type='h'>134.1</td>
                                            <td type='d'>126.9</td>
                                            <td type='h'>1053.9</td>
                                            <td type='d'>134.3</td>
                                        </tr>
                                    </table>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page2_main">
    </div>
    <div class="page3_main">
    </div>
		<div class="page4_main">
    </div>
</div>

<div class="shade_wrap shade_wrap_up" id="shade_wrap_up">
    <img src="images/shade_wrap_up.png" alt=""/>
</div>
<div class="shade_wrap shade_wrap_down" id="shade_wrap_down">
    <img src="images/shade_wrap_down.png" alt=""/>
</div>

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery.SuperSlide.min.js"></script>
<script src="js/echarts2/echarts-all.min.js"></script>
<script src="js/line-e2.js"></script>
<script src="js/index.js"></script>
<script src="js/zbTrace.js"></script>
	</body>
</html>
