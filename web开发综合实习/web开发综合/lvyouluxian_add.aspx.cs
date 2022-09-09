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

public partial class lvyouluxian_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			//addlixandxongxlz
			jingqujibie.Items.Add("A"); jingqujibie.Items.Add("AA"); jingqujibie.Items.Add("AAA"); jingqujibie.Items.Add("AAAA"); jingqujibie.Items.Add("AAAAA"); 			//zdxlz
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
		
        sql="insert into lvyouluxian(youlanri,lvyouxingzhi,jiaotonggongju,shifachengshi,shifadizhi,mudichengshi,mudidizhi,jingqumingcheng,jingqujibie) values('"+youlanri.Text.ToString().Trim()+"','"+lvyouxingzhi.Text.ToString().Trim()+"','"+jiaotonggongju.Text.ToString().Trim()+"','"+shifachengshi.Text.ToString().Trim()+"','"+shifadizhi.Text.ToString().Trim()+"','"+mudichengshi.Text.ToString().Trim()+"','"+mudidizhi.Text.ToString().Trim()+"','"+jingqumingcheng.Text.ToString().Trim()+"','"+jingqujibie.Text.ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
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
                    Response.Write("<script>javascript:alert('提示,qxuchoxngtxishxi已存在,不要重复添加');location.href='lvyouluxian_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

