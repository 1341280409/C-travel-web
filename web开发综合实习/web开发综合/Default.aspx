<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


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
        <td valign="top"><table id="__01" width="760" height="798" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table id="__01" width="760" height="320" border="0" cellpadding="0" cellspacing="0">
              <tr>
                
                <td><table id="__01" width="439" height="320" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="439" height="45" background="qtimages/1_02_02_01_01_02_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="4%">&nbsp;</td>
                        <td width="96%" valign="middle"><a href="news.aspx?lb=旅游新闻"><span class="STYLE4">旅游新闻</span></a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="439" height="265" valign="top">
                                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    class="newsline" ItemStyle-Height="25" ShowHeader="False" Width="98%">
                                    <Columns>
                                        <asp:TemplateColumn>
                                            <ItemTemplate>
                                                <img src="qtimages/1.jpg">
                                            </ItemTemplate>
                                            <HeaderStyle Width="30px" />
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="标题">
                                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                Font-Underline="False" HorizontalAlign="Left" />
                                            <ItemTemplate>
                                                <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                            <ItemStyle Width="350px" />
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间" DataFormatString = "{0:yyyy-MM-dd}">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundColumn>
                                    </Columns>
                                    <ItemStyle Height="25px" />
                                </asp:DataGrid></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_01_02_03.gif" width="439" height="10" alt=""></td>
                  </tr>
                </table></td>
                <td><img src="qtimages/1_02_02_01_01_03.gif" width="7" height="320" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="760" height="292" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="380" height="292" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="380" height="48" background="qtimages/1_02_02_01_02_01_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%">&nbsp;</td>
                        <td width="94%" valign="middle"><a href="news.aspx?lb=旅游须知"><span class="STYLE4">旅游须知</span></a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="380" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td width="360" height="233" valign="top" bgcolor="#F6F9F2">
                                  <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                      class="newsline" ItemStyle-Height="25" ShowHeader="False" Width="100%">
                                      <Columns>
                                          <asp:TemplateColumn>
                                              <ItemTemplate>
                                                  <img src="qtimages/1.jpg">
                                              </ItemTemplate>
                                              <HeaderStyle Width="30px" />
                                          </asp:TemplateColumn>
                                          <asp:TemplateColumn HeaderText="标题">
                                              <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                  Font-Underline="False" HorizontalAlign="Left" />
                                              <ItemTemplate>
                                                  <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                      <%# CutStr2(DataBinder.Eval(Container.DataItem, "title "))%>
                                                  </a>
                                              </ItemTemplate>
                                          </asp:TemplateColumn>
                                      </Columns>
                                  </asp:DataGrid></td>
                        <td width="11" background="qtimages/1_02_02_01_02_01_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_02_01_03.gif" width="380" height="11" alt=""></td>
                  </tr>
                </table></td>
                <td><table id="__01" width="380" height="292" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="380" height="48" background="qtimages/1_02_02_01_02_01_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="6%">&nbsp;</td>
                        <td width="94%" valign="middle"><a href="news.aspx?lb=站内新闻"><span class="STYLE4">站内新闻</span></a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="380" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td width="360" height="233" valign="top" bgcolor="#F6F9F2">
                                  <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                      class="newsline" ItemStyle-Height="25" ShowHeader="False" 
                                Width="100%">
                                      <Columns>
                                          <asp:TemplateColumn>
                                              <ItemTemplate>
                                                  <img src="qtimages/1.jpg">
                                              </ItemTemplate>
                                              <HeaderStyle Width="30px" />
                                          </asp:TemplateColumn>
                                          <asp:TemplateColumn HeaderText="标题">
                                              <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                  Font-Underline="False" HorizontalAlign="Left" />
                                              <ItemTemplate>
                                                  <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                      <%# CutStr2(DataBinder.Eval(Container.DataItem, "title "))%>
                                                  </a>
                                              </ItemTemplate>
                                          </asp:TemplateColumn>
                                      </Columns>
                                  </asp:DataGrid></td>
                        <td width="11" background="qtimages/1_02_02_01_02_01_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_02_01_03.gif" width="380" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="760" height="186" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="34" background="qtimages/1_02_02_01_03_01.gif"><table width="100%" height="145" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="6%" height="105" align="center" valign="top" class="STYLE3">旅<br>
                                <br>
                      游<br>
                      <br>
                      风<br>
                      <br>
                      景</td>
                  </tr>
                </table></td>
                <td><table id="__01" width="718" height="186" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03_02_01.gif" width="718" height="11" alt=""></td>
                  </tr>
                  <tr>
                    <td width="718" height="163">
                              <asp:DataList ID="DataList1" runat="server" Height="100%" RepeatColumns="5" Width="100%">
                                  <ItemTemplate>
                                      <table align="center" border="0" bordercolor="#00FFFF" cellpadding="3" cellspacing="1"
                                          style="border-collapse: collapse" width="120">
                                          <tr>
                                              <td align="center" height="140">
                                                  <a href='<%# Eval("jingqutupian") %>'>
                                                      <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl='<%# Eval("jingqutupian") %>'
                                                          Width="116" /></a></td>
                                          </tr>
                                          <tr>
                                              <td align="center">
                                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("lvyoujingqu") %>'></asp:Label></td>
                                          </tr>
                                      </table>
                                  </ItemTemplate>
                              </asp:DataList></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03_02_03.gif" width="718" height="12" alt=""></td>
                  </tr>
                </table></td>
                <td><img src="qtimages/1_02_02_01_03_03.gif" width="8" height="186" alt=""></td>
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