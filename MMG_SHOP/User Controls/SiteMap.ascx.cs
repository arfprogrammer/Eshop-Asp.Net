using System;
using System.Data;

using BLL;
using Common;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Fill();
       }
    }

    public void Fill()
    {


    }


    public void SetMetaTags(string title, string description, string keywords)
    {
    }


}
