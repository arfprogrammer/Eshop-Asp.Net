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

        if (!IsPostBack)
        {

        fill();

        }

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fill();

    }
   
   
    void fill()
    {

        Page_Manage ac = new Page_Manage();
        Page_ManageDatum dm = new Page_ManageDatum();
        dm.Place = "Right";
        GridView1.DataSource = ac.Select_User_Top(dm);
        GridView1.DataBind();
    }



}
