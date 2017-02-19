using System;
using System.Data;
using BLL;
using Common;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fill();
    }

    void fill()
    {

        Page_Manage ac = new Page_Manage();
        Page_ManageDatum dm = new Page_ManageDatum();
        dm.Place = "Right";
        GridView1.DataSource = ac.Select_User_Top(dm);
        GridView1.DataBind();
        if (GridView1.Rows.Count > 0)
        {
            Archive.Visible = true;
        }
        else
        {
            Archive.Visible = false;
        }

    }
   
}
