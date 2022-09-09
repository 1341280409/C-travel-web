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

public partial class qttop : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqllb = "select distinct(leibie) from allgonggao";
        DataSet resultlb = new DataSet();
        resultlb = new Class1().hsggetdata(sqllb);
        if (resultlb != null)
        {
            if (resultlb.Tables[0].Rows.Count > 0)
            {
                int ilb = 0;
                for (ilb = 0; ilb < resultlb.Tables[0].Rows.Count; ilb++)
                {
                    lb.Items.Add(resultlb.Tables[0].Rows[ilb][0].ToString().Trim());
                }
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=" + lb.Text.ToString().Trim() + "&keyword=" + keyword.Text.ToString().Trim());
    }
}
