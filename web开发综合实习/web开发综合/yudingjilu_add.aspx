<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yudingjilu_add.aspx.cs" Inherits="yudingjilu_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Ԥ����¼</title>
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
						<div align="center">���Ԥ����¼</div>
					</td>
				</tr>
				
			<tr><td><FONT face='����'>�Ƶ�����:</FONT></td><td width='79%'><asp:TextBox ID='jiudianmingcheng' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorjiudianmingcheng" runat="server" ControlToValidate="jiudianmingcheng" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='����'>���ڳ���:</FONT></td><td width='79%'><asp:TextBox ID='suozaichengshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='fanghao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��������:</FONT></td><td width='79%'><asp:TextBox ID='fangjianleixing' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>�۸�:</FONT></td><td width='79%'><asp:TextBox ID='jiage' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>Ԥ����:</FONT></td><td width='79%'><asp:TextBox ID='yudingren' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��ϵ��ʽ:</FONT></td><td width='79%'><asp:TextBox ID='lianxifangshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox> �����ֻ��� <asp:RegularExpressionValidator ID="gsyzlianxifangshi" runat="server" ControlToValidate="lianxifangshi" ErrorMessage="�����ֻ���ʽ" ValidationExpression="^1[3|4|5|8][0-9]\d{4,8}$"></asp:RegularExpressionValidator> </td></tr>			<tr><td><FONT face='����'>Ԥ������:</FONT></td><td width='79%'><asp:TextBox ID='yudingriqi' runat='server' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='����'>Ԥ������:</FONT></td><td width='79%'><asp:TextBox ID='yudingtianshu' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox> ���������� <asp:RegularExpressionValidator ID="gsyzyudingtianshu" runat="server" ControlToValidate="yudingtianshu" ErrorMessage="��������" ValidationExpression="^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$"></asp:RegularExpressionValidator> </td></tr>			<tr><td><FONT face='����'>���:</FONT></td><td width='79%'><asp:TextBox ID='jine' runat='server' style='border:solid 1px #000000; color:#666666;background-color:#CCCCCC' ReadOnly='true'></asp:TextBox>&nbsp;�������д��ϵͳ�Զ�����</td></tr>			
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="���" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="����">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="����" style='border:solid 1px #000000; color:#666666' /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>
