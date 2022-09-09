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

public partial class lvyouluxiandetail : System.Web.UI.Page
{
	public string nyoulanri,nlvyouxingzhi,njiaotonggongju,nshifachengshi,nshifadizhi,nmudichengshi,nmudidizhi,njingqumingcheng,njingqujibie,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from lvyouluxian where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nyoulanri = result.Tables[0].Rows[0]["youlanri"].ToString().Trim();                nlvyouxingzhi = result.Tables[0].Rows[0]["lvyouxingzhi"].ToString().Trim();                njiaotonggongju = result.Tables[0].Rows[0]["jiaotonggongju"].ToString().Trim();                nshifachengshi = result.Tables[0].Rows[0]["shifachengshi"].ToString().Trim();                nshifadizhi = result.Tables[0].Rows[0]["shifadizhi"].ToString().Trim();                nmudichengshi = result.Tables[0].Rows[0]["mudichengshi"].ToString().Trim();                nmudidizhi = result.Tables[0].Rows[0]["mudidizhi"].ToString().Trim();                njingqumingcheng = result.Tables[0].Rows[0]["jingqumingcheng"].ToString().Trim();                njingqujibie = result.Tables[0].Rows[0]["jingqujibie"].ToString().Trim();                
                
            }
        }
    }
    
}

