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
            fillDR();

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        fillgrid();
    }

    void fillDR()
    {
        Product_State ac = new Product_State();
        DropDownList1.DataTextField = "title";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = ac.Select_All();
        DropDownList1.DataBind();
    }
  
    void fillgrid()
    {
        Product ac = new Product();
        ProductDatum dm = new ProductDatum();
        dm.Title = TextBox1.Text;
        dm.Id_State = decimal.Parse(DropDownList1.SelectedValue);
        decimal price1 = 0;
        decimal price2 = 999999999;
        if (TextBox3.Text.Length > 0)
        {
            price1 = decimal.Parse(TextBox3.Text);
        }
        if (TextBox4.Text.Length > 0)
        {
            price2 = decimal.Parse(TextBox4.Text);
        }
        GridView1.DataSource = ac.Select_Product_Search(dm,price1,price2);
        GridView1.DataBind();

    }

 
}
