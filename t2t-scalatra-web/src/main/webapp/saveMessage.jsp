<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.MessageDao"%>
<%@ page import="sysjsp.bysj.dao.impl.MessageDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Message"%>

<%
		try {
		/*�����ַ�����*/
		request.setCharacterEncoding("GBK");
		
		/*��ȡ����*/
		String title = request.getParameter("txtTitle");//���Ա���
		String content = request.getParameter("txtContent");//��������
		String name = request.getParameter("txtName");//������
		
		/*ҵ����*/
		MessageDao messageDao = new MessageDaoImpl();
		Message message = new Message();
		message.setContent(content);
		message.setName(name);
		message.setTitle(title);
		response.sendRedirect((messageDao.addMessage(message) == 1) ? "messageBoard.jsp": "newMessage.jsp");
	} catch (Exception e) {
		response.sendRedirect("index.jsp");
	}
%>
