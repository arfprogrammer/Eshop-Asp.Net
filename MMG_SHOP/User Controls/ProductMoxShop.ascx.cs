using System;
using System.Data;

using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Product ac = new Product();
    ProductDatum dm = new ProductDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        FillGrid();
    }

    private void FillGrid()
    {

        GridView1.DataSource = ac.select_product_max_shop();
        GridView1.DataBind();
    }

}
