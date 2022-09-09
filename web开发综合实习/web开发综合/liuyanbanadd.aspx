<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyanbanadd.aspx.cs" Inherits="liuyanbanadd" %>

<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
<title>旅游网站</title>
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


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
                        <td width="16%" align="center"><span class="STYLE10">在线留言</span></td>
                        <td width="68%" valign="middle"></td>
                        <td width="16%" valign="middle"><a href="liuyanban.aspx" class="STYLE9">查看留言--&gt;</a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table3" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                           
                           
                           
                           
                                <table align="center" border="1" bordercolor="#00ffff" cellpadding="3" 
                                    cellspacing="1" style="border-collapse: collapse" width="98%">
                                    <tr>
                                        <td style="width: 114px">
                                            <font face="宋体">昵称:</font></td>
                                        <td width="79%">
                                            <asp:TextBox ID="cheng" runat="server" 
                                                Style="border-right: #000000 1px solid; border-top: #000000 1px solid;
                                            border-left: #000000 1px solid; color: #666666; border-bottom: #000000 1px solid"></asp:TextBox>
                                            *<asp:RequiredFieldValidator ID="RequiredFieldValidatorcheng" runat="server" 
                                                ControlToValidate="cheng" ErrorMessage="必填"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td style="width: 114px">
                                            <font face="宋体"><span>表情</span>:</font></td>
                                        <td style="font-family: 宋体" width="79%">
                                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" 
                                                GroupName="aa" />
                                            <img src="img/1.gif" style="width: 60px; height: 65px" />
                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="aa" />
                                            <img src="img/2.gif" style="width: 60px; height: 65px" />
                                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="aa" />
                                            <img src="img/3.gif" style="width: 60px; height: 65px" />
                                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="aa" />
                                            <img src="img/4.gif" style="width: 60px; height: 65px" />
                                            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="aa" />
                                            <img src="img/5.gif" style="width: 60px; height: 65px" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 114px">
                                            <font face="宋体"><span style="font-family: Times New Roman">标题:</span></font></td>
                                        <td style="font-family: Times New Roman" width="79%">
                                            <asp:TextBox ID="biaoti" runat="server" 
                                                Style="border-right: #000000 1px solid; border-top: #000000 1px solid;
                                            border-left: #000000 1px solid; color: #666666; border-bottom: #000000 1px solid" 
                                                Width="395px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 114px">
                                            <font face="宋体">内容:</font></td>
                                        <td style="font-family: Times New Roman" width="79%">
                                            <asp:TextBox ID="neirong" runat="server" Height="100px" Style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td nowrap="nowrap" style="width: 114px">
                                            <font face="宋体">回复:</font></td>
                                        <td width="79%">
                                            <asp:TextBox ID="huifu" runat="server" Height="100px" Style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" nowrap="nowrap" style="width: 114px">
                                            <div align="right">
                                                &nbsp;</div>
                                        </td>
                                        <td height="25" width="59%">
                                            &nbsp;
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid" Text="添加" />
                                            <font face="宋体">&nbsp;</font>
                                            <input id="Reset1" 
                                                style="border-right: #000000 1px solid; border-top: #000000 1px solid;
                                            border-left: #000000 1px solid; color: #666666; border-bottom: #000000 1px solid" 
                                                type="reset" value="重置" /></td>
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