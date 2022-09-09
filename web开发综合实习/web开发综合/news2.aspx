<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news2.aspx.cs" Inherits="news2" %>


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
                        <td align="center" class="style1"><span class="STYLE10"><%=lbtxt %></span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table3" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" BorderColor="Black" CellPadding="2" font-name="verdana" BorderWidth="0"
                                Font-Names="verdana" Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                                PageSize="8" Width="100%" class="newsline">
                                <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                                    NextPageText="下一页" PrevPageText="上一页" />
                                <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                    Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                    HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="序号">
                                        <HeaderStyle Width="50px" />
                                        <ItemTemplate>
                                            <%#Container.ItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="title" HeaderText='标题'>
                                        <ItemStyle HorizontalAlign="Left" />
                                        <HeaderStyle HorizontalAlign="Left" />
                                    </asp:BoundColumn>
                                    <asp:BoundColumn DataField="leibie" HeaderText='类别'>
                                        <HeaderStyle Width="80px" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="首页图片">
                                        <ItemTemplate>
                                            <a href='<%#DataBinder.Eval(Container.DataItem, "shouyetupian") %>' target='_blank'>
                                                <img border='0' height='99' src='<%#DataBinder.Eval(Container.DataItem, "shouyetupian") %>'
                                                    width='88' /></a></ItemTemplate>
                                        <HeaderStyle Width="110px" />
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="dianjilv" HeaderText='点击率'>
                                        <HeaderStyle Width="50px" />
                                    </asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="详细">
                                        <ItemTemplate>
                                            <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a>
                                        </ItemTemplate>
                                        <HeaderStyle Width="50px" />
                                    </asp:TemplateColumn>
                                </Columns>
                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                    Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataGrid></td>
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