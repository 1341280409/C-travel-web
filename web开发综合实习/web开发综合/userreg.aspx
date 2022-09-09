<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" %>
<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
<title>旅游网站</title>
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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

</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
<table width="1005" height="1248" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
  <tr>
    <td>&nbsp;<uc1:qttop ID="qttop1" runat="server" />
</td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table id="__01" width="1005" height="798" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top"><table id="Table1" width="760" height="292" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="Table2" width="760" height="292" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="380" height="48" background="qtimages/41.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td align="center" class="style1"><span class="STYLE10">用户注册</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table3" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                            <table align="center" border="1" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0"
                                style="border-collapse: collapse; height: 494px" width="96%">
                                <tr>
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">用户名:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="yonghuming" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidatoryonghuming" runat="server" ControlToValidate="yonghuming"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体"><span>密码</span>:</font></td>
                                    <td align="left" style="font-family: Times New Roman" width="79%">
                                        <asp:TextBox ID="mima" runat="server" TextMode="Password" Width="147px"></asp:TextBox>*<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="必填"></asp:RequiredFieldValidator>确认密码：<asp:TextBox
                                                ID="mima2" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="mima"
                                            ControlToValidate="mima2" ErrorMessage="两次密码不一致"></asp:CompareValidator></td>
                                </tr>
                                <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体"><span>姓名:</span></font></td>
                                    <td align="left" style="font-family: Times New Roman" width="79%">
                                        <asp:TextBox ID="xingming" runat="server"></asp:TextBox><span style="font-family: 宋体">*</span><asp:RequiredFieldValidator
                                            ID="RequiredFieldValidatorxingming" runat="server" ControlToValidate="xingming"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">电话:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="dianhua" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidatordianhua" runat="server" ControlToValidate="dianhua"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">邮箱:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="youxiang" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr style="font-family: Times New Roman">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">QQ:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="QQ" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr style="font-family: Times New Roman">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">头像:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="touxiang" runat="server" Width="395px"></asp:TextBox>
                                        <a href="javaScript:OpenScript('hsgupfile.aspx?Result=touxiang',500,30)">
                                            <img align="absMiddle" border="0" height="16" src="images/Upload.gif" 
                                            width="30" /></a></td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">籍贯:</font></td>
                                    <td align="left" style="font-family: Times New Roman" width="79%">
                                        <asp:TextBox ID="jiguan" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr style="font-family: Times New Roman">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">地址:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="dizhi" runat="server" Width="395px"></asp:TextBox></td>
                                </tr>
                                <tr style="font-family: Times New Roman">
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">性别:</font></td>
                                    <td align="left" width="79%">
                                        <asp:DropDownList ID="xingbie" runat="server">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap" style="width: 130px">
                                        <font face="宋体">备注:</font></td>
                                    <td align="left" width="79%">
                                        <asp:TextBox ID="beizhu" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td height="25" nowrap="nowrap" style="width: 130px">
                                        <div align="right">
                                            &nbsp;</div>
                                    </td>
                                    <td align="left" height="25" width="59%">
                                        &nbsp;
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid; height: 19px" Text="注册" /><font face="宋体">&nbsp;</font>
                                        <input id="Reset1" style="border-right: #000000 1px solid; border-top: #000000 1px solid;
                                            border-left: #000000 1px solid; color: #666666; border-bottom: #000000 1px solid;
                                            height: 19px" type="reset" value="重置" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div align="center">
                                        </div>
                                    </td>
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
<!-- End Save for Web Slices -->
</form>
</body>
</html>