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

public partial class lvyouluxian_list : System.Web.UI.Page
{
	//tixxixngdixngyxi
    protected void Page_Load(object sender, EventArgs e)
    {
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
	
	private void addxiala(string ntable, string nzd)
    {
        string sql;
        sql = "select "+nzd+" from "+ntable+" order by id desc";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
           {
                int i = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    //xsbwghtresxds.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
					
                }
            }
        }
    }
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
                //fwgtonssgji
                //fwgtonssgji int i = 0;
                //fwgtonssgji fiewogdh
                //fwgtonssgji for (i = 0; i < result.Tables[0].Rows.Count; i++)
                //fwgtonssgji {
                //fwgtonssgji    gtrhtrhthtr
                //fwgtonssgji }
                //fwgtonssgji grththyjte2
				
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
        sql = "select * from lvyouluxian where 1=1";
        if (youlanri.Text.ToString().Trim()!="" ){ sql=sql+" and youlanri like '%" + youlanri.Text.ToString().Trim() + "%'";}        if (lvyouxingzhi.Text.ToString().Trim()!="" ){ sql=sql+" and lvyouxingzhi like '%" + lvyouxingzhi.Text.ToString().Trim() + "%'";}                if (shifachengshi.Text.ToString().Trim()!="" ){ sql=sql+" and shifachengshi like '%" + shifachengshi.Text.ToString().Trim() + "%'";}                if (mudichengshi.Text.ToString().Trim()!="" ){ sql=sql+" and mudichengshi like '%" + mudichengshi.Text.ToString().Trim() + "%'";}                if (jingqumingcheng.Text.ToString().Trim()!="" ){ sql=sql+" and jingqumingcheng like '%" + jingqumingcheng.Text.ToString().Trim() + "%'";}        if (jingqujibie.Text.ToString().Trim()=="所有" ){ sql=sql+" and jingqujibie like '%A%'";}
        if (jingqujibie.Text.ToString().Trim() == "A") { sql = sql + " and jingqujibie= 'A'"; }
        if (jingqujibie.Text.ToString().Trim() == "AA") { sql = sql + " and jingqujibie= 'AA'"; }
        if (jingqujibie.Text.ToString().Trim() == "AAA") { sql = sql + " and jingqujibie= 'AAA'"; }
        if (jingqujibie.Text.ToString().Trim() == "AAAA") { sql = sql + " and jingqujibie= 'AAAA'"; }
        if (jingqujibie.Text.ToString().Trim() == "AAAAA") { sql = sql + " and jingqujibie= 'AAAAA'"; }
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
        string sql;
        sql = "select * from lvyouluxian order by id desc";

        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);

        new Class1().ToExcel(DataGrid1, "lvyouluxian");
    }
	
	//addxldt
	
	//wxxlchange
}

