<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="sysjsp.bysj.dao.impl.UsersDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Users"%>
<%@ page import="syjsp.bysj.dao.UsersDao"%>

<%@ include file="checkAdmin.jsp"%>

<html>
	<head>
	</head>

	<body bgcolor="#D6E0EF">

	</body>
</html>

<%
	/*�����ַ���*/
	request.setCharacterEncoding("GBK");

	/*��������*/
	String txtUserName = request.getParameter("txtUserName");
	String txtPassword = request.getParameter("txtPassword");

	/*ҵ����*/
	UsersDao userDao = new UsersDaoImpl();
	Users user = (Users) session.getAttribute("userAdmin");

	//�ж��Ƿ��������Ϊname���û�
	if (userDao.findUserByUserName(txtUserName) == null) {
		//����newһ���û�
		user = new Users();
		user.setUserName(txtUserName);
		user.setPassword(txtPassword);
		user.setStatus(0);
		//ִ������
		if (userDao.addUser(user) == 1) {
			%>
<script language="javascript">
	alert("��ӳɹ�!");
	window.location.href='showUserList.jsp';
</script>
<%
			//response.sendRedirect("showUserList.jsp");
			return;
		} else {
%>



<script language="javascript">
	alert("�����д���,���ʧ��...");
	window.location.href='addManager.jsp';
</script>

<%
	}
	} else {
%>

<script language="javascript">
	alert("�û����Ѿ�����,���ʧ��...");
	window.location.href='addManager.jsp';
</script>

<%
}
%>




