<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qttop.ascx.cs" Inherits="qttop" %>
<table id="__01" width="1005" height="288" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="31" colspan="2" background="qtimages/1_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="74%"><table width="94%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  
                    <tr>
                      <td style="padding-left:10px;">站内搜索：标题
                          <asp:TextBox ID="keyword" runat="server" Style="border-right: #cadcb2 1px solid;
                              border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                              color: #81b432; border-bottom: #cadcb2 1px solid"></asp:TextBox>
                        类别&nbsp;<asp:DropDownList ID="lb" runat="server" Style="border-right: #cadcb2 1px solid;
                              border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                              color: #81b432; border-bottom: #cadcb2 1px solid">
                          </asp:DropDownList>
                          <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Style="border-right: #cadcb2 1px solid;
                              border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                              color: #81b432; border-bottom: #cadcb2 1px solid" Text="搜索" /></td>
                    </tr>
                 
                </table></td>
                    <td width="26%"><table width="94%" height="14" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td align="center" style="height: 18px"></td>
                        <td align="center" style="height: 18px"></td>
                        <td align="center" style="height: 18px"></td>
                        <td align="center" style="height: 18px"></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="151" colspan="2" background="qtimages/1_02_01_02.gif"><table width="84%" height="56" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="56"><div style="font-family:宋体; color:#FFFFFF;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
                        <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;旅游网站</div>
                    </div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="38" colspan="2" background="qtimages/1_02_01_03.gif"><table width="78%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" >
                  <tr>
                    <td align="center"><a href="default.aspx"><span class="STYLE9">首页</span></a></td>
                  <td align="center"><a href="news.aspx?lb=旅游新闻"><span class="STYLE9">旅游新闻</span></a></td>
                    <td align="center"><a href="jiudianxinxilist.aspx"><span class="STYLE9">酒店预订</span></a></td>
                    <td align="center"><a href="userreg.aspx"><span class="STYLE9">用户注册</span></a></td>
                    <td align="center"><a href="liuyanban.aspx"><span class="STYLE9">在线留言</span></a></td>
                   <%-- <td align="center"><a href="userreg.aspx"><span class="STYLE9">用户注册</span></a></td>--%>
                    <td align="center"><a href="lvyoutupianlisttp.aspx"><span class="STYLE9">旅游图片</span></a></td>
                    <td align="center"><a href="lvyouluxianlist.aspx"><span class="STYLE9">旅游路线</span></a></td>
                    <td align="center"><a href="lvyoujingdianlist.aspx"><span class="STYLE9">旅游景点</span></a></td>
                    <td align="center"><a href="login.aspx"><span class="STYLE9">后台</span></a></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="32" colspan="2" background="qtimages/1_02_01_04.gif"><marquee behavior=alternate width=100% scrollAmount=3 >
                    <font color="#ffffff">欢迎登录我站，希望能给你带来好心情，谢谢合作！</font>
                    </MARQUEE></td>
              </tr>
              <tr>
                <td width="229" height="36" align="right" background="qtimages/1_02_01_05.gif">当前日期：<SCRIPT language=javascript>setCalendar();</SCRIPT></td>
                <td width="690" background="qtimages/1_02_01_05.gif"><iframe width="300" scrolling="no" height="25" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=10&color=%23002060&bgc=%23&bdc=%23&icon=2">
                <head>
                <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
            </head></iframe></td>
              </tr>
            </table>