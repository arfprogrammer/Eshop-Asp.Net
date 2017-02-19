using System;
using System.Data;

using BLL;
using Common;
using System.Web;
public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    user ac = new user();
    userDatum dm = new userDatum();

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

        Fill();
    }
    private void Fill()
    {
        dm.Id = decimal.Parse(Request.Cookies["Id_User"].Value);
        DataTable dt = ac.select_one_user(dm);

        TextBox4.Text = dt.Rows[0]["Name"].ToString();
        TextBox5.Text = dt.Rows[0]["Family"].ToString();
        TextBox6.Text = dt.Rows[0]["Tell"].ToString();
        TextBox7.Text = dt.Rows[0]["Mobile"].ToString();
        TextBox8.Text = dt.Rows[0]["Post_Code"].ToString();
        TextBox9.Text = dt.Rows[0]["Country"].ToString();
        DropDownList1.Text = dt.Rows[0]["Province"].ToString();
        TextBox10.Text = dt.Rows[0]["City"].ToString();
        TextBox11.Text = dt.Rows[0]["Address"].ToString();
        DropDownList2.Text = dt.Rows[0]["How_Find"].ToString();

        CheckBox1.Checked = bool.Parse(dt.Rows[0]["Recive_News"].ToString());

        TextBox2.Text = dt.Rows[0]["Pass"].ToString();
        HiddenField1.Value = dt.Rows[0]["Pass"].ToString();

        TextBox12.Text = dt.Rows[0]["Company"].ToString();

        TextBox1.Text = dt.Rows[0]["Email"].ToString();
        HiddenField2.Value= dt.Rows[0]["Email"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Email = TextBox1.Text;
        if (ac.CheckUserExist(dm) && HiddenField2.Value != TextBox1.Text)
        {
            Label18.Visible = true;
        }
        else
        {
            dm.Name = TextBox4.Text;
            dm.Family = TextBox5.Text;
            dm.Tell = TextBox6.Text;
            dm.Mobile = TextBox7.Text;
            dm.Post_Code = TextBox8.Text;
            dm.Country = TextBox9.Text;
            dm.Province = DropDownList1.Text;
            dm.City = TextBox10.Text;
            dm.Address = TextBox11.Text;
            dm.How_Find = DropDownList2.Text;

            dm.Recive_News = CheckBox1.Checked.ToString();

            if (TextBox2.Text.Trim().Length > 0)
            {
                dm.Pass = TextBox2.Text;
            }
            else
            {
                dm.Pass = HiddenField1.Value;
            }
            dm.Company = TextBox12.Text;

            ac.Update_User(dm);
            Response.Cookies.Add(new HttpCookie("Family_User", TextBox5.Text));
            Response.Cookies.Add(new HttpCookie("Email_User", TextBox1.Text));

            Response.Redirect("~/index.aspx?Type=EditOK");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
}
