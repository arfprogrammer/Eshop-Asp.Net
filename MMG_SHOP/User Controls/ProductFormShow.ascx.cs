using System;
using System.Data;
using System.Web.UI;
using System.Web;


public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Check();
        }
    }

    private void Check()
    {
        if (Request.Cookies["ProductFormShow"] != null)
        {
            if (Request.Cookies["ProductFormShow"].Value == "DataList")
            {
                ImageButton1.Enabled = false;
                ImageButton2.Enabled = true;
            }
            else if (Request.Cookies["ProductFormShow"].Value == "Grid")
            {
                ImageButton2.Enabled = false;
                ImageButton1.Enabled = true;
            }
        }
        else
        {
            ImageButton1.Enabled = false;
            ImageButton2.Enabled = true;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies.Add(new HttpCookie("ProductFormShow", "DataList"));
        Response.Redirect(Request.RawUrl);

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cookies.Add(new HttpCookie("ProductFormShow", "Grid"));
        Response.Redirect(Request.RawUrl);


    }
}
