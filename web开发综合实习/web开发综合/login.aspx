<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>旅游网站</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-repeat: repeat-x;
	background-color: #215B9A;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE7 {color: #ffffff; font-size:12px}
-->
</style>
</head>
<script language=javascript>
function refreshimg(){ 
document.getElementById("getcode").src = "VerifyCode.aspx?"+Math.random(); 
} 
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
   <table width="1004" height="750" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
  <tr>
    <td height="293" colspan="3"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="84%" height="56" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="56"><div style="font-family:宋体; color:#FFFFFF;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旅游网站</div>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="434" rowspan="2">&nbsp;</td>
    <td width="289" height="152"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
      
        <tr>
          <td width="44" height="30"><span class="STYLE7">用户:</span></td>
            <td colspan="2" height="30">
              <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                  border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                  width: 130px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                  Width="138px"></asp:TextBox></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE7">密码:</span></td>
            <td colspan="2" height="30">
              <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                  border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                  width: 130px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                  TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
          <td height="30"><span class="STYLE7">权限:</span></td>
            <td colspan="2" height="30">
              <asp:DropDownList ID="cx" runat="server">
              </asp:DropDownList></td>
        </tr>
		 <tr>
          <td height="30"><span class="STYLE7">验证码:</span></td>
          <td height="30" > <asp:TextBox ID="yzm" runat="server"  Style="border-right: #cadcb2 1px solid;
                  border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                  width: 50px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox><td
              height="30">
          <a href="javascript:refreshimg()" title="看不清楚，换个图片。"><asp:Image ID="getcode" 
                     runat="server" src="VerifyCode.aspx">
              </asp:Image></a></td>
         </tr>
        <tr>
            <td colspan="3" height="30">
              &nbsp;<asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="登录" />
              <input id="Reset1"  type="reset" value="重置" /></td>
        </tr>
      
    </table></td>
    <td width="281" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>


    </div> </form>
</body>
</html>
