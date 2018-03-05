<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="net.luculent.core.base.Charset"%>
<%
	request.setCharacterEncoding("GBK");
	String portletId=Charset.nullToEmpty(request.getParameter("portletId"));
	String portletName = (String) request.getAttribute("portletName");
%>
<div style="overflow: hidden; background-color: #ffffff">
	<iframe id="portletFrame<%=portletId%>" width="100%" height="550" frameborder="0" scrolling="no"
		src="/Liems/xslt/portal/portlets/<%=portletName %>/<%=portletName%>.jsp?portletId=<%=portletId%>">
	</iframe>
</div>
<script type="text/javascript" language="javascript">
	function afterLoad<%=portletId%>() {
		var portalHeight = document.documentElement.clientHeight - 40;
		//document.getElementById('portletFrame<%=portletId%>').style['height'] = (portalHeight - 20) + "px";
		var contentObj = document.getElementById('portletContent_<%=portletId%>');
		contentObj.firstChild.style['display'] = 'none';
	}
	afterLoad<%=portletId%>();
</script>