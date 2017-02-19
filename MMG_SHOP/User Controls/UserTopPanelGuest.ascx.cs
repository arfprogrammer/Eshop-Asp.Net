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
    user ac = new user();
    userDatum dm = new userDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Email = TextTitle.Text;
        dm.Pass = TextBox1.Text;
        DataTable dt = ac.Check_Login(dm);
        if (dt.Rows.Count>0)
        {
            Response.Cookies.Add(new HttpCookie("Family_User",dt.Rows[0]["name"].ToString()+" "+dt.Rows[0]["family"].ToString()));
            Response.Cookies.Add(new HttpCookie("Email_User", TextTitle.Text));
            Response.Cookies.Add(new HttpCookie("Id_User", dt.Rows[0]["id"].ToString()));

            Response.Cookies.Add(new HttpCookie("Login_User", "True"));


            Response.Redirect(Request.RawUrl);
        }
        else
        {
            lblError.Visible = true;
        }
    }
}
