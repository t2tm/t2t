<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	request.setCharacterEncoding("GBK");
	
	String select= request.getParameter("select");
	
	session.setAttribute("style","background-color: "+select);	
%>
<html>
	<head>
	<script type="text/javascript">
		function runChange(){ 
			document.form1.submit();
		 }
	
	</script>
	</head>

	<body onLoad="run('<%=select %>')" style="<%=(String) session.getAttribute("style")%>">
		<span class="d02"> ѡ�������:
			<form action="style.jsp" method="post" name="form1">
				<SELECT id="select" name="select" onChange="runChange()">
					<OPTION value="#FFFFFF">
						Ĭ�Ϸ��
					</OPTION>
					<OPTION value="red">
						�ۺ����
					</OPTION>
					<OPTION value="green">
						��ɫ�ش�
					</OPTION>
					<OPTION value="blue">
						��ɫ����
					</OPTION>
				</SELECT>
			</form> </span>
		<br>
	</body>
	
		<script type="text/javascript">
		function run(st){ 
			with(document.form1){
			if(st=="#FFFFFF")
				select.options[0].selected="selected";
			if(st=="red")
				select.options[1].selected="selected";
			if(st=="green")
				select.options[2].selected="selected";
			if(st=="blue")
				select.options[3].selected="selected";
			}
		 }
	</script>
</html>
