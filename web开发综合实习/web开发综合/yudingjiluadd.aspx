<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yudingjiluadd.aspx.cs" Inherits="yudingjiluadd" %>


<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
    <title>预订记录</title>
	<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


</head>
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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
<table width="1005" height="1248" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
  <tr>
    <td>&nbsp;<uc1:qttop ID="qttop1" runat="server" />
</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table id="Table1" width="1005" height="798" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top"><table id="Table2" width="760" height="292" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="Table3" width="760" height="292" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="380" height="48" background="qtimages/41.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td align="center" class="style1"><span class="STYLE10">预订记录</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table4" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                        
                        
                        
                        
                          <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse" class="newsline">
			                <tr><td><FONT face='宋体'>酒店名称:</FONT></td><td width='79%'><asp:TextBox ID='jiudianmingcheng' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorjiudianmingcheng" runat="server" ControlToValidate="jiudianmingcheng" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>所在城市:</FONT></td><td width='79%'><asp:TextBox ID='suozaichengshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>房号:</FONT></td><td width='79%'><asp:TextBox ID='fanghao' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>房间类型:</FONT></td><td width='79%'><asp:TextBox ID='fangjianleixing' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>价格:</FONT></td><td width='79%'><asp:TextBox ID='jiage' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>预订人:</FONT></td><td width='79%'><asp:TextBox ID='yudingren' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>联系方式:</FONT></td><td width='79%'><asp:TextBox ID='lianxifangshi' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox> 必需手机型 <asp:RegularExpressionValidator ID="gsyzlianxifangshi" runat="server" ControlToValidate="lianxifangshi" ErrorMessage="必需手机格式" ValidationExpression="^1[3|4|5|8][0-9]\d{4,8}$"></asp:RegularExpressionValidator> </td></tr>			<tr><td><FONT face='宋体'>预订日期:</FONT></td><td width='79%'><asp:TextBox ID='yudingriqi' runat='server' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>预订天数:</FONT></td><td width='79%'><asp:TextBox ID='yudingtianshu' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox> 必需数字型 <asp:RegularExpressionValidator ID="gsyzyudingtianshu" runat="server" ControlToValidate="yudingtianshu" ErrorMessage="必需数字" ValidationExpression="^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$"></asp:RegularExpressionValidator> </td></tr>			<tr><td><FONT face='宋体'>金额:</FONT></td><td width='79%'><asp:TextBox ID='jine' runat='server' style='border:solid 1px #000000; color:#666666;background-color:#CCCCCC' ReadOnly='true'></asp:TextBox>&nbsp;此项不必填写，系统自动计算</td></tr>			
				            <tr>
					            <td noWrap height="25" style="WIDTH: 80px">
						            <div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					            </td>
					            <td width="59%" height="25">&nbsp;
						            <asp:button id="Button1" runat="server" Text="确定" onclick="Button1_Click" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="宋体">&nbsp;</FONT>
                                    <input id="Reset1" type="reset" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
				            </tr>
            				
				            <tr bgColor="#f1f8f5">
					            <td colSpan="2">&nbsp;</td>
				            </tr>
			            </table>
                            
                            
                            
                            
                                                            </td>
                        <td width="11" background="qtimages/1_02_02_01_02_01_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_02_01_03.gif" width="756" height="8" alt=""></td>
                  </tr>
                </table></td>
                </tr>
            </table></td>
        <td valign="top">
            <uc2:qtleft ID="qtleft1" runat="server" />
                        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>
        <uc3:qtdown ID="qtdown1" runat="server" />
      </td>
  </tr>
</table>
<!-- dfexnxxiaxng -->
</form>
</body>
</html>
