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

public partial class Administrator_Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["cIaptTchaS"] != null && Session["cIaptTchaS"].ToString().ToLower() == TextBox3.Text.ToLower())
        {
            Admin ac = new Admin();
            AdminDatum dm = new AdminDatum();
            dm.UserName = TextBox1.Text;
            dm.Password = TextBox2.Text;
            DataTable dt = ac.CheckLogin(dm);

            if (dt.Rows.Count > 0)
            {
                Response.Cookies.Add(new HttpCookie("ID_Admin", dt.Rows[0]["id"].ToString()));
                Response.Cookies.Add(new HttpCookie("Username", dt.Rows[0]["Username"].ToString()));
                Response.Redirect("~/administrator/index.aspx");
            }
            else
            {
                Label1.Text = "نام کاربری یا رمز اشتباه است";
                Label1.Visible = true;
            }
        }
        else
        {
            Label1.Text = "کد امنیتی وارد شده اشتباه است";
            Label1.Visible = true;
        }
    }
}



