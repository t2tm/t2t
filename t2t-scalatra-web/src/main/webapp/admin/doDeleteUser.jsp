<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="syjsp.bysj.dao.UsersDao"%>
<%@ page import="sysjsp.bysj.dao.impl.UsersDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Users" %>

<html>
	<head>
	</head>

	<body bgcolor="#D6E0EF">

	</body>
</html>

<%
	try{
	request.setCharacterEncoding("GBK");
	
	int userId = Integer.parseInt(request.getParameter("userId"));

	UsersDao userDao = new UsersDaoImpl();

	Users userAdmin = (Users) session.getAttribute("userAdmin");

	/*Ҫɾ���û��������Լ��Ҳ����ǳ�������Ա*/
	if (userId == userAdmin.getUserId()) {
%>
<script language="javascript">
	alert("����ɾ���Լ�,ɾ��ʧ��...");
	window.location.href='showUserList.jsp';
</script>
<%
} else if (userId == 1) {
%>
<script language="javascript">
	alert("û��Ȩ��ɾ����������Ա,ɾ��ʧ��...");
	window.location.href='showUserList.jsp';
</script>
<%
		} else {
		if (userDao.deleteUserByUserId(userId) == 1) {
%>
<script language="javascript">
	alert("ɾ���ɹ�");
	window.location.href='showUserList.jsp';
</script>
<%
	}else{
	%>
<script language="javascript">
	alert("��������,ɾ��ʧ��...");
	window.location.href='showUserList.jsp';
</script>
<%
	}
}
}catch(Exception e){
	response.sendRedirect("right.jsp");
}
%>
