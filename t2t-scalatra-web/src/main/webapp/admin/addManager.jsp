<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>

<html>
	<head>

		<title>��ӹ���Ա</title>

		<link rel="stylesheet" type="text/css" href="../styles/admin.css">

		<script type="text/javascript">
		function checkForm() {
			//with ���ͨ�����������ض������±���Ĵ���
			 with(document.form1){
				if (txtUserName.value == "") {
					alert("�û�������Ϊ��");
					txtUserName.focus();
					return false;
				} 
 				if (txtPassword.value == "") {
					alert("���벻��Ϊ��");
					txtPassword.focus();
					return false;
				} 
			   if (txtRePassword.value != txtPassword.value) {
					alert("��������벻һ��");
					txtPassword.focus();
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
		<form name="form1" action="doAddManager.jsp" method="post"
			onSubmit="return checkForm()">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<tr>
					<td colspan="12" class="header">
						����Ա-���
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						����Ա���ƣ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input name="txtUserName" type="text" id="txtUserName" size="34">
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���룺
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input type="password" name="txtPassword" size="34">
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						&nbsp;&nbsp;ȷ�����룺
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input name="txtRePassword" size="34" type="password">
					</td>
				</tr>


				<tr>
					<td bgcolor="#FFFFFF">
					</td>
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
