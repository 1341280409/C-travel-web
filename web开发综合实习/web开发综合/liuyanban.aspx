<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyanban.aspx.cs" Inherits="liuyanban" %>
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
                        <td width="16%" valign="middle"><a href="liuyanbanadd.aspx" class="STYLE9">我要留言--&gt;</a></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table3" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                           
                           
                           
                           
                            <asp:DataList ID="DataList1" runat="server" Height="26%" RepeatColumns="1" Width="100%">
                                <ItemTemplate>
                                    <table align="center" border="1" bordercolor="#83C8F8" cellpadding="3" cellspacing="1"
                                        style="border-collapse: collapse" width="98%">
                                        <!--DWLayoutTable-->
                                        <tr>
                                            <td align="center" rowspan="4" valign="middle" width="85">
                                                <img border="0" height='70' src='img/<%# Eval("biaoqing") %>.gif' width='70'>
                                            </td>
                                            <td align="left" height="20" valign="middle">
                                                &nbsp; &nbsp; 标题:<%# Eval("biaoti") %>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" height="78" valign="top">
                                                &nbsp;<%# Eval("neirong") %></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="height: 25px" valign="middle">
                                                &nbsp; &nbsp;昵称：<%# Eval("cheng") %>
                                                &nbsp; &nbsp;留言于:<%# Eval("addtime") %>&nbsp; &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="height: 25px" valign="middle">
                                                &nbsp; &nbsp;管理员回复：<%# Eval("huifu") %></td>
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
<!-- End Save for Web Slices -->
</form>
</body>
</html>