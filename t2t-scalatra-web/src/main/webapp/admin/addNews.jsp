<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>

<html>
	<head>

		<title>�������</title>


		<link rel="stylesheet" type="text/css" href="../styles/admin.css">

		<script type="text/javascript">
		function checkForm() {
			//with ���ͨ�����������ض������±���Ĵ���
			with(document.form1){
					if (txtTitle.value == "") {
						alert("���ű��ⲻ��Ϊ��");
						txtTitle.focus();
						return false;
					} 
		 			if (txtContent.value == "") {
						alert("�������ݲ���Ϊ��");
						txtContent.focus();
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
		<form name="form1" action="../admin/doAddNews.jsp" method="post"
			onSubmit="return checkForm();">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<tr>
					<td colspan="12" class="header">
						���������Ϣ
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						���ű��⣺
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<input name="txtTitle" type="text" id="txtTitle" size="34">
					</td>
				</tr>
				<tr>
					<td align="center" bgcolor="#FFFFFF">
						�������ݣ�
					</td>
					<td colspan="11" bgcolor="#FFFFFF">
						<textarea name="txtContent" cols="60" rows="5" id="txtContent"></textarea>
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
