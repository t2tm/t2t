<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.ProductDao"%>
<%@ page import="sysjsp.bysj.dao.impl.ProductDaoImpl"%>
<%@ page import="java.util.List"%>
<%@ page import="sysjsp.bysj.entity.Product"%>
<%
	/*�����ַ�����*/
	request.setCharacterEncoding("GBK");
	
	ProductDao productDao = new ProductDaoImpl();
	String action=request.getParameter("action");
	if(action!=null){
		if(productDao.deleteProductByProductID(Integer.parseInt(action))==1){
				%><script language="javascript">alert("ɾ���ɹ�!");</script><%
		}	
	}
	
	int p = request.getParameter("page") == null ? 1 : Integer
			.parseInt(request.getParameter("page"));
	List list = productDao.findProductList(p);
	int last = (p == 1) ? p : p - 1;
	int next = (list.size() == 5) ? p + 1 : p;
%>

<html>
	<head>
		<title>��Ʒ����</title>
		<link rel="stylesheet" type="text/css" href="../styles/admin.css">
	</head>

	<body bgcolor="#D6E0EF">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			<tr>
				<td colspan="7" class="header">
					��Ʒ����				</td>
			</tr>
			<tr>
				<td align="center" bgcolor="#CCCCFF">
					<b>��Ʒ���</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>��Ʒ����</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>��Ʒ�̱�</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>��Ʒ�ͺ�</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>��Ʒ�۸�</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>�޸�</b>				</td>
				<td align="center" bgcolor="#CCCCFF">
					<b>ɾ��</b>				</td>
			</tr>


			<%
					for (int i = 0; i < list.size(); i++) {
					Product product = (Product) list.get(i);
			%>
			<tr>
				<td align="center" bgcolor="#FFFFFF">
					<%=product.getSerialNumber()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<%=product.getName()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<%=product.getBrand()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<%=product.getModel()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<%=product.getPrice()%>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<a href="addProduct.jsp?productId=<%=product.getProductID() %>">�޸�</a>				</td>
				<td align="center" bgcolor="#FFFFFF">
					<a href="manageProduct.jsp?action=<%=product.getProductID() %>">ɾ��</a>				</td>
			</tr>

			<%
			}
			%>

			<tr>
				<td colspan="5" align="right">
					<a href="manageProduct.jsp?page=<%=last%>">��һҳ</a>|
					<a href="manageProduct.jsp?page=<%=next%>">��һҳ</a>				</td>
				<td></td><td></td>
			</tr>
		</table>
	</body>

</html>
