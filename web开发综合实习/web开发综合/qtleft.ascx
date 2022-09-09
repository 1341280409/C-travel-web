<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qtleft.ascx.cs" Inherits="qtleft" %>
<table id="__01" width="245"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table id="__01" width="245" height="311" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="245" height="51" background="qtimages/1_02_02_02_01_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="14%">&nbsp;</td>
                            <td width="86%" valign="bottom"><span class="STYLE3">系统公告</span></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="245" height="226" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><img src="qtimages/1_02_02_02_01_02_01.gif" width="17" height="226" alt=""></td>
                            <td width="217" height="226" bgcolor="#FFFFFF"><marquee border="0" direction="up" height="100%" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50">
                          <TABLE width="100%" height="100%" >
                      <TR><TD ><%=ngg %></TD></TR></TABLE></marquee></td>
                            <td><img src="qtimages/1_02_02_02_01_02_03.gif" width="11" height="226" alt=""></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_02_01_03.gif" width="245" height="34" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="245" height="252" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="245" height="38" background="qtimages/1_02_02_02_02_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="12%">&nbsp;</td>
                            <td width="88%" valign="bottom"><span class="STYLE3">用户登陆</span></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="245" height="197" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="7" background="qtimages/1_02_02_02_02_02_01.gif">&nbsp;</td>
                            <td width="234" height="197" bgcolor="#FFFFFF">
                              <asp:Panel ID="Panel1" runat="server"  Width="184">
                                                    <table align="center" border="0" cellpadding="0" cellspacing="0" height="154" style="width: 173px">
                                                        <tr>
                                                            <td align="right">
                                                                用户名:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                    密码:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                                                                    TextMode="Password"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                    权限:</td>
                                                            <td align="left" colspan="2">
                                                                <asp:DropDownList ID="cx" runat="server">
                                                                </asp:DropDownList></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                验证码:</td>
                                                            <td align="left">
                                                                <asp:TextBox ID="yzm" runat="server" Width="51px"></asp:TextBox></td>
                                                            <td align="left">
                                                                <asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" style="height: 24px">
                                                                &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="18px" OnClick="Button1_Click"
                                                                    Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                                    border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                                    Text=" 登 陆 " Width="46px" />
                                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="用户注册" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <asp:Panel ID="Panel2" runat="server"  Width="193">
                                                    <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" style="width: 181px">
                                                        <tr>
                                                            <td align="right" style="width: 63px">
                                                                用户名:</td>
                                                            <td align="left">
                                                                <%=Session["username"].ToString().Trim() %>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" style="width: 63px">
                                                                您的权限:</td>
                                                            <td align="left">
                                                                <%=Session["cx"].ToString().Trim() %>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                &nbsp;
                                                                &nbsp;<asp:Button ID="Button2" runat="server" Height="18px" OnClick="Button2_Click"
                                                                    Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                                                    border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                                                    Text=" 退 出 " Width="46px" />
                                                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Style="border-right: #cadcb2 1px solid;
                                                                    border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                    color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="个人后台" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                              </td>
                            <td  background="qtimages/1_02_02_02_02_02_03.gif" width="4"></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_02_02_03.gif" width="245" height="17" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="245"  border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="245" height="38" background="qtimages/1_02_02_02_02_01.gif"><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="12%">&nbsp;</td>
                              <td width="88%" valign="bottom"><span class="STYLE3">友情连接</span></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="171"><table id="__01" width="245" height="171" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="7" background="qtimages/1_02_02_02_02_02_01.gif">&nbsp;</td>
                              <td width="234" height="183" bgcolor="#FFFFFF"> <asp:DataGrid ID="DataGridyqlj" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                class="newsline"  ShowHeader="False" Width="100%">
                                <Columns>
                                    <asp:TemplateColumn HeaderText="gregre">
                                        <ItemTemplate>
                                            <img src="qtimages/1.jpg" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="gregre">
                                        <ItemTemplate>
                                            <a href='<%#DataBinder.Eval(Container.DataItem, "wangzhi") %>' target="_blank">
                                                <%#DataBinder.Eval(Container.DataItem, "wangzhanmingcheng") %>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="友情链接">
                                        <ItemTemplate>
                                            <a href='<%#DataBinder.Eval(Container.DataItem, "wangzhi") %>' target="_blank">
                                                <%#DataBinder.Eval(Container.DataItem, "wangzhi")%>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid></td>
                              <td  background="qtimages/1_02_02_02_02_02_03.gif" width="4"></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_02_02_03.gif" width="245" height="17" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                </table>