<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="syjsp.bysj.dao.*"%>
<%@ page import="sysjsp.bysj.dao.impl.*"%>
<%@ page import="sysjsp.bysj.entity.*"%>
<%
	request.setCharacterEncoding("GBK");

	String txtUserName = request.getParameter("txtUserName");
	String txtPassword = request.getParameter("txtPassword");

	UsersDao userDao = new UsersDaoImpl();
	Users user = userDao.findUserByUserName(txtUserName);
	String str = "";
	if (user != null) {//�ж��Ƿ��������Ϊname���û�
		if (user.getPassword().equals(txtPassword)) {//�û������Ƿ�ƥ��
			if (user.getStatus() == 0) {//�Ƿ��ǹ���Ա
				session.setAttribute("userAdmin", user);//���û���ӵ�session��
				response.sendRedirect("admin/index.jsp");//����main.jspҳ��
				return;
			} else {
				str = "�Բ���!�㲻�ǹ���Ա, ��¼ʧ��...";
			}
		} else {
				str = "���벻��ȷ,��¼ʧ��...";
		}
	} else {
		str = "�û���������,��¼ʧ��...";
	}
%>
<html>
	<head>


	</head>
	<body onLoad="run()">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<table width="459" border="0" align="center">
			<tr>
				<td width="128">
					<img src="image/haha.gif" width="128" height="128" />
				</td>
				<td width="315">
					<div
						style="color: #FF0000;	font-size: 12px;font-weight: bold;font-family: "����";">
						<%=str%>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<a href="#" onclick="window.history.go(-1);return false;" style="color:#FF0000; font-size: 12px;">���̷���</a>
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
		window.history.go(-1);
		//	window.location="login.jsp"
	}
}
</script>
