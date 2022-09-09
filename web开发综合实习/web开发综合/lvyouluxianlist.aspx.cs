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

public partial class lvyouluxianlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		//xxuyxaodxenglxu
        if (!IsPostBack)
        {
			jingqujibie.Items.Add("所有");jingqujibie.Items.Add("A"); jingqujibie.Items.Add("AA"); jingqujibie.Items.Add("AAA"); jingqujibie.Items.Add("AAAA"); jingqujibie.Items.Add("AAAAA"); 			//zdxlz
			//yxl2fz
			//yxlfz
			//addlixandxongxlz
            string sql;
            sql = "select * from lvyouluxian order by id desc";
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
        sql = "select * from lvyouluxian where 1=1";
        if (youlanri.Text.ToString().Trim()!="" ){ sql=sql+" and youlanri like '%" + youlanri.Text.ToString().Trim() + "%'";}        if (lvyouxingzhi.Text.ToString().Trim()!="" ){ sql=sql+" and lvyouxingzhi like '%" + lvyouxingzhi.Text.ToString().Trim() + "%'";}                if (shifachengshi.Text.ToString().Trim()!="" ){ sql=sql+" and shifachengshi like '%" + shifachengshi.Text.ToString().Trim() + "%'";}                if (mudichengshi.Text.ToString().Trim()!="" ){ sql=sql+" and mudichengshi like '%" + mudichengshi.Text.ToString().Trim() + "%'";}                if (jingqumingcheng.Text.ToString().Trim()!="" ){ sql=sql+" and jingqumingcheng like '%" + jingqumingcheng.Text.ToString().Trim() + "%'";}        if (jingqujibie.Text.ToString().Trim()!="所有" ){ sql=sql+" and jingqujibie like '%" + jingqujibie.Text.ToString().Trim() + "%'";}        
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from lvyouluxian order by id desc";
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
        Response.Redirect("lvyouluxianlisttp.aspx");
    }
	
	//addxldt
	
	//wxxlchange
}

