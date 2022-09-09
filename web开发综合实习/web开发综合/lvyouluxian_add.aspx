<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lvyouluxian_add.aspx.cs" Inherits="lvyouluxian_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>旅游路线</title>
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
						<div align="center">添加旅游路线</div>
					</td>
				</tr>
				
			<tr><td><FONT face='宋体'>游览日:</FONT></td><td width='79%'><asp:TextBox ID='youlanri' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatoryoulanri" runat="server" ControlToValidate="youlanri" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>旅游性质:</FONT></td><td width='79%'><asp:TextBox ID='lvyouxingzhi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorlvyouxingzhi" runat="server" ControlToValidate="lvyouxingzhi" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>交通工具:</FONT></td><td width='79%'><asp:TextBox ID='jiaotonggongju' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>始发城市:</FONT></td><td width='79%'><asp:TextBox ID='shifachengshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>始发地址:</FONT></td><td width='79%'><asp:TextBox ID='shifadizhi' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>目地城市:</FONT></td><td width='79%'><asp:TextBox ID='mudichengshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>目地地址:</FONT></td><td width='79%'><asp:TextBox ID='mudidizhi' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>景区名称:</FONT></td><td width='79%'><asp:TextBox ID='jingqumingcheng' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>景区级别:</FONT></td><td width='79%'><asp:DropDownList ID='jingqujibie' runat='server'></asp:DropDownList></td></tr>			
				
				
				
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
