using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_news_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Article_Click(object sender, EventArgs e)
    {
        Session["NewsID"] = ((Button)sender).CommandArgument;
        Response.Redirect("~/pages/news/NewsArticle.aspx");
    }
}