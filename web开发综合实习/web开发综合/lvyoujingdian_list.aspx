<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lvyoujingdian_list.aspx.cs" Inherits="lvyoujingdian_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>���ξ���</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">�������ξ����б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ���ڳ��У�<asp:TextBox ID=suozaichengshi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> ��ַ��<asp:TextBox ID=dizhi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> �������ƣ�<asp:TextBox ID=jingdianmingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" style='border:solid 1px #000000; color:#666666' /> &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="����EXCEL" style='border:solid 1px #000000; color:#666666' />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="����" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="��һҳ" PrevPageText="��һҳ" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField='suozaichengshi' HeaderText='���ڳ���'></asp:BoundColumn>                                <asp:BoundColumn DataField='dizhi' HeaderText='��ַ'></asp:BoundColumn>                                <asp:BoundColumn DataField='jingdianmingcheng' HeaderText='��������'></asp:BoundColumn>                                <asp:BoundColumn DataField='jingqujibie' HeaderText='��������'></asp:BoundColumn>                                <asp:BoundColumn DataField='jingqumenpiao' HeaderText='������Ʊ'></asp:BoundColumn>                                
                                
								
								
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='lvyoujingdian_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=lvyoujingdian&npage=lvyoujingdian_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='lvyoujingdiandetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' target='_blank'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
		<%
    //yoxutixinxg if(kucddduntx>0)
    //yoxutixinxg{
    //yoxutixinxg tsgehxdhdm
    //yoxutixinxg}
	%>
    </div>
    </form>
</body>
</html>
