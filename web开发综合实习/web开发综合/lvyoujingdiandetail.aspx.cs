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

public partial class lvyoujingdiandetail : System.Web.UI.Page
{
	public string nsuozaichengshi,ndizhi,njingdianmingcheng,njingqujibie,njingqumenpiao,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from lvyoujingdian where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nsuozaichengshi = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();                ndizhi = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();                njingdianmingcheng = result.Tables[0].Rows[0]["jingdianmingcheng"].ToString().Trim();                njingqujibie = result.Tables[0].Rows[0]["jingqujibie"].ToString().Trim();                njingqumenpiao = result.Tables[0].Rows[0]["jingqumenpiao"].ToString().Trim();                
                
            }
        }
    }
    
}

