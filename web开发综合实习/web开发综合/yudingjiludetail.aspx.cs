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

public partial class yudingjiludetail : System.Web.UI.Page
{
	public string njiudianmingcheng,nsuozaichengshi,nfanghao,nfangjianleixing,njiage,nyudingren,nlianxifangshi,nyudingriqi,nyudingtianshu,njine,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from yudingjilu where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                njiudianmingcheng = result.Tables[0].Rows[0]["jiudianmingcheng"].ToString().Trim();                nsuozaichengshi = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();                nfanghao = result.Tables[0].Rows[0]["fanghao"].ToString().Trim();                nfangjianleixing = result.Tables[0].Rows[0]["fangjianleixing"].ToString().Trim();                njiage = result.Tables[0].Rows[0]["jiage"].ToString().Trim();                nyudingren = result.Tables[0].Rows[0]["yudingren"].ToString().Trim();                nlianxifangshi = result.Tables[0].Rows[0]["lianxifangshi"].ToString().Trim();                nyudingriqi = result.Tables[0].Rows[0]["yudingriqi"].ToString().Trim();                nyudingtianshu = result.Tables[0].Rows[0]["yudingtianshu"].ToString().Trim();                njine = result.Tables[0].Rows[0]["jine"].ToString().Trim();                
                
            }
        }
    }
    
}

