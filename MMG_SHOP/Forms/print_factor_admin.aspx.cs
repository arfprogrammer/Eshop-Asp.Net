using System;
using System.Data;
using BLL;
using Common;
using System.Web.UI.WebControls;

public partial class forms_print_factor1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["ID_Admin"] == null)
        {
            Response.Redirect("~/index.aspx?Type=404");
        }

        check_factor();
        FillOneRecord();

    }



    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = "Print1";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["text"].ToString();
        }
        dmo.Type = "Print2";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["text"].ToString();
        }
        int maliat = 0;
        dmo.Type = "Maliat";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            maliat = int.Parse(dt.Rows[0]["text"].ToString());
        }
        Label33.Text = maliat.ToString() + "% مالیات :"; 

    }
    //<اطلاعات فاکتور را نمايش مي دهد>
    void fill_factor()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        DataSet ds = new DataSet();
        decimal Sum_Price;
        decimal All_Sum_Price = 0;

        if (Request.QueryString["Id_Factor"] != null && Request.QueryString["Id_Factor"].Length > 0)
        {
            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
           
            GridView1.DataSource = ac.select_factor_detail(dm);
            GridView1.DataBind();

            DataTable dt = ac.select_factor_one(dm);
            Label10.Text = dt.Rows[0]["date_register"].ToString();
            Label11.Text = dt.Rows[0]["id"].ToString();
            Label20.Text = dt.Rows[0]["factor_code"].ToString();

            Label32.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["sum_price"].ToString());
            Label31.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["send_price"].ToString());
            Label34.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["tasx"].ToString());
            if (Label34.Text.Trim() == "0")
            {
                Label33.Visible = false;
                Label34.Visible = false;
                Image3.Visible = false;
            }

            Label44.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["discount"].ToString());
            if (Label44.Text.Trim() == "0")
            {
                Label43.Visible = false;
                Label44.Visible = false;
                Image5.Visible = false;
            }

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                Sum_Price = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("Label24"))).Text);
                All_Sum_Price = All_Sum_Price + Sum_Price;

            }
            Label36.Text =BLL.PublicClass.numberToMoney( All_Sum_Price.ToString());
            //Label47.Text = ds.Tables[0].Rows[0]["bank_name"].ToString();
            //Label42.Text = ds.Tables[0].Rows[0]["peyment_code"].ToString();
            //Label49.Text = ds.Tables[0].Rows[0]["bank_code"].ToString();
            //Label51.Text = ds.Tables[0].Rows[0]["peyment_date"].ToString();
            //Label53.Text = ds.Tables[0].Rows[0]["peyment_price"].ToString();
            //Label56.Text = ds.Tables[0].Rows[0]["customer_name"].ToString();

            //Label62.Text = ds.Tables[0].Rows[0]["customer_time_recive"].ToString();

            //Label66.Text = ds.Tables[0].Rows[0]["description"].ToString();
            lbDescription.Text = dt.Rows[0]["description"].ToString();
                
        }
    }

    //<اطلاعات کاربر  را نمايش مي دهد>
    void fill_user()
    {
        user ac = new user();
        userDatum dm = new userDatum();
        DataSet ds = new DataSet();
        if (Request.QueryString["Id_User"] != null && Request.QueryString["Id_User"].Length > 0)
        {
            dm.Id = decimal.Parse(Request.QueryString["Id_User"].ToString());
            DataTable dt = ac.select_one_user(dm);

            Label16.Text = dt.Rows[0]["company"].ToString();
            Label19.Text = dt.Rows[0]["email"].ToString();
            Label17.Text = dt.Rows[0]["address"].ToString();
            Label18.Text = dt.Rows[0]["tell"].ToString();
        }

    }

    //<بررسی می کند که این فاکتور با این کوئری استریگ درست می باشد>
    void check_factor()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        if (Request.QueryString["Id_User"] != null && Request.QueryString["Id_Factor"] != null && Request.QueryString["Factor_Code"] != null)
        {
            dm.Id_User = decimal.Parse(Request.QueryString["Id_User"].ToString());
            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
            dm.Factor_Code = Request.QueryString["Factor_Code"].ToString();
            if (ac.check_factor(dm))
            {
                fill_factor();
                fill_user();
            }
        }
    }
}
