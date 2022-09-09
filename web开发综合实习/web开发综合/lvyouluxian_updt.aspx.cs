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

public partial class lvyouluxian_updt : System.Web.UI.Page
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
            sql = "select * from lvyouluxian where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                youlanri.Text = result.Tables[0].Rows[0]["youlanri"].ToString().Trim();                lvyouxingzhi.Text = result.Tables[0].Rows[0]["lvyouxingzhi"].ToString().Trim();                jiaotonggongju.Text = result.Tables[0].Rows[0]["jiaotonggongju"].ToString().Trim();                shifachengshi.Text = result.Tables[0].Rows[0]["shifachengshi"].ToString().Trim();                shifadizhi.Text = result.Tables[0].Rows[0]["shifadizhi"].ToString().Trim();                mudichengshi.Text = result.Tables[0].Rows[0]["mudichengshi"].ToString().Trim();                mudidizhi.Text = result.Tables[0].Rows[0]["mudidizhi"].ToString().Trim();                jingqumingcheng.Text = result.Tables[0].Rows[0]["jingqumingcheng"].ToString().Trim();                jingqujibie.Text = result.Tables[0].Rows[0]["jingqujibie"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update lvyouluxian set youlanri='" + youlanri.Text.ToString().Trim() + "',lvyouxingzhi='" + lvyouxingzhi.Text.ToString().Trim() + "',jiaotonggongju='" + jiaotonggongju.Text.ToString().Trim() + "',shifachengshi='" + shifachengshi.Text.ToString().Trim() + "',shifadizhi='" + shifadizhi.Text.ToString().Trim() + "',mudichengshi='" + mudichengshi.Text.ToString().Trim() + "',mudidizhi='" + mudidizhi.Text.ToString().Trim() + "',jingqumingcheng='" + jingqumingcheng.Text.ToString().Trim() + "',jingqujibie='" + jingqujibie.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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

