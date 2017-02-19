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
        if (!IsPostBack)
        {
            PublicClass p = new PublicClass();
            TextBox2.Text = p.GetDate();
            FillOneRecord();
            fill_user();
        }
        if (Request.QueryString["Id_Factor"] != null && Request.QueryString["Factor_Code"] != null &&
            Request.QueryString["Sum_Price"] != null)
        {
            Label34.Text = Request.QueryString["Id_Factor"].ToString();
            Label37.Text = Request.QueryString["Factor_Code"].ToString();
            Label55.Text = BLL.PublicClass.numberToMoney(Request.QueryString["Sum_Price"].ToString());
        }
    }
    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = "Shoping2";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label4.Text = dt.Rows[0]["title"].ToString();
            Label1.Text = dt.Rows[0]["text"].ToString();
        }
        dmo.Type = "Shoping3";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label5.Text = dt.Rows[0]["title"].ToString();
            Label6.Text = dt.Rows[0]["text"].ToString();
        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        factor_peyment_register();
        factor_condition_update();
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
        if (Request.QueryString["Id_Factor"] != null)
        {
            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"]);
        }
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
        Response.Redirect("~/index.aspx?Type=ShopPeymentEnd&Factor_Code=" + Label37.Text + "&Id_Factor=" + Label34.Text + "&Sum_Price=" + Label55.Text);
    }
}
