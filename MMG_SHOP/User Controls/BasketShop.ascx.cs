using System;
using System.Data;

using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        FillGrid();
    }

    private void FillGrid()
    {

        DataTable dt = (DataTable)Session["ProductTable"];
        GridView1.DataSource = dt;
        GridView1.DataBind();
        if (dt==null || dt.Rows.Count <= 0)
        {
            HyperLink1.Visible = false;
            Imagen.Visible = false;
        }

    }
}
