<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ page import="sysjsp.bysj.entity.Users"%>
<%
	/*�����ַ���*/
	request.setCharacterEncoding("GBK");
	Users user = (Users) session.getAttribute("userAdmin");
	System.out.println(user);
	if(user==null){
		return;
	}
%>

<html>
	<head>

		<title>My JSP 'left.jsp' starting page</title>


		<link rel="stylesheet" type="text/css" href="../styles/admin.css">

		<script type="text/javascript">
		if (document.getElementById){ 
			document.write('<style type="text/css">\n');
			document.write('.submenu{display: none;}\n');
			document.write('</style>\n');
		}
		function SwitchMenu(obj){
			if(document.getElementById){
				var el = document.getElementById(obj);
				var ar = document.getElementById("masterdiv").getElementsByTagName("span"); 
				if(el.style.display != "block"){ 
					for (var i=0; i<ar.length; i++){
						if (ar[i].className=="submenu") 
						ar[i].style.display = "none";
					}
					el.style.display = "block";
				}else{
					el.style.display = "none";
				}
			}
		}
		function killErrors() {
			return true;
		}
		window.onerror = killErrors;
	</script>
		<style type="text/css">
<!--
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
	line-height: 25px;
}
-->
    </style>
	</head>

	<body topmargin="0" leftmargin="2" rightmargin="2" bottommargin="2"
		style="background-color: #698CC3">
		<div id="masterdiv">
			<table border="0" width="158" id="table1" cellpadding="4"
				style="border-collapse: collapse">
				<tr>
					<td>
						<font color="#FFFFFF"><b>ϵͳ��̨�������</b> </font>
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							<font color="#FFFFFF">[<a target="_parent"
								href="loginOut.jsp"><font color="#FFFFFF">��ȫ�˳�</font> </a>] [<a
								target="_blank" href="../index.jsp"><font color="#FFFFFF">�鿴��ҳ</font>
							</a>]</font>
					</td>
				</tr>
			</table>
			<div class="menutitle" onClick="SwitchMenu('sub1')">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="STYLE1">ϵͳ����</span>
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub1">
				<table cellspacing="1" cellpadding="4" width="158"
					class="tableborder">

					<%--��ʼ--%>
					<%
						if (user.getUserId() == 1) {
					%>
					<TR class=altbg1>
						<TD height=32 width="100%" align="center" bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addManager.jsp">��ӹ���Ա</a>
						</TD>
					</TR>
					<%
					} 
					%>
					<%--����--%>

					<TR class=altbg1>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="showUserList.jsp">�û�����&nbsp;&nbsp;</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick="SwitchMenu('sub8')">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="STYLE1">&nbsp;���Ź��� </span>
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub8">
				<table cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addNews.jsp">�������</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="manageNews.jsp">��������</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick="SwitchMenu('sub3')">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="STYLE1">��Ʒ����</span>
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub3">
				<table cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addProduct.jsp">�����Ʒ</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="manageProduct.jsp">������Ʒ</a>
						</TD>
					</TR>
				</table> </span>

		</div>

	</body>

</html>
