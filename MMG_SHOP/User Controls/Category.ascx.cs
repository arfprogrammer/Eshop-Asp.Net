using System;
using System.Data;
using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Product_Grouping ac = new Product_Grouping();
    Product_GroupingDatum dm = new Product_GroupingDatum();

    public string PathString = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        FillMenu();
    }

    private void FillMenu()
    {

        dm.Id = -1;
        if (Request.QueryString["ID_Root"] != null && Request.QueryString["ID_Root"].Length > 0)
        {
            dm.Id = decimal.Parse(Request.QueryString["ID_Root"].ToString());
        }
        DataTable dt = ac.SelectAll(dm);
        int i = 0;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            Product_GroupingDatum dm2 = new Product_GroupingDatum();
            dm2.Id = decimal.Parse(dt.Rows[i]["id"].ToString());
            int count;// = ac.SelectAll(dm2).Rows.Count;

            count = ac.GetProductCout((int)dm2.Id);

            PathString += " <li><a href='./index.aspx?ID_Root=" + dt.Rows[i]["id"].ToString() + "'><img style='margin-left:5px;border:0px;'  src='./Administrator/files/Design/mosbat-abi.gif' />" +
                dt.Rows[i]["Title"].ToString() + " ( " + count.ToString() + " ) " + "</a></li>";

        }
        if (i == 0)
        {
            int count = ac.GetProductCout(int.Parse(Request.QueryString["ID_Root"].ToString()));
            PathString += string.Format("<li class='EmptyGridSmall'>در این شاخه {0} محصول وجود دارد</li>", count);
        }
    }



}