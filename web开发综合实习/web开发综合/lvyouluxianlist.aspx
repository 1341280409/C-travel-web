<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lvyouluxianlist.aspx.cs" Inherits="lvyouluxianlist" %>


<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
    <title>旅游路线</title>
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
                        <td align="center" class="style1"><span class="STYLE10">旅游路线</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table4" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                        
                        
                        
                        
                          <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
            <tbody>
               
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 游览日：<asp:TextBox ID=youlanri runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 旅游性质：<asp:TextBox ID=lvyouxingzhi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 始发城市：<asp:TextBox ID=shifachengshi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 目地城市：<asp:TextBox ID=mudichengshi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 景区名称：<asp:TextBox ID=jingqumingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 景区级别：<asp:DropDownList ID='jingqujibie' runat='server'></asp:DropDownList>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderWidth=0
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True" class="newsline">
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
                                <asp:BoundColumn DataField='youlanri' HeaderText='游览日'></asp:BoundColumn>                                <asp:BoundColumn DataField='lvyouxingzhi' HeaderText='旅游性质'></asp:BoundColumn>                                <asp:BoundColumn DataField='jiaotonggongju' HeaderText='交通工具'></asp:BoundColumn>                                <asp:BoundColumn DataField='shifachengshi' HeaderText='始发城市'></asp:BoundColumn>                                <asp:BoundColumn DataField='shifadizhi' HeaderText='始发地址'></asp:BoundColumn>                                <asp:BoundColumn DataField='mudichengshi' HeaderText='目地城市'></asp:BoundColumn>                                <asp:BoundColumn DataField='mudidizhi' HeaderText='目地地址'></asp:BoundColumn>                                <asp:BoundColumn DataField='jingqumingcheng' HeaderText='景区名称'></asp:BoundColumn>                                <asp:BoundColumn DataField='jingqujibie' HeaderText='景区级别'></asp:BoundColumn>                                
                                
                                
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='lvyouluxiandetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /><ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /> <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td>
                </tr>
            </tbody>
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
