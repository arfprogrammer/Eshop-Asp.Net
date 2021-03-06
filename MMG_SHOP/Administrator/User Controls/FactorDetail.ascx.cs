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
            fill_factor();
            OneRecord ac = new OneRecord();
            OneRecordDatum dm = new OneRecordDatum();
            int maliat = 0;
            DataTable dt;
            dm.Type = "Maliat";
            dt = ac.SelectOne(dm);
            if (dt.Rows.Count > 0)
            {
                maliat = int.Parse(dt.Rows[0]["text"].ToString());
            }
            Label9.Text = maliat.ToString() + "% مالیات :"; 

        }

    }
    void fill_factor()
    {
        int userid;
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        DataSet ds = new DataSet();
        decimal Sum_Price;
        decimal All_Sum_Price = 0;
        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
        GridView1.DataSource = ac.select_factor_detail(dm);
        GridView1.DataBind();
        DataTable dt = ac.select_factor_one(dm);
        userid=int.Parse(dt.Rows[0]["id_user"].ToString());
        Label38.Text = Request.QueryString["Id_Factor"].ToString();
        Label22.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["sum_price"].ToString());
        TextBox11.Text = dt.Rows[0]["send_price"].ToString();
        TextBox10.Text = dt.Rows[0]["tasx"].ToString();
        TextBoxTakhfif.Text = dt.Rows[0]["Discount"].ToString();
        Label40.Text = dt.Rows[0]["factor_condition"].ToString();
        Label2.Text = dt.Rows[0]["date_register"].ToString();
        Label4.Text = dt.Rows[0]["peyment_date"].ToString();
        txtDescription.Text = dt.Rows[0]["description"].ToString();
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            Sum_Price = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("Label14"))).Text);
            All_Sum_Price = All_Sum_Price + Sum_Price;
        }
        Label15.Text = BLL.PublicClass.numberToMoney(All_Sum_Price.ToString());





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


        if (Label4.Text.Length == 0)
        {
            Label4.Text = "هنوز ثبت نشده است";
            FillUser(decimal.Parse(dt.Rows[0]["ID_User"].ToString()));
        }
        Label7.Text = dt.Rows[0]["date_send"].ToString();
        if (Label7.Text.Length == 0)
        {
            Label7.Text = "هنوز ارسال نشده است";
        }

        TextBox12.Text = new BLL.user().select_one_user(new userDatum() { Id =userid }).Rows[0]["post_code"].ToString();
    }

    private void FillUser(decimal ID_User)
    {
        user ac = new user();
        userDatum dm = new userDatum();

        dm.Id = ID_User;
        DataTable dt = ac.select_one_user(dm);
        TextBox4.Text = dt.Rows[0]["name"].ToString()+" " + dt.Rows[0]["family"].ToString();
        TextBox5.Text = dt.Rows[0]["tell"].ToString() + " - " + dt.Rows[0]["mobile"].ToString();
        TextBox7.Text = dt.Rows[0]["address"].ToString();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Factor_Payment_Update();
        factor_condition_update();

    }

    void Factor_Payment_Update()
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
        Label20.Visible = true;
        Label20.Text = "اطلاعات به روز شد";
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
    void factor_condition_update2()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        PublicClass pc = new PublicClass();

        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"]);

        dm.Factor_Condition = "در تاریخ " + pc.GetDate() + " سفارش ارسال شد";
        ac.Update_Factor_Condition(dm);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Factor_Payment_Update();
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        PublicClass pc = new PublicClass();
        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
        dm.Date_Send = pc.GetDate();
        dm.Send_Product = true ;
        dm.Factor_Condition = " در تاریخ " + pc.GetDate() + " سفارش ارسال شد";
        ac.Update_Send_Factor(dm);
        Label20.Visible = true;
        Label20.Text = "ارسال سفارش تایید شد";
        factor_condition_update2();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        PublicClass pc = new PublicClass();
            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
            dm.Date_Agreement_Factor = pc.GetDate();
            dm.Factor_Agreement = "False";
            dm.Factor_Condition = " در تاریخ " + pc.GetDate() + " سفارش لغو شد";
            ac.Update_Factor_Agreement(dm);
        Label20.Visible = true;
        Label20.Text = "سفارش لغو شد";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        Calcuate();
        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
        dm.Discount = decimal.Parse(TextBoxTakhfif.Text);
        dm.Tasx = decimal.Parse(TextBox10.Text);
        dm.Send_Price = decimal.Parse(TextBox11.Text);
        dm.Sum_Price=decimal.Parse(Label22.Text);
        dm.Description = txtDescription.Text;
        ac.Factor_Update_Takhfif(dm);
        Label19.Visible = true;
    }

    void Calcuate()
    {
        decimal Discount=decimal.Parse(TextBoxTakhfif.Text);
        decimal Tasx = decimal.Parse(TextBox10.Text);
        decimal Sum_Price=decimal.Parse(Label15.Text);
        decimal HazineErsal = decimal.Parse(TextBox11.Text);
        decimal All_Sum_Price = Sum_Price - Discount + HazineErsal + Tasx;
        Label22.Text = BLL.PublicClass.numberToMoney(All_Sum_Price.ToString());

    }
}
