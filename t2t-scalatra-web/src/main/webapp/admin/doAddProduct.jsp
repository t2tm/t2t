<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="sysjsp.bysj.entity.Product"%>
<%@ page import="syjsp.bysj.dao.ProductDao"%>
<%@ page import="sysjsp.bysj.dao.impl.ProductDaoImpl"%>
<html>
	<head>
	</head>

	<body bgcolor="#D6E0EF">

	</body>
</html>
<%
	/*�����ַ�����*/
	request.setCharacterEncoding("GBK");

	ProductDao productDao = new ProductDaoImpl();

	/*��ȡ����*/
	System.out.print(request.getParameter("productId")==null);
	
	String action = request.getParameter("action");
	String serialNumber = request.getParameter("txtSerialNumber");//��Ʒ���
	String name = request.getParameter("txtName");//��Ʒ����
	String brand = request.getParameter("txtBrand");//��Ʒ�̱�
	String model = request.getParameter("txtModel");//��Ʒ�ͺ�
	double price = Double.parseDouble(request.getParameter("txtPrice"));//��Ʒ�۸�
	String picture = request.getParameter("txtPicture");//��ƷͼƬ
	String description = request.getParameter("txtDescription");//��Ʒ����

	Product product = new Product();
	product.setSerialNumber(serialNumber);
	product.setName(name);
	product.setBrand(brand);
	product.setModel(model);
	product.setPrice(price);
	product.setPicture(picture);
	product.setDescription(description);
	
	/*ҵ����*/
	if (action.equals("add")) {
		if (productDao.addProduct(product) == 1) {
					%>
<script language="javascript">
	alert("��ӳɹ�!");
	window.location.href='manageProduct.jsp';
</script>
<%
			//response.sendRedirect("manageProduct.jsp");
		}else{
					%>
<script language="javascript">
	alert("���ݿ����������ʧ��!");
	window.location.href='addProduct.jsp';
</script>
<%
		}
	} else {
		int productId = Integer.parseInt(request.getParameter("productId"));
		product.setProductID(productId);
		if (productDao.updateProductByProductID(product) == 1) {
					%>
<script language="javascript">
	alert("�޸ĳɹ�!");
	window.location.href='manageProduct.jsp';
</script>
<%
			//response.sendRedirect("manageProduct.jsp");
		}else{
					%>
<script language="javascript">
	alert("���ݿ��������޸�ʧ��!");
	window.location.href='manageProduct.jsp';
</script>
<%
		}
	}
%>
