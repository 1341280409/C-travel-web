using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class lvyoutupian_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			//addlixandxongxlz
			//zdxlz
			//zxidoxngbixanhxao
            
			//yxl2fz
			//yxlfz 
			
			//ghdhdnuuk1s  string sql = "select * from laxizxilxiebxiao where id=" + Request.QueryString["id"].ToString().Trim();
			//ghdhdnuuk2s  string sql = "select * from laxizxilxiebxiao where hsgzhujian='" + Session["username"].ToString().Trim()+"'";
            //ghdhdnuuks  DataSet result = new DataSet();
            //ghdhdnuuks  result = new Class1().hsggetdata(sql);
            //ghdhdnuuks  if (result != null)
            //ghdhdnuuks  {
            //ghdhdnuuks    if (result.Tables[0].Rows.Count > 0)
            //ghdhdnuuks     {
                    //lsiebigsaodguqdufz

            //ghdhdnuuks     }
            //ghdhdnuuks  }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		//shuziyanzheng
        string sql;
		//qiuji
		//bixjiaxodaxxiaotxisxhi
		//sfdigdh ischongfu("zhujianquchong");
		//ldxlqz
		
        sql="insert into lvyoutupian(lvyoujingqu,jingqutupian) values('"+lvyoujingqu.Text.ToString().Trim()+"','"+jingqutupian.Text.ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('��ӳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ�����������ݿ���������');</script>");
        }
    }
	
	//addxldt

	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('��ʾ,qxuchoxngtxishxi�Ѵ���,��Ҫ�ظ����');location.href='lvyoutupian_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

