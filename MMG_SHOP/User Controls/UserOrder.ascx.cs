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
using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login_User"] != null)
        {
            if (!bool.Parse(Request.Cookies["Login_User"].Value))
            {
                Response.Redirect("~/index.aspx?Type=404");
            }
        }
        else
        {
            Response.Redirect("~/index.aspx?Type=404");
        }

        if (!IsPostBack)
        {

        fill_factor();

        }

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fill_factor();

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx?Page=user_pass_edit");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx?Page=user_profile");

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx?Page=user_edit");
    }
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    //-----------------------------------------------------------------------------------------------------------//
    void fill_factor()
    {

        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        dm.Id_User = decimal.Parse(Request.Cookies["Id_User"].Value);

        if (Request.QueryString["Kind"] == "NoPayment")
        {
            GridView1.DataSource = ac.select_factor_nopeyment(dm);
        }
        else if (Request.QueryString["Kind"] == "Payment")
        {
            GridView1.DataSource = ac.select_factor_peyment(dm);
        }
        else if (Request.QueryString["Kind"] == "Sended")
        {
            GridView1.DataSource = ac.select_factor_sended(dm);
        }
        else if (Request.QueryString["Kind"] == "All")
        {
            GridView1.DataSource = ac.select_factor_all_User(dm);
        }
        else
        {
            GridView1.DataSource = ac.select_factor_all_User(dm);

        }

        GridView1.DataBind();

    }



}
