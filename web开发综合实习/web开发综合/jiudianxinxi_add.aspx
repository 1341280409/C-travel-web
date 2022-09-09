<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiudianxinxi_add.aspx.cs" Inherits="jiudianxinxi_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>酒店信息</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
<script language="javascript">	
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
	function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
<!--hxsglxiangdxongjxs-->
	<body>
		<form id="Form1" method="post" runat="server">
			<br />
			   <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
				<tr bgColor="#f1f8f5">
					<td colSpan="2">
						<div align="center">添加酒店信息</div>
					</td>
				</tr>
				
			<tr><td><FONT face='宋体'>酒店名称:</FONT></td><td width='79%'><asp:TextBox ID='jiudianmingcheng' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorjiudianmingcheng" runat="server" ControlToValidate="jiudianmingcheng" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>酒店类型:</FONT></td><td width='79%'><asp:TextBox ID='jiudianleixing' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>所在城市:</FONT></td><td width='79%'><asp:TextBox ID='suozaichengshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>房号:</FONT></td><td width='79%'><asp:TextBox ID='fanghao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>房间类型:</FONT></td><td width='79%'><asp:TextBox ID='fangjianleixing' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>图片:</FONT></td><td width='79%'><asp:textbox id='tupian' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:textbox>&nbsp;<a href="javaScript:OpenScript('hsgupfile.aspx?Result=tupian',500,30)"><img src='Images/Upload.gif' width='30' height='16' border='0' align='absmiddle' /></a></td></tr>			<tr><td><FONT face='宋体'>价格:</FONT></td><td width='79%'><asp:TextBox ID='jiage' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="添加" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>
