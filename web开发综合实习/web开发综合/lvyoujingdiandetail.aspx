<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lvyoujingdiandetail.aspx.cs" Inherits="lvyoujingdiandetail" %>


<%@ Register src="qttop.ascx" tagname="qttop" tagprefix="uc1" %>
<%@ Register src="qtleft.ascx" tagname="qtleft" tagprefix="uc2" %>
<%@ Register src="qtdown.ascx" tagname="qtdown" tagprefix="uc3" %>


<html>
<head>
    <title>旅游景点</title>
	<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


</head>
<script language="javascript">
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
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
                        <td align="center" class="style1"><span class="STYLE10">旅游景点</span></td>
                        <td width="84%" valign="middle"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="Table4" width="760" height="233" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="9" background="qtimages/1_02_02_01_02_01_02_01.gif">&nbsp;</td>
                        <td height="233" valign="top" bgcolor="#F6F9F2">
                        
                        
                        
                        
                          <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse" class="newsline"> 
								<tr>
								 <td width='11%'>所在城市：</td><td width='39%'><%=nsuozaichengshi%></td>			<td width='11%'>地址：</td><td width='39%'><%=ndizhi%></td></tr><tr>			<td width='11%'>景点名称：</td><td width='39%'><%=njingdianmingcheng%></td>			<td width='11%'>景区级别：</td><td width='39%'><%=njingqujibie%></td></tr><tr>			<td width='11%'>景区门票：</td><td width='39%'><%=njingqumenpiao%></td>			<td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 style='border:solid 1px #000000; color:#666666' onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 onClick="javascript:window.print()" style='border:solid 1px #000000; color:#666666' /></td></tr>
								
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
