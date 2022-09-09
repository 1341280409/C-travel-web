<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jiudianxinxilisttp.aspx.cs" Inherits="jiudianxinxilisttp" %>


<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
    <title>酒店信息</title>
	<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


</head>
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
                        <td align="center" class="style1"><span class="STYLE10">酒店信息</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table4" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                        
                        
                        
                        
                          <p>&nbsp; 酒店名称：<asp:TextBox ID=jiudianmingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 酒店类型：<asp:TextBox ID=jiudianleixing runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 所在城市：<asp:TextBox ID=suozaichengshi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="切换视图" style='border:solid 1px #000000; color:#666666' /></p>
                            <asp:DataList ID="DataList1" runat="server" Height="22%" RepeatColumns="4" Width="100%">
                                <ItemTemplate>
                                    <table align="center" border="0" bordercolor="#00FFFF" cellpadding="3" cellspacing="1"
                                        style="border-collapse: collapse" width="120">
                                        <tr>
                                            <td align="center" height="140">
                                                <a href='jiudianxinxidetail.aspx?id=<%# Eval("id") %>'>
                                                    <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl='<%# Eval("tupian") %>'
                                                        Width="116" /></a></td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("fanghao") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            
                            
                            
                            
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
