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
			}
		return true;
	}
		//�س�����
	function changeFocus(){
		if(event.srcElement.type!=""&&event.keyCode==13&&event.srcElement.type!="button"&&event.srcElement.type!="submit"){
			event.keyCode=9;
		}
	}
	function closeWindow(){
		if(confirm("�Ƿ��˳�?")){
			window.close();
		}
	}
	document.onkeydown=changeFocus;
	</script>
		<link href="../styles/css.css" rel="stylesheet" type="text/css">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	</head>

	<body >
	<p>&nbsp;</p>
		<p>&nbsp;</p>
			<p>&nbsp;</p>
		<form name="form1" method="post" action="doIndex.jsp"
			onSubmit="return checkForm();">
			<table width="341" height="165" border="0" align="center" cellpadding="0"
				cellspacing="0" class="tableStyle">
				<tr>
					<td height="50" colspan="3" align="center" class="d07">
						<span class="d02"><strong>��Ա��¼;</strong>						</span>					</td>
				</tr>
				<tr>
					<td width="88" height="33" align="center"  class="d02">
						�����ʺ�:					</td>
					<td width="251" colspan="2" >
						<input name="txtUserName" type="text" id="txtUserName" size="27"
							style="font-size:12px">
				  </td>
				</tr>
				<tr>
					<td height="32" align="center" class="d02">
						��������:					</td>
					<td colspan="2" >
						<label>
							<input name="txtPassword" type="password" id="txtPassword"
								size="30" style="font-size:12px">
						</label>
				  </td>
				</tr>
				<tr>
				  <td height="11" colspan="3" align="right" >				  </td>
				</tr>
				<tr>
					<td height="37" colspan="3" align="center" >
						<label>
							<input type="submit" name="sub" value="�� ¼" class="mouseOutStyle"
								onMouseOut="this.className='mouseOutStyle'"
								onMouseOver="this.className='mouseOverStyle'">
							&nbsp;&nbsp;
							<input type="button" name="sub" value="�� ��" class="mouseOutStyle"
								onMouseOut="this.className='mouseOutStyle'"
								onMouseOver="this.className='mouseOverStyle'"
								onClick="closeWindow()">
						</label>
				  </td>
				</tr>
		  </table>
		    <div align="center"><a href="register.jsp" class="dong05" >��Ҫע��</a>&nbsp;&nbsp; </div>
		</form>
		
	</body>
</html>
