<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.UsersDao"%>
<%@ page import="sysjsp.bysj.dao.impl.UsersDaoImpl"%>
<%@ page import="java.util.List"%>
<jsp:directive.page import="sysjsp.bysj.entity.Users" />

<%
	/*�����ַ���*/
	request.setCharacterEncoding("GBK");
	
	/*��ȡ����*/
	int p = request.getParameter("p") == null ? 1 : Integer.parseInt(request.getParameter("p"));
	UsersDao userDao = new UsersDaoImpl();
	List list = userDao.findUsersList(p);
	
	int last=(p>1)?p-1:p;
	int next=(list.size()==20)?p+1:p;
%>
<html>
	<head>

		<title>�û�����</title>

		<link rel="stylesheet" type="text/css" href="../styles/admin.css">

	</head>

	<body>
	<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
      <tr>
        <td colspan="3" class="header"> �û����� </td>
      </tr>
      <tr>
        <td width="37%" align="center" bgcolor="#CCCCFF"><b>�û���</b> </td>
        <td width="39%" align="center" bgcolor="#CCCCFF"><b>��ݴ���</b> </td>
        <td width="24%" align="center" bgcolor="#CCCCFF"><b>ɾ��</b> </td>
      </tr>
      <%--��ʼ--%>
      <%
					for (int i = 0; i < list.size(); i++) {
					Users u = (Users) list.get(i);
			%>
      <tr>
        <td rowspan="1" align="center" bgcolor="#FFFFFF"><%=u.getUserName()%> </td>
        <td rowspan="1" align="center" bgcolor="#FFFFFF"><%=u.getStatus()%> </td>
        <td rowspan="1" align="center" bgcolor="#FFFFFF"><a href="doDeleteUser.jsp?userId=<%=u.getUserId() %>">ɾ��</a> </td>
      </tr>
      <%
				}
				%>
      <%--����--%>
      <tr>
        <td align="right" colspan="2"><a href="showUserList.jsp?p=<%=last %>">��һҳ</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="showUserList.jsp?p=<%=next %>">��һҳ</a> 
		</td>
		<td>&nbsp;</td>
      </tr>
    </table>
	</body>

</html>
