<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ggdetail.aspx.cs" Inherits="ggdetail" %>

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
                        <td align="center" class="style1"><span class="STYLE10">站内新闻</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table3" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                        
                        
                        
                        
                            <table align="center" border="0" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0"
                                class="newsline" style="border-collapse: collapse" width="98%">
                                <tr>
                                    <td align="center" height="33">
                                        <span style="color: #477641">
                                            <%=ntitle %>
                                            (点击率：<%=ndianjilv %>)</span></td>
                                </tr>
                                <tr>
                                    <td align="left" height="110">
                                        <%=ncontent %>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 31px">
                                        <input name="Submit5" onclick="javascript:history.back();" style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid; height: 19px" type="button" value="返回" /></td>
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