<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yudingjilu_list2.aspx.cs" Inherits="yudingjilu_list2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>预订记录</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有预订记录信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 酒店名称：<asp:TextBox ID=jiudianmingcheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 所在城市：<asp:TextBox ID=suozaichengshi runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 房间类型：<asp:TextBox ID=fangjianleixing runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666'/>
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField='jiudianmingcheng' HeaderText='酒店名称'></asp:BoundColumn><asp:BoundColumn DataField='suozaichengshi' HeaderText='所在城市'></asp:BoundColumn><asp:BoundColumn DataField='fanghao' HeaderText='房号'></asp:BoundColumn><asp:BoundColumn DataField='fangjianleixing' HeaderText='房间类型'></asp:BoundColumn><asp:BoundColumn DataField='jiage' HeaderText='价格'></asp:BoundColumn><asp:BoundColumn DataField='yudingren' HeaderText='预订人'></asp:BoundColumn><asp:BoundColumn DataField='lianxifangshi' HeaderText='联系方式'></asp:BoundColumn><asp:TemplateColumn HeaderText="预订日期"><ItemTemplate><%# riqigeshi(DataBinder.Eval(Container.DataItem, "yudingriqi"))%></ItemTemplate><HeaderStyle Width="100px" /></asp:TemplateColumn><asp:BoundColumn DataField='yudingtianshu' HeaderText='预订天数'></asp:BoundColumn><asp:BoundColumn DataField='jine' HeaderText='金额'></asp:BoundColumn>
                                <asp:BoundColumn DataField=issh HeaderText='是否审核'><HeaderStyle Width="80px" /></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="是否支付"><ItemTemplate><a href='zhifu/default.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&biao=yudingjilu'><%#DataBinder.Eval(Container.DataItem, "iszf") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='yudingjilu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=yudingjilu&npage=yudingjilu_list2.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								
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
    
    </div>
    </form>
</body>
</html>
