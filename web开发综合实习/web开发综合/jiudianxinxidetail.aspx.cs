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

public partial class jiudianxinxidetail : System.Web.UI.Page
{
	public string njiudianmingcheng,njiudianleixing,nsuozaichengshi,nfanghao,nfangjianleixing,ntupian,njiage,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from jiudianxinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
            getdata(sql);
			//daxipixnglxun
        }
    }

	//daxigdtpixnglxun

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                njiudianmingcheng = result.Tables[0].Rows[0]["jiudianmingcheng"].ToString().Trim();
                njiudianleixing = result.Tables[0].Rows[0]["jiudianleixing"].ToString().Trim();
                nsuozaichengshi = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();
                nfanghao = result.Tables[0].Rows[0]["fanghao"].ToString().Trim();
                nfangjianleixing = result.Tables[0].Rows[0]["fangjianleixing"].ToString().Trim();
                ntupian = result.Tables[0].Rows[0]["tupian"].ToString().Trim();
                njiage = result.Tables[0].Rows[0]["jiage"].ToString().Trim();
                
                
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("yudingjiluadd.aspx?id=" + Request.QueryString["id"].ToString().Trim());
    }
}

