<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.ProductDao"%>
<%@ page import="sysjsp.bysj.entity.Product"%>
<%@ page import="sysjsp.bysj.dao.impl.ProductDaoImpl"%>

<%
		try {
		/*�����ַ�����*/
		request.setCharacterEncoding("GBK");

		/*��ȡ����*/
		int productID = Integer.parseInt(request.getParameter("productID"));
		
		/*ʵ����ProductDao*/
		ProductDao productDao = new ProductDaoImpl();

		/*ҵ����*/
		Product product = productDao.findProductByProductID(productID);
%>
<html>
	<head>

		<title>��ϸ����</title>
		<script type="text/JavaScript" src="js/jquery-1.3.1.js"></script>
		<script type="text/JavaScript">
			$(function(){
			var x = 25;
			var y = -25;
			$("a.tooltip").mouseover(function(e){
				this.myTitle = this.title;
				var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
				var tooltip = "<div id='tooltip'><img style='width:230px;height:230px;' src='"+ this.href +"' alt='��ƷԤ��ͼ'/>"+imgTitle+"<\/div>"; //���� div Ԫ��
				$("body").append(tooltip);	//����׷�ӵ��ĵ���						 
				$("#tooltip")
					.css({
						"top": (e.pageY+y) + "px",
						"left":  (e.pageX+x)  + "px"
					}).show(1000);	  //����x�����y���꣬������ʾ
			}).mouseout(function(){
				$("#tooltip").remove();	 //�Ƴ� 
			}).mousemove(function(e){
				$("#tooltip")
					.css({
						"top": (e.pageY+y) + "px",
						"left":  (e.pageX+x)  + "px"
					});
			});
		})
		</script>
		<link href="styles/css.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<table width="799" border="0" align="center" cellpadding="0"
			cellspacing="0" class="n">
			<tr>
				<td colspan="2" align="left" valign="top">
					<%@ include file="top.jsp"%>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="left" valign="top">
					&nbsp;
					<a href="index.jsp" class="dong05">��ҳ</a><font
						style="font-size: 12px; color: red;">&gt;&gt;</font><a
						href="showProductList.jsp" class="dong05">��Ʒչʾ</a><font
						style="font-size: 12px; color: red;">&gt;&gt;</font><a href="#"
						class="dong05">��Ʒ��Ϣ</a>
				</td>
			</tr>
			<tr>
				<td width="156" align="center" valign="top"
					background="image/cg5.jpg" bgcolor="#f4f4f4">
					<%@include file="left.jsp"%>
				</td>
				<td width="643" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="621" border="0" cellpadding="0" cellspacing="6">
									<tr>
										<td width="143" align="center" valign="top">
											<a class="tooltip" href="image/<%=product.getPicture()%>" title="<p>����: <%=product.getName() %><p>����: <%=product.getBrand() %>">
												<img src="image/<%=product.getPicture()%>" width="125" height="102" border="0">
											</a>
										</td>
										<td width="462">
											<table width="100%" border="1" align="center" cellpadding="0"
												cellspacing="1" bordercolor="#999999">
												<tr>
													<td width="31%" height="23" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														&nbsp;��Ʒ���:
													</td>
													<td width="69%" align="center" valign="middle" class="g01">
														<%=product.getSerialNumber()%>
													</td>
												</tr>
												<tr>
													<td height="22" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														��Ʒ����:
													</td>
													<td align="center" valign="middle" class="g01">
														<%=product.getName()%>
														<br>
													</td>
												</tr>
												<tr>
													<td height="22" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														��ƷƷ��:
													</td>
													<td align="center" valign="middle" class="g01">
														<%=product.getBrand()%>
													</td>
												</tr>
												<tr>
													<td height="22" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														��Ʒ�ͺ�:
													</td>
													<td align="center" valign="middle" class="g01">
														<%=product.getModel()%>
														&nbsp;
													</td>
												</tr>
												<tr>
													<td height="22" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														��Ʒ�۸�:
													</td>
													<td align="center" valign="middle" class="g01">
														<%=product.getPrice()%>
													</td>
												</tr>
												<tr>
													<td height="22" align="center" valign="middle"
														bgcolor="#f4f4f4" class="g01">
														��Ʒ����:
													</td>
													<td align="center" valign="middle" class="g01">
														<%=product.getDescription()%>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="72" align="right" valign="top">
								<p>
									<br>
									<img src="image/n10.jpg" width="165" height="72" />
								</p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="2" colspan="2" align="center" valign="top"
					background="image/cg5.jpg" bgcolor="#f4f4f4">
					<%@ include file="bottom.jsp"%>
				</td>
			</tr>
		</table>
	</body>
</html>
<%
		} catch (Exception e) {
		System.out.println(e.getMessage());
		response.sendRedirect("showProductList.jsp");
	}
%>
