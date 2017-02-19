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
            check_factor();
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



    //<بررسی می کند که این فاکتور با این کوئری استریگ درست می باشد>
    void check_factor()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();

        if (Request.QueryString["Id_User"] != null && Request.QueryString["Id_Factor"] != null &&
            Request.QueryString["Factor_Code"] != null)
        {
            dm.Id_User = decimal.Parse(Request.QueryString["Id_User"].ToString());
            dm.Factor_Code = Request.QueryString["Factor_Code"].ToString();
            dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
            if (ac.check_factor(dm))
            {
                fill_factor();
            }
            else
            {
                Response.Redirect("~/index.aspx?Type=404");
            }

        }
        else
        {
            Response.Redirect("~/index.aspx?Type=404");

        }
    }
    void fill_factor()
    {
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        DataSet ds = new DataSet();
        decimal Sum_Price;
        decimal All_Sum_Price = 0;


        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
        GridView1.DataSource = ac.select_factor_detail(dm);
        GridView1.DataBind();

        DataTable dt = ac.select_factor_one(dm);
        Label38.Text = Request.QueryString["Id_Factor"].ToString();
        Label22.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["sum_price"].ToString());
        Label19.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["send_price"].ToString());
        Label33.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["tasx"].ToString());
        if (Label33.Text == "0")
        {
            lblTasx.Visible = false;
        }

        Label40.Text = dt.Rows[0]["factor_condition"].ToString();

        Label2.Text = dt.Rows[0]["date_register"].ToString();
        Label4.Text = dt.Rows[0]["peyment_date"].ToString();
        Label12.Text = BLL.PublicClass.numberToMoney(dt.Rows[0]["discount"].ToString());
        if (Label12.Text == "0")
        {
            DivTakhfif.Visible = false;
        }
        if (Label4.Text.Length == 0)
        {
            PayDiv.Visible = false;
        }
        Label7.Text = dt.Rows[0]["date_send"].ToString();
        if (Label7.Text.Length == 0)
        {
            SendDiv.Visible = false;
        }


        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            Sum_Price = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("Label14"))).Text);
            All_Sum_Price = All_Sum_Price + Sum_Price;

        }
        Label15.Text = BLL.PublicClass.numberToMoney(All_Sum_Price.ToString());
    }

}
