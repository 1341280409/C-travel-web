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

public partial class yudingjilu_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			//addlixandxongxlz
		    //zdxlz
			//yxl2fz
			//yxlfz 
            string sql;
            sql = "select * from yudingjilu where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                jiudianmingcheng.Text = result.Tables[0].Rows[0]["jiudianmingcheng"].ToString().Trim();                suozaichengshi.Text = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();                fanghao.Text = result.Tables[0].Rows[0]["fanghao"].ToString().Trim();                fangjianleixing.Text = result.Tables[0].Rows[0]["fangjianleixing"].ToString().Trim();                jiage.Text = result.Tables[0].Rows[0]["jiage"].ToString().Trim();                yudingren.Text = result.Tables[0].Rows[0]["yudingren"].ToString().Trim();                lianxifangshi.Text = result.Tables[0].Rows[0]["lianxifangshi"].ToString().Trim();                yudingriqi.Text = DateTime.Parse(result.Tables[0].Rows[0]["yudingriqi"].ToString().Trim()).ToShortDateString();                yudingtianshu.Text = result.Tables[0].Rows[0]["yudingtianshu"].ToString().Trim();                jine.Text = result.Tables[0].Rows[0]["jine"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update yudingjilu set jiudianmingcheng='" + jiudianmingcheng.Text.ToString().Trim() + "',suozaichengshi='" + suozaichengshi.Text.ToString().Trim() + "',fanghao='" + fanghao.Text.ToString().Trim() + "',fangjianleixing='" + fangjianleixing.Text.ToString().Trim() + "',jiage='" + jiage.Text.ToString().Trim() + "',yudingren='" + yudingren.Text.ToString().Trim() + "',lianxifangshi='" + lianxifangshi.Text.ToString().Trim() + "',yudingriqi='" + yudingriqi.Text.ToString().Trim() + "',yudingtianshu='" + yudingtianshu.Text.ToString().Trim() + "',jine='" + jine.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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

