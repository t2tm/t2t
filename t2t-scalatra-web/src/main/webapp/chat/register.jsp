<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=gb2312"%>

<html>
	<head>

		<title>ע��ҳ��</title>
		<script language="javascript">
	function checkForm(){
		with(document.form1){
			if(txtUserName.value==""){
				alert("�û�����Ϊ��!");
				txtUserName.focus();
				return false;
			}
			if(txtPassword.value==""){
				alert("���벻��Ϊ��");
				txtPassword.focus();
				return false;
			}
			if(txtRePassword.value==""){
				alert("ȷ�����벻��Ϊ��");
				txtRePassword.focus();
				return false;
			}
			if(txtRePassword.value!=txtPassword.value){
				alert("�������벻һ��");
				txtPassword.select();
				return false;
			}
		}
		return true;
	}
	
	//�س�����
	function changeFocus(){
		if(event.srcElement.type!=""&&event.keyCode==13&&event.srcElement.type!="button"&&event.srcElement.type!="submit"){
			event.keyCode=9;
		}
	}
	document.onkeydown=changeFocus;
	</script>
		<link href="../styles/css.css" rel="stylesheet" type="text/css">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312"><style type="text/css">

</style></head>

	<body >
	<p>&nbsp;</p>
		<p>&nbsp;</p>
			<p>&nbsp;</p>
		<form action="doRegister.jsp" method="post" name="form1"
			target="_self" onSubmit="return checkForm();">
			<table width="335" height="167" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFCC"
				class="tableStyle">
				<tr>
					<td height="41" colspan="2" align="center" class="d02">
						<strong>��Աע��</strong></td>
				</tr>
				<tr>
					<td width="102" height="28" align="center" class="d02">
						��&nbsp;��&nbsp;����</td>
					<td width="215" height="25"><input name="txtUserName" type="text" id="txtUserName"
							style="font-size:12px" size="27" maxlength="20"></td>
				</tr>
				<tr>
					<td height="27" align="center" class="d02">
						��&nbsp;&nbsp;&nbsp;&nbsp;�룺					</td>
				  <td height="25"><input name="txtPassword" type="password" id="txtPassword" style="font-size:12px"size="30" maxlength="20"></td></tr>
				<tr>
					<td height="29" align="center" class="d02">
						ȷ�����룺					</td>
					<td height="25"><input name="txtRePassword" type="password" id="txtRePassword" style="font-size:12px"
							size="30" maxlength="20"></td>
				</tr>
				<tr>
					<td height="40" colspan="2" align="center">
						<label>
							<input type="submit" name="sub" value="�� ¼" class="mouseOutStyle"
								onMouseOut="this.className='mouseOutStyle'"
								onMouseOver="this.className='mouseOverStyle'">
							&nbsp;&nbsp;
							<input type="button" name="sub" value="�� ��" class="mouseOutStyle"
								onMouseOut="this.className='mouseOutStyle'"
								onMouseOver="this.className='mouseOverStyle'"
								onClick="window.close();">
						</label>
				  </td>
				</tr>
		  </table>
		    <div align="center"><a href="index.jsp" class="dong05">���ص�¼</a>
	          </div>
		</form>
	</body>
</html>
