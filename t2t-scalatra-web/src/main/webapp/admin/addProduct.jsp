<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.ProductDao"%>
<%@ page import="sysjsp.bysj.dao.impl.ProductDaoImpl"%>
<%@ page import="sysjsp.bysj.entity.Product"%>
<%
	/*�����ַ���*/
	request.setCharacterEncoding("GBK");

	/*��ȡ����*/
	String str = request.getParameter("productId");

	/*��ʼ������*/
	String serialNumber = "";//��Ʒ���
	String name = "";//��Ʒ����
	String brand = "";//��Ʒ�̱�
	String model = "";//��Ʒ�ͺ�
	String price = "";//��Ʒ�۸�
	String picture = "";//��ƷͼƬ
	String description = "";//��Ʒ����
	String action = "add";

	if (str != null) {//��������ݴ�����˵����Ҫ�����޸ķ��������
		int productId = Integer.parseInt(str);
		ProductDao productDao = new ProductDaoImpl();// ʵ����ProductDao
		Product product = productDao.findProductByProductID(productId);
		//����Ʒ��ֵ
		productId = product.getProductID();
		serialNumber = product.getSerialNumber();
		name = product.getName();
		brand = product.getBrand();
		model = product.getModel();
		price = product.getPrice() + "";
		picture = product.getPicture();
		description = product.getDescription();
		action = "update";
	}
%>
<html>
	<head>

		<title>�����Ʒ</title>

		<link rel="stylesheet" type="text/css" href="../styles/admin.css">

		<script type="text/javascript">
		function checkForm() {
			with(document.form1){
				if (txtSerialNumber.value == "") {
					alert("��Ʒ��Ų���Ϊ��");
					txtSerialNumber.focus();
					return false;
				} 
				if (txtName.value == "") {
				 	txtName.focus();
					alert("��Ʒ���Ʋ���Ϊ��");
					return false;
				} 
				if (txtBrand.value == "") {
					alert("��Ʒ�̱겻��Ϊ��");
					txtBrand.focus();
					return false;
				}  
				if (txtModel.value == "") {
					alert("��Ʒ�ͺŲ���Ϊ��");
					txtModel.focus();
					return false;
				}  
				if (txtPrice.value == "") {
					alert("��Ʒ�۸���Ϊ��");
					txtPrice.focus();
					return false;
				} 
				 if (txtPicture.value == "") {
					alert("��ƷͼƬ����Ϊ��");
					txtPicture.focus();
					return false;
				}  
				if (txtDescription.value == "") {
					alert("��Ʒ���ܲ���Ϊ��");
					txtDescription.focus();
					return false;
				} 
				 if (isNaN(document.form1.txtPrice.value)) {
					alert("��Ʒ�۸����벻��ȷ");
					txtPrice.select();
					return false;
				}
				return true;
			}
		}
		
		//�س�����
	function changeFocus(){
		if(event.srcElement.type!=""&&event.keyCode==13&&event.srcElement.type!="button"&&event.srcElement.type!="submit"){
			event.keyCode=9;
		}
	}
	document.onkeydown=changeFocus;
	</script>

	</head>
	<body>
		<form name="form1"
			action="doAddProduct.jsp?productId=<%=str%>&action=<%=action%>"
			method="post" onSubmit="return checkForm();">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<tr>
					<td colspan="12" class="header">
						�����Ʒ��Ϣ
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ��ţ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtSerialNumber" size="34"
							value=<%=serialNumber%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ���ƣ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtName" size="34" value=<%=name%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ�̱꣺
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtBrand" size="34" value=<%=brand%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ�ͺţ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtModel" size="34" value=<%=model%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ�۸�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtPrice" size="34" value=<%=price%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��ƷͼƬ��
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="text" name="txtPicture" size="34" value=<%=picture%>>
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						��Ʒ���ܣ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<textarea rows="5" cols="60" name="txtDescription"><%=description%></textarea>
					</td>
				</tr>


				<tr>
					<td bgcolor="#FFFFFF"></td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input name="btnSub" type="submit" class="mouseOutStyle"
							id="btnSub" onMouseOver="this.className='mouseOverStyle'"
							onMouseOut="this.className='mouseOutStyle'" value="�� ��">
						&nbsp;&nbsp;
						<input name="btnReset" type="reset" class="mouseOutStyle"
							id="btnReset" onMouseOver="this.className='mouseOverStyle'"
							onMouseOut="this.className='mouseOutStyle'" value="�� ��">
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>
