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
        fill_user_work();
    }
    private void Fill()
    {
        dm.Id = decimal.Parse(Request.Cookies["ID_User"].Value);
        DataTable dt = ac.select_one_user(dm);

        TextBox4.Text = dt.Rows[0]["Name"].ToString();
        TextBox5.Text = dt.Rows[0]["Family"].ToString();
        TextBox1.Text = dt.Rows[0]["Email"].ToString();
        TextBox6.Text = dt.Rows[0]["Tell"].ToString();
        TextBox7.Text = dt.Rows[0]["Mobile"].ToString();
        TextBox8.Text = dt.Rows[0]["Post_Code"].ToString();
        TextBox9.Text = dt.Rows[0]["Country"].ToString();
        DropDownList1.Text = dt.Rows[0]["Province"].ToString();
        TextBox10.Text = dt.Rows[0]["City"].ToString();
        TextBox11.Text = dt.Rows[0]["Address"].ToString();
        TextBox12.Text = dt.Rows[0]["Company"].ToString();


    }

    //<اطلاعات کاربر را نشان مي دهد>
    void fill_user_work()
    {
        Shoping ac2 = new Shoping();
        ShopingDatum dm2 = new ShopingDatum();

        DataSet ds = new DataSet();
        dm2.Register_Date = "";
        dm2.Id_User = decimal.Parse(Request.Cookies["ID_User"].Value);
        Label38.Text ="مشاهده ( "+ ac2.select_factor_nopeyment(dm2).Rows.Count.ToString()+ " )";
        Label4.Text = "مشاهده ( " + ac2.select_factor_peyment(dm2).Rows.Count.ToString() + " )";
        Label40.Text = "مشاهده ( " + ac2.select_factor_sended(dm2).Rows.Count.ToString() + " )";

    }
}
