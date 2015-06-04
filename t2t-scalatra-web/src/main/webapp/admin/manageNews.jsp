<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:directive.page import="sysjsp.bysj.dao.impl.NewsDaoImpl" />
<jsp:directive.page import="sysjsp.bysj.entity.News" />
<%
	request.setCharacterEncoding("GBK");
	int p = request.getParameter("p") == null ? 1 : Integer
			.parseInt(request.getParameter("p"));
	NewsDaoImpl newsDao = new NewsDaoImpl();
	List list = newsDao.findNews(p);
	int last = (p == 1) ? p : p - 1;
	int next = (list.size() == 10) ? p + 1 : p;
%>
<html>
	<head>
		<title>���Ź���</title>
		<link rel="stylesheet" type="text/css" href="../styles/admin.css">
	</head>
	<body>
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="3" class="header">
					���Ź���				</td>
			</tr>
			<tr>
				<td align="center" bgcolor="#CCCCFF">
					<b>���ű���</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>���ŷ���ʱ��</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>ɾ��</b>				</td>
			</tr>
			<%
					for (int i = 0; i < list.size(); i++) {
					News news = (News) list.get(i);
			%>
			<tr>
				<td align="center" bgcolor="#FFFFFF">
					<%=news.getTitle()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<%=news.getWriterDate()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<a href="doDeleteNews.jsp?newsId=<%=news.getNewsID()%>">ɾ��</a>				</td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="2" align="right">
					<a href="manageNews.jsp?p=<%=last%>">��һҳ</a>|
					<a href="manageNews.jsp?p=<%=next%>">��һҳ</a>				</td>
			    <td align="right">&nbsp;</td>
			</tr>
		</table>
	</body>

</html>
