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

public partial class lvyoutupianlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		//xxuyxaodxenglxu
        if (!IsPostBack)
        {
			//zdxlz
			//yxl2fz
			//yxlfz
			//addlixandxongxlz
            string sql;
            sql = "select * from lvyoutupian order by id desc";
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from lvyoutupian where 1=1";
        if (lvyoujingqu.Text.ToString().Trim()!="" ){ sql=sql+" and lvyoujingqu like '%" + lvyoujingqu.Text.ToString().Trim() + "%'";}
        
        
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from lvyoutupian order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 
     protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("lvyoutupianlisttp.aspx");
    }
	
	//addxldt
	
	//wxxlchange
}

