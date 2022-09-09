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

public partial class lvyoutupiandetail : System.Web.UI.Page
{
	public string nlvyoujingqu,njingqutupian,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from lvyoutupian where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nlvyoujingqu = result.Tables[0].Rows[0]["lvyoujingqu"].ToString().Trim();                njingqutupian = result.Tables[0].Rows[0]["jingqutupian"].ToString().Trim();                
                
            }
        }
    }
    
}

