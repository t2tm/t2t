<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="sysjsp.bysj.dao.impl.NewsDaoImpl"%>
<%@ page import="syjsp.bysj.dao.NewsDao"%>
<%@ page import="sysjsp.bysj.entity.News"%>
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
	String txtTitle = request.getParameter("txtTitle");//���ű���
	String txtContent = request.getParameter("txtContent");//��������
	/*ҵ����*/
	NewsDao newsDao = new NewsDaoImpl();
	News news = new News();
	news.setContent(txtContent);
	news.setTitle(txtTitle);
	if (newsDao.addNews(news) == 1) {
	%>
<script language="javascript">
	alert("��ӳɹ�!");
	window.location.href='manageNews.jsp';
</script>
<%
		//response.sendRedirect("manageNews.jsp");
	} else {
%>
<script language="javascript">
	alert("�����д���,���ʧ��...");
	window.location.href='addProduct.jsp';
</script>
<%
}
%>
