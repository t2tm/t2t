<%@ page language="java" pageEncoding="gbk"%>
<%@ page import="sysjsp.bysj.dao.impl.RevertDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Revert"%>
<%@ page import="syjsp.bysj.dao.RevertDao"%>
<%
	/*�����ַ�����*/
	request.setCharacterEncoding("GBK");
	
	/*��ȡ����*/
	//����ID
	int messageID = request.getParameter("messageId")==null?1:Integer.parseInt(request.getParameter("messageId"));
	//�ظ�����
	String title = request.getParameter("txtTitle");
	//�ظ�����
	String content = request.getParameter("txtContent");
	//�ظ���
	String name = request.getParameter("txtName");

	/*ҵ����*/
	RevertDao revertDao = new RevertDaoImpl();
	Revert revert = new Revert();
	revert.setContent(content);
	revert.setMessageID(messageID);
	revert.setName(name);
	revert.setTitle(title);

	if (revertDao.addReply(revert) == 1) {
		response.sendRedirect("revertMessage.jsp?p=1&messageId="+messageID);
	}else{
		response.sendRedirect("messageBoard.jsp.jsp");
	}
%>
