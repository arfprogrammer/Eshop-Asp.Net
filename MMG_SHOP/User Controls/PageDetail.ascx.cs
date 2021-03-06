using System;
using System.Data;

using BLL;
using Common;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Page_Manage ac = new Page_Manage();
    Page_ManageDatum dm = new Page_ManageDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill();
       }
    }

    public void Fill()
    {

        dm.Id = decimal.Parse(Request.QueryString["ID_Page"].ToString());


        DataTable dt = ac.Select_page_One(dm);
        if (dt.Rows.Count > 0)
        {
            if (bool.Parse(dt.Rows[0]["Show_Page"].ToString()))
            {
                update_number_view();

                Label1.Text = dt.Rows[0]["title"].ToString();
                Label1.NavigateUrl = "~/index.aspx?ID_Page=" + dm.Id.ToString();

                Label12.Text = dt.Rows[0]["text"].ToString();
                Label3.Text = (int.Parse( dt.Rows[0]["page_view"].ToString())+1).ToString();
                Label4.Text = dt.Rows[0]["date_send"].ToString();

                SetMetaTags(  dt.Rows[0]["title"].ToString(),
                    dt.Rows[0]["MetaDescription"].ToString(),
                    dt.Rows[0]["MetaKeyword"].ToString());
            }
            else
            {
                Response.Redirect("~/index.aspx?Type=404");
            }
        }
        else
        {
            Response.Redirect("~/index.aspx?Type=404");
        }

    }


    public void SetMetaTags(string title, string description, string keywords)
    {
        System.Web.UI.HtmlControls.HtmlHead headTag = (HtmlHead)Page.Header;
        headTag.Title = title;
        HtmlMeta metaTag = new HtmlMeta();
        metaTag.Name = "Description";
        metaTag.Content = description;
        headTag.Controls.Add(metaTag);
        metaTag = new HtmlMeta();
        metaTag.Name = "Keywords";
        metaTag.Content = keywords;
        headTag.Controls.Add(metaTag);
    }


    public void update_number_view()
    {
        dm.Id = decimal.Parse(Request.QueryString["ID_Page"].ToString());
        ac.Update_Page_View(dm);
    }
}
