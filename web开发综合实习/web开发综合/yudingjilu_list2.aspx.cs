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

public partial class yudingjilu_list2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
			//zdxlz
			//yxl2fz
			//yxlfz
			//addlixandxongxlz
            string sql;
            sql = "select * from yudingjilu where yudingren ='" + Session["username"].ToString().Trim() + "' order by id desc";
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
				 
                 int i = 0;
                  double njine = 0;
                 for (i = 0; i < result.Tables[0].Rows.Count; i++)
                 {
                    njine = njine + float.Parse(result.Tables[0].Rows[i]["jine"].ToString().Trim());
                 }
                   Label1.Text = Label1.Text + "，共计金额："+njine;
				
                //txixxingjxisuxan int k = 0;
                //txixxingjxisuxan for (k = 0; k < result.Tables[0].Rows.Count; k++)
                //txixxingjxisuxan {
                //txixxingjxisuxan    //txixgihxngjs
                //txixxingjxisuxan }
				
				//youzuiping1;
				//zuxipxingjxisuxan int j = 0;
                //zuxipxingjxisuxan for (j = 0; j < result.Tables[0].Rows.Count; j++)
                //zuxipxingjxisuxan {
                //zuxipxingjxisuxan    yoxuzuxipxinxg2
                //zuxipxingjxisuxan }
				//zuxipxingjxisuxan Label1.Text = Label1.Text + "，youxzuxixpixng3;
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
        sql = "select * from yudingjilu where yudingren ='" + Session["username"].ToString().Trim() + "' ";
        if (jiudianmingcheng.Text.ToString().Trim()!="" ){ sql=sql+" and jiudianmingcheng like '%" + jiudianmingcheng.Text.ToString().Trim() + "%'";}        if (suozaichengshi.Text.ToString().Trim()!="" ){ sql=sql+" and suozaichengshi like '%" + suozaichengshi.Text.ToString().Trim() + "%'";}                if (fangjianleixing.Text.ToString().Trim()!="" ){ sql=sql+" and fangjianleixing like '%" + fangjianleixing.Text.ToString().Trim() + "%'";}                                                        
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from yudingjilu where yudingren ='" + Session["username"].ToString().Trim() + "' order by id desc";
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
	
	//addxldt
	
	//wxxlchange
	
}

