<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="sysjsp.bysj.dao.impl.NewsDaoImpl"%>
<%@ page import="syjsp.bysj.dao.NewsDao"%>

<html>
	<head>
	</head>

	<body bgcolor="#D6E0EF">

	</body>
</html>
<%
	/*�����ַ�����*/
	request.setCharacterEncoding("GBK");
	
	/*��ȡ����*/
	int newsId = Integer.parseInt(request.getParameter("newsId"));
			
	/*ҵ����*/
	NewsDao newsDao = new NewsDaoImpl();
	if (newsDao.deleteNewsByNewsID(newsId)==1) {
	%>
<script language="javascript">
	alert("ɾ���ɹ�!");
	window.location.href='manageNews.jsp';
</script>
<%
	}else{
	%>
<script language="javascript">
	alert("���ݳ���ɾ��ʧ��...");
	window.location.href='right.jsp';
</script>
<%
	}
%>
