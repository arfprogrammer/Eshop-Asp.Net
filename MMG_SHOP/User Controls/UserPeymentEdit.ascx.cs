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

        if (!IsPostBack)
        {
        }

        fill_peyment();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        factor_peyment_register();
    }

    
    //<اطلاعات فيش واريزي را نشان دهد>
    void fill_peyment()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        DataSet ds = new DataSet();

        if (Request.QueryString["Id_Factor"] != null && Request.QueryString["Factor_Code"] != null  &&
            Request.Cookies["Id_User"] != null)
        {

            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"]);
            dm.Factor_Code = Request.QueryString["Factor_Code"];
            dm.Id_User = decimal.Parse(Request.Cookies["Id_User"].Value);
       }


        DataTable dt = ac.select_factor_one(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["peyment_code"].ToString();
            TextBox9.Text = dt.Rows[0]["bank_code"].ToString();
            TextBox2.Text = dt.Rows[0]["peyment_date"].ToString();
            TextBox3.Text = dt.Rows[0]["peyment_price"].ToString();
            TextBox4.Text = dt.Rows[0]["customer_name"].ToString();
            TextBox5.Text = dt.Rows[0]["customer_tell"].ToString();
            TextBox6.Text = dt.Rows[0]["customer_time_recive"].ToString();
            TextBox7.Text = dt.Rows[0]["customer_address"].ToString();
            TextBox8.Text = dt.Rows[0]["description"].ToString();
            if (dt.Rows[0]["peyment_kind"].ToString() == "واريز به حساب")
            {
                RadioButton2.Checked = true;
                RadioButton1.Checked = false;
            }
            else
            {
                RadioButton2.Checked = false;
                RadioButton1.Checked = true;
            }
            if (dt.Rows[0]["bank_name"].ToString().Length > 0)
            {
                DropDownList1.Items.FindByText(dt.Rows[0]["bank_name"].ToString()).Selected = true;
            }
            if (TextBox2.Text.Length == 0)
            {
                fill_user();
                PublicClass p = new PublicClass();
                TextBox2.Text = p.GetDate();

            }

        }
    }
    void fill_user()
    {
        user ac = new user();
        userDatum dm = new userDatum();

        dm.Id = decimal.Parse(Request.Cookies["Id_User"].Value);
        DataTable dt = ac.select_one_user(dm);
        TextBox4.Text = dt.Rows[0]["name"].ToString()+" " + dt.Rows[0]["family"].ToString();
        TextBox5.Text = dt.Rows[0]["tell"].ToString() + " - " + dt.Rows[0]["mobile"].ToString();
        TextBox7.Text = dt.Rows[0]["address"].ToString();

    }
    void factor_condition_update()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        PublicClass pc = new PublicClass();

        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"]);

        dm.Factor_Condition = "در تاریخ " + pc.GetDate() + " مبلغ واریز شد";
        ac.Update_Factor_Condition(dm);
    }

    void factor_peyment_register()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"]);
        

        if (RadioButton1.Checked)
        {
            dm.Peyment_Kind = "پرداخت اینترنتی";
        }
        if (RadioButton2.Checked)
        {
            dm.Peyment_Kind = "واريز به حساب";
        }

        dm.Bank_Name = DropDownList1.SelectedItem.Text;

        dm.Peyment_Code = TextBox1.Text;
        dm.Bank_Code = TextBox9.Text;
        dm.Peyment_Date = TextBox2.Text;
        dm.Peyment_Price = decimal.Parse(TextBox3.Text);
        dm.Customer_Name = TextBox4.Text;
        dm.Customer_Tell = TextBox5.Text;
        dm.Customer_Time_Recive = TextBox6.Text;
        dm.Customer_Address = TextBox7.Text;
        dm.Description = TextBox8.Text;

        ac.Update_Peyment_Factor(dm);
        factor_condition_update();

        Response.Redirect("~/index.aspx?Type=UserOrder");
    }

}
