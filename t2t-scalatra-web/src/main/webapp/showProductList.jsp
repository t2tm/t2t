<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="syjsp.bysj.dao.*"%>
<%@ page import="sysjsp.bysj.dao.impl.ProductDaoImpl"%>
<%@ page import="java.util.List"%>
<%@ page import="sysjsp.bysj.entity.Product"%>
<%
	/*�����ַ�����*/
	request.setCharacterEncoding("gbk");

	/*�õ�����*/
	int p = request.getParameter("page") == null ? 1 : Integer
			.parseInt(request.getParameter("page"));//���Ҫ��ʾ��ҳ��

	/*ҵ����*/
	ProductDao productDao = new ProductDaoImpl();//ʵ����ProductDao����
	List list = productDao.findProductList(p);//�����Ʒ��Ϣ
	//������һҳ��ǩ
	int lastp = (p == 1) ? p : p - 1;//�����ǰҳ��Ϊ1�� ��ǰҳ����ڵ�ǰҳ��
	//������һҳ��ǩ
	int nextp = (list.size() == 5) ? p + 1 : p;//����鵽����Ϣ��10�� ��ǰҳ���1
%>
<html>
	<head>

		<title>�����б�</title>

		<link href="styles/css.css" rel="stylesheet" type="text/css">
		<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-size: 12px;
}
-->
        </style>
        
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
					&nbsp;<a href="index.jsp" class="dong05">��ҳ</a><font
						style="font-size: 12px; color: red;">&gt;&gt;</font><a href="showProductList.jsp"
						class="dong05">��Ʒչʾ</a></td>
			</tr>
			<tr>
				<td width="156" align="left" valign="top" background="image/cg5.jpg"
					bgcolor="#f4f4f4">
					<%@include file="left.jsp"%>
				</td>
				<td width="643" valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="100%" height="50" border="0" cellpadding="0"
									cellspacing="0">

									<tr align="center" height="50">
										<td height="50" colspan="2" valign="middle">

											<%
													for (int i = 0; i < list.size(); i++) {
													Product product = (Product) list.get(i);
													System.out.println(product.getPicture());
											%>
											<!--ѭ����ʾ��Ʒ-->
											<table width="637" height="81" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="143" height="75" align="center">
									<a class="tooltip" href="image/<%=product.getPicture()%>" title="<p>����: <%=product.getName() %><p>����: <%=product.getBrand() %>">
									<img src="image/<%=product.getPicture()%>" width="81" height="71" border="0"/></a>
													</td>
													<td width="478">
														<table width="97%" height="62" border="1" cellpadding="0"
															cellspacing="2" bordercolor="#999999" class="tdborder">
															<tr>
																<td width="24%" height="25" align="center"
																	valign="middle" bgcolor="#f4f4f4" class="d02">
																	��Ʒ���ƣ�
																</td>
																<td width="29%" align="center" valign="middle"
																	class="d02">
																	<a href="detailProduct.jsp?productID=<%=product.getProductID()%>"><%=product.getName()%></a>
																</td>
																<td width="23%" align="center" valign="middle"
																	bgcolor="#f4f4f4" class="d02">
																	��ƷƷ�ƣ�
																</td>
																<td width="24%" align="center" valign="middle"
																	class="d02">
																	<%=product.getBrand()%>
																</td>
															</tr>
															<tr>
																<td height="28" align="center" valign="middle"
																	bgcolor="#f4f4f4" class="d02">
																	��Ʒ�ͺţ�
																</td>
																<td align="center" valign="middle" class="d02">
																	<%=product.getModel()%>
																</td>
																<td align="center" valign="middle" bgcolor="#f4f4f4"
																	class="d02">
																	��Ʒ�۸�
																</td>
																<td align="center" valign="middle" class="d02">
																	<%=product.getPrice()%>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
											<%
											}
											%>
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td width="60%" height="13" align="center" valign="top">
								<a href="showProductList.jsp?page=<%=lastp%>" class="dong05">��һҳ</a><span
									class="STYLE1">|</span><a
									href="showProductList.jsp?page=<%=nextp%>" class="dong05">��һҳ</a>&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td height="72" align="right" valign="top">
								<img src="image/n10.jpg" width="165" height="72" border="0" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="2" colspan="2">
					<%@ include file="bottom.jsp"%>
				</td>
			</tr>
		</table>
	</body>
</html>
