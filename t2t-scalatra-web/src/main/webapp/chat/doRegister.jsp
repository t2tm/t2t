<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.UsersDao"%>
<%@ page import="sysjsp.bysj.dao.impl.UsersDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Users"%>

<%
	//�����ַ���
	request.setCharacterEncoding("GBK");

	//��ȡ����
	String userName = request.getParameter("txtUserName");
	String password = request.getParameter("txtPassword");
	
	//ҵ����
	UsersDao userDao = new UsersDaoImpl();
	Users user = new Users();
	user.setUserName(userName);
	user.setPassword(password);
	user.setStatus(1);
	
	//���ؽ��
	String str = "";
	if (userDao.findUserByUserName(userName) == null) {
		if (userDao.addUser(user) == 1) {
			response.sendRedirect("index.jsp");
			return;
		}
	} else {
		str = "�û����Ѵ���,�����ظ�,ע��ʧ��...";
	}
%>

<html>
	<head>
		<title>ע��</title>
	</head>
	<body onLoad="run()">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<table width="459" border="0" align="center">
			<tr>
				<td width="128"><img src="../image/haha.gif" width="128" height="128" /></td>
				<td width="315">
					<div
						style="color: #FF0000;	font-size: 12px;font-weight: bold;font-family: "����";">
						<%=str%>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<a href="register.jsp" style="color:#FF0000; font-size: 12px;">���̷���</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>

<script type="text/javascript">
var i=3;
var tm;
function run(){
	if(i>=0){
		i--;
		tm=setTimeout("run()",1000);
	}else{
		clearTimeout(tm);
		window.location="register.jsp"
	}
}
</script>

