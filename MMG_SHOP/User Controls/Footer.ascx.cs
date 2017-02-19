using System;
using BLL;
using Common;

public partial class user_controls_product_show : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillRepeater();
        }
    }

    private void FillRepeater()
    {
        Page_Manage ac = new Page_Manage();
        Page_ManageDatum dm = new Page_ManageDatum();
        dm.Place = "Down";
        Repeater1.DataSource = ac.Select_User(dm);
        Repeater1.DataBind();
    }
}
