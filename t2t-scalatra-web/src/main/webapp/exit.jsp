<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page  import="sysjsp.bysj.entity.Users"%>
<%
	//����ر����촰����ɾ����ǰ��¼�û�...û���...
	Users user = (Users) session.getAttribute("user");
	List names =(List)application.getAttribute("names");
	names.remove(user.getUserName());
%>

