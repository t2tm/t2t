<%@ page language="java" pageEncoding="GBK"
	contentType="text/html; charset=GBK"%>
<%@ include file="checked.jsp"%>

<html>
	<head>

		<title>����������Ϣ</title>

		<style type="text/css">    
		.STYLE1 {font-size: 12px}

        </style>
	</head>

	<body onLoad="runStyle('<%=request.getParameter("select")%>')"
		style="<%=(String) session.getAttribute("style")%>">
	<form action="doSendMessage.jsp" method="post" name="form1"
			onSubmit="return checkForm();">
	  <table width="446" height="105" border="0" cellpadding="0"
				cellspacing="0">
        <tr>
          <td height="19" align="right" background="../image/titlemu_2.gif">
            <table width="100%" border="0">
              <tr>
                <td width="110" height="26" align="center">				</td>
                <td width="120" align="center"><img src="../image/globe.gif" width="31" height="22" onMouseOver="isShow(true)" onMouseOut="isShow(false)"></td>
                <td width="98" align="right"><span class="STYLE1">�����������</span>:</td>
              </tr>
            </table>          </td>
          <td height="19" align="center" background="../image/titlemu_2.gif" bgcolor="#66FFCC" class="g01 STYLE1"><span class="g01"><span class="d02">
            <select id="select"
								name="select" onChange="document.form1.submit()">
              <option value=""> Ĭ�Ϸ�� </option>
              <option value="bg1.jpg"> �ۺ���� </option>
              <option value="bg2.jpg"> ��ɫͼ�� </option>
              <option value="bg3.jpg"> ����ɫ�� </option>
            </select>
          </span></span></td>
        </tr>
        <tr>
          <td height="2" colspan="2" align="left" valign="middle" class="g01 STYLE1"><div id="demo" style="display:none; z-index:1; position:absolute; left: 173px; top: 41px; width: 128px; height: 91px; cursor:pointer;">
            <table width="124" height="83" border="0" cellpadding="0" cellspacing="0" style="font-size:12px;">
              <tr>
                <td width="147" height="19"  onClick="showMes(this.innerHTML)"onMouseOver="isShow(true)" onMouseOut="isShow(false)">��Һã��������֡�</td>
              </tr>
              
              
              <tr>
                <td height="19" onClick="showMes(this.innerHTML)" onMouseOver="isShow(true)" onMouseOut="isShow(false)">�������ҿ��У�</td>
              </tr>
              <tr>
                <td height="19" onClick="showMes(this.innerHTML)" onMouseOver="isShow(true)" onMouseOut="isShow(false)">o(��_��)o...</td>
              </tr>
              <tr>
                <td height="19" onClick="showMes(this.innerHTML)" onMouseOver="isShow(true)" onMouseOut="isShow(false)">��Ҫ������</td>
              </tr>
            </table>
          </div></td>
        </tr>
        <tr>
          <td width="343" align="left" valign="middle" class="g01 STYLE1"><span class="g01">
            <textarea name="txtMessage" cols="46" rows="4" id="txtMessage"></textarea>
          </span></td>
          <td width="104" height="73" align="right" valign="middle" class="g01 STYLE1"><img src="../image/3.gif" width="70" height="53" style="display:inline" onClick="checkForm()"><img src="../image/4.gif" width="24" height="53"  onClick="checkForm()"></td>
        </tr>
      </table>
	</form>
	</body>

	<script type="text/javascript" language="javascript">
		function isShow(isShow){
			document.getElementById("demo").style.display=isShow?"block":"none";
		}
		function showMes(op){
			document.getElementById("txtMessage").value=op;
			document.getElementById("demo").style.display="none";
		}
		function checkForm(){
			with(document.form1){
				if(txtMessage.value==""){
					alert("���ܷ��Ϳ���Ϣ!");
					txtMessage.focus();
				}else{
					document.form1.submit();
				}
			}
		}
		function runStyle(st){ 
			with(document.form1){
			if(st=="")
				select.options[0].selected="selected";
			if(st=="bg1.jpg")
				select.options[1].selected="selected";
			if(st=="bg2.jpg")
				select.options[2].selected="selected";
			if(st=="bg3.jpg")
				select.options[3].selected="selected";
			txtMessage.focus();
			}
		 }
	</script>

</html>
