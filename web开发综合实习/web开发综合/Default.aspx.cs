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

public partial class _Default : System.Web.UI.Page
{
    public string sql,ncontent;
    public string npics, nlinks, ntexts;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sql = "select top 5 id,lvyoujingqu,jingqutupian from lvyoutupian where jingqutupian<>'' and jingqutupian like '%.jpg' order by id desc";
            getsyt(sql);
            sql = "select top 9 id,title,addtime,leibie from allgonggao where leibie='旅游新闻' order by id desc";
            getdata(sql);
            sql = "select top 5 * from lvyoutupian  where jingqutupian<>'' order by id desc";
            getdata2(sql);
            sql = "select top 8 id,title,addtime,leibie from allgonggao  where leibie='旅游须知' order by id desc";
            getdata3(sql);
            sql = "select top 8 id,title,addtime,leibie from allgonggao  where leibie='站内新闻' order by id desc";
            getdata4(sql);
            //sql = "select content from dx where leibie='系统简介'";
            //getdataxtjj(sql);
        }
    }
    //private void getdataxtjj(string sql)
    //{
    //    DataSet result = new DataSet();
    //    result = new Class1().hsggetdata(sql);
    //    if (result != null)
    //    {
    //        if (result.Tables[0].Rows.Count > 0)
    //        {
    //            ncontent = result.Tables[0].Rows[0][0].ToString().Trim();
    //        }
    //    }
    //}
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
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
        }
    }
    private void getdata3(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid2.DataSource = result.Tables[0];
                DataGrid2.DataBind();
            }
            else
            {
                DataGrid2.DataSource = null;
                DataGrid2.DataBind();
            }
        }
    }
    private void getdata4(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid3.DataSource = result.Tables[0];
                DataGrid3.DataBind();
            }
            else
            {
                DataGrid3.DataSource = null;
                DataGrid3.DataBind();
            }
        }
    }
    private void getdata2(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = result.Tables[0];
                DataList1.DataBind();
            }
            else
            {
                DataList1.DataSource = null;
                DataList1.DataBind();
            }
        }
    }
    private void getsyt(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                string ttt = "";
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    ttt = result.Tables[0].Rows[i]["lvyoujingqu"].ToString().Trim();
                    ttt = ttt.Replace("'", "");
                    ttt = ttt.Replace("\"", "");
                    ttt = ttt.Replace("(", "");
                    ttt = ttt.Replace(")", "");
                    ttt = ttt.Replace("%", "");
                    ttt = ttt.Replace("!", "");
                    ttt = ttt.Replace("?", "");
                    npics = npics + result.Tables[0].Rows[i]["jingqutupian"].ToString().Trim() + "|";
                    nlinks = nlinks + "lvyoutupiandetail.aspx?id=" + result.Tables[0].Rows[i]["id"].ToString().Trim() + "|";
                    ntexts = ntexts + ttt + "|";

                }
                npics = npics.Substring(0, npics.Length - 1);
                nlinks = nlinks.Substring(0, nlinks.Length - 1);
                ntexts = ntexts.Substring(0, ntexts.Length - 1);
            }
        }
    }
    public string CutStr(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 28)
        {
            return strTmp.Substring(0, 26) + "... ";
        }
        else
        {
            return strTmp;
        }
    }
    public string CutStr2(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 28)
        {
            return strTmp.Substring(0, 26) + "... ";
        }
        else
        {
            return strTmp;
        }
    } 
}
