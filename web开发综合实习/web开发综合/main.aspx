<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>




<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=gb2312" />
    <title>������վ</title>
    <script language="javascript" type="text/javascript">
        function G(id) {
            return document.getElementById(id);
        }
        var status = 1;
        function switchSysBar() {
            if (1 == status) {
                status = 0;
                G("switchPoint").innerHTML = '<img src="images/left.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "none";
            }
            else {
                status = 1;
                G("switchPoint").innerHTML = '<img src="images/right.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="css/houtai.css" />
</head>
<body>

    <table cellpadding="0" cellspacing="0" class="table">
        <tr>
            <td colspan="3" class="top_menu">
                <div style="font-family:����; color:#006633;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div >&nbsp;&nbsp;������վ</div>
        </div>
               
            </td>
        </tr>
        <tr>
            <td id="frmTitle" style="width: 182px;">
                <table height="100%" style="width: 182px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="background-color: #c9defa; padding: 3px; padding-bottom: 0">
                            <div class="lie lie2">
                                <a onClick="javascript:history.back();" style="cursor:pointer" class="shouye" target="frmright">����</a> <a style="cursor:pointer"  onClick="javascript:if(confirm('ȷ��Ҫ�˳���')==true){parent.location.href='logout.aspx';}"
                                    class="tuichu">�˳�</a>
                                <div style="clear: both">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="background: #c9defa" height="100%" name="fmtitle">
                            <iframe frameborder="0" id="frmleft" name="frmleft" scrolling="yes" src="mygo.aspx"
                                style="height: 100%; visibility: inherit; width: 182px;" allowtransparency="true">
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="middle" style="width: 12px; cursor: pointer;" bgcolor="#c3daf9" onMouseOver="this.style.backgroundColor='#ddeafc';this.style.color='red'"
                onmouseout="this.style.backgroundColor='';this.style.color=''" onClick="switchSysBar()">
                <span class="navpoint" id="switchPoint" title="�ر�/������">
                    <img src="images/right.gif" style="margin: 0 2px"></span>
            </td>
            <td style="width: 100%" valign="top">
                <table width="100%" cellpadding="0" cellspacing="0" style="height: 100%;">
                    <tr>
                        <td>
                            <div class="menu">
                                <div class="wenzi">
                                    <a href="sy.aspx" target="frmright" class="a1">��ʾ����</a><em>|</em><a
                                        href="listuser.aspx" target="frmright" class="a1">ϵͳ�û�����</a><em>|</em><a
                                            href="databack.aspx" target="frmright" class="a1">���ݱ���</a><em>|</em><a
                                                href="mod.aspx" target="frmright" class="a1">�޸�����</a>
                                </div>
								
                                <div class="wenzi2">
									��ǰ���ڣ�<%=DateTime.Now.Date.ToShortDateString().Trim()%>
                                    <a href="logout.aspx" target="_parent">
                                        �˳�</a></div>
                               
                            </div>
                           
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="height:100%" valign="top" id="tdframe">
                            <iframe frameborder="0" id="frmright" name="frmright" scrolling="auto" src="sy.aspx"
                                style="margin: 0; visibility: inherit; width: 100%; height:100%; z-index:1" onload="InitBulletin()" >
                            </iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
    <script language="javascript" type="text/javascript">
        var mobjs = null;
        var mIndex = 0;
        var mCount = 0;
        var mHandle = null;
        //��ʼ����
        function StartMusic() {
            mobjs = document.getElementsByTagName("object");
            mCount = mobjs.length;
            if (mCount > 0) {
                mIndex = 0;
                var obj = document.getElementById(mobjs[mIndex].id.replace("_Obj", ""));
                if (obj != null && obj.innerText != "0") {
                    if (typeof (mobjs[mIndex].controls) != "undefined") {
                        mobjs[mIndex].controls.play();
                    }
                }
                mHandle = window.setInterval("LoopMusic()", 2000);
            }
        }
        //ѭ������
        function LoopMusic() {
            if (typeof (mobjs[mIndex].playState) != "undefined") {
                var status = mobjs[mIndex].playState;
                if (status == 1 || status == 2 || status == 8 || status == 10) {
                    if (mIndex < mCount - 1) {
                        mIndex = mIndex + 1;
                    }
                    else {
                        mIndex = 0;
                    }
                    var obj = document.getElementById(mobjs[mIndex].id.replace("_Obj", ""));
                    if (obj != null && obj.innerText != "0") {
                        mobjs[mIndex].controls.play();
                    }
                }
            }
        }
        //ˢ��ֹͣ����
        function StopMusic() {
            if (mHandle != null) {
                window.clearInterval(mHandle);
            }
            if (mobjs != null && mobjs[mIndex] != null) {
                if (typeof (mobjs[mIndex].controls) != "undefined") {
                    mobjs[mIndex].controls.stop();
                }
            }
        }
        //�첽����
        function AjaxMusic() {
            $.ajax({
                url: 'SystemManage.ashx',
                success: function (data) {
                    StopMusic();
                    data = (new Function("return " + data))();
                    var obj;
                    for (var i in data) {
                        if (i == "ret" && data[i] == "fail") {
                            window.location.href = "Default.aspx?r=" + data["code"];
                            break;
                        }

                        obj = $("#" + i);
                        obj.text(data[i]);
                        if (i == "Balance") {
                            if (data[i] == "0.000") {
                                obj.removeClass("blue");
                                obj.addClass("red");
                            }
                            else {
                                obj.removeClass("red");
                                obj.addClass("blue");
                            }
                        }
                        else {
                            if (data[i] == "0") {
                                obj.removeClass("red");
                                obj.addClass("blue");
                            }
                            else {
                                obj.removeClass("blue");
                                obj.addClass("red");
                            }
                        }
                    }

                    StartMusic();
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (Request(window.location.href, "d") == "1") {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                        alert(errorThrown);
                    }
                },
                cache: false
            });
        }

        $(function () {
            AjaxMusic();
            window.setInterval(AjaxMusic, 60000);
        });

        function Request(url, para) {
            para = para.toLowerCase();
            var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
            var key, j;
            for (i = 0; i < paraString.length; i++) {
                j = paraString[i];
                key = j.substring(0, j.indexOf("=")).toLowerCase();
                if (key == para) {
                    return j.substring(j.indexOf("=") + 1, j.length);
                }
            }
            return "";
        }

    </script>
</body>
</html>
