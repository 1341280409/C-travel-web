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
public partial class yudingjiluadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["username"] == null)
         {
           Response.Write("<script>javascript:alert('对不起，请您先登陆！');history.back();</script>");
           Response.End();
         }
		if (!IsPostBack)
        {
			//addlixandxongxlz
			//zdxlz
			//zxidoxngbixanhxao
			yudingren.Text = Session["username"].ToString().Trim();
			//yxl2fz
			//yxlfz
			
			
			  string sql = "select * from jiudianxinxi where id=" + Request.QueryString["id"].ToString().Trim();
			//ghdhdnuuk2s  string sql = "select * from jiudianxinxi where yudingren='" + Session["username"].ToString().Trim()+"'";
              DataSet result = new DataSet();
              result = new Class1().hsggetdata(sql);
              if (result != null)
              {
                if (result.Tables[0].Rows.Count > 0)
                 {
                    jiudianmingcheng.Text = result.Tables[0].Rows[0]["jiudianmingcheng"].ToString().Trim();
                    jiudianmingcheng.ReadOnly = true;
                    suozaichengshi.Text = result.Tables[0].Rows[0]["suozaichengshi"].ToString().Trim();
                    suozaichengshi.ReadOnly = true;
                    fanghao.Text = result.Tables[0].Rows[0]["fanghao"].ToString().Trim();
                    fanghao.ReadOnly = true;
                    fangjianleixing.Text = result.Tables[0].Rows[0]["fangjianleixing"].ToString().Trim();
                    fangjianleixing.ReadOnly = true;
                    jiage.Text = result.Tables[0].Rows[0]["jiage"].ToString().Trim();
                    jiage.ReadOnly = true;
                    

                 }
              }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
		//sfdigdh ischongfu("zhujianquchong");
		//ldxlqz
		//shuziyanzheng
		//bixjiaxodaxxiaotxisxhi
		double jinej=0;jinej=float.Parse(jiage.Text.ToString().Trim())*float.Parse(yudingtianshu.Text.ToString().Trim());
        sql="insert into yudingjilu(jiudianmingcheng,suozaichengshi,fanghao,fangjianleixing,jiage,yudingren,lianxifangshi,yudingriqi,yudingtianshu,jine) values('"+jiudianmingcheng.Text.ToString().Trim()+"','"+suozaichengshi.Text.ToString().Trim()+"','"+fanghao.Text.ToString().Trim()+"','"+fangjianleixing.Text.ToString().Trim()+"','"+jiage.Text.ToString().Trim()+"','"+yudingren.Text.ToString().Trim()+"','"+lianxifangshi.Text.ToString().Trim()+"','"+yudingriqi.Text.ToString().Trim()+"','"+yudingtianshu.Text.ToString().Trim()+"','"+jinej+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        sql = "update jiudianxinxi set issh='是'  where id='" + Request.QueryString["id"].ToString().Trim() + "'";
        result = new Class1().hsgexucute(sql);

        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');location.href='jiudianxinxilist.aspx'</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
	
	//addxldt
	
	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('提示,qxuchoxngtxishxi已存在,不要重复添加');location.href='yudingjiluadd.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

