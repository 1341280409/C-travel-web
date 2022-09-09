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

public partial class lvyoujingdian_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			//addlixandxongxlz
		    jingqujibie.Items.Add("A"); jingqujibie.Items.Add("AA"); jingqujibie.Items.Add("AAA"); jingqujibie.Items.Add("AAAA"); jingqujibie.Items.Add("AAAAA"); 			//zdxlz
			//yxl2fz
			//yxlfz 
            string sql;
            sql = "select * from lvyoujingdian where id=" + Request.QueryString["id"].ToString().Trim() ;
            getdata(sql);
        }
    }

	//hsgadxdliaxndoxng

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                suozaichengshi.Text = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();                dizhi.Text = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();                jingdianmingcheng.Text = result.Tables[0].Rows[0]["jingdianmingcheng"].ToString().Trim();                jingqujibie.Text = result.Tables[0].Rows[0]["jingqujibie"].ToString().Trim();                jingqumenpiao.Text = result.Tables[0].Rows[0]["jingqumenpiao"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update lvyoujingdian set suozaichengshi='" + suozaichengshi.Text.ToString().Trim() + "',dizhi='" + dizhi.Text.ToString().Trim() + "',jingdianmingcheng='" + jingdianmingcheng.Text.ToString().Trim() + "',jingqujibie='" + jingqujibie.Text.ToString().Trim() + "',jingqumenpiao='" + jingqumenpiao.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
   
   //addxldt
   
   //xl2change
   
   //wxxlchange
}

