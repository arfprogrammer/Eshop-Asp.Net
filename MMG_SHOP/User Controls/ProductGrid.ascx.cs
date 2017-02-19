using System;
using System.Data;
using System.Web.UI.HtmlControls;

using BLL;
using Common;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Product ac = new Product();
    ProductDatum dm = new ProductDatum();
    DataTable dtShop;

    protected void Page_Load(object sender, EventArgs e)
    {
        PlaceHolder1.Controls.Add(LoadControl("~//user controls//ProductFormShow.ascx"));
        FillGrid();
        FillMeta();
    }


    private void FillGrid()
    {
        dm.Id_Group = -1;
        if (Request.QueryString["ID_Root"] != null)
        {
            dm.Id_Group = decimal.Parse(Request.QueryString["ID_Root"].ToString());
        }

        GridView1.DataSource = ac.Select_Product(dm);
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }

    private void FillMeta()
    {
        Product_Grouping acg = new Product_Grouping();
        Product_GroupingDatum dmg = new Product_GroupingDatum();
        bool Home = false;
        if (Request.QueryString["ID_Root"] != null)
        {
            if (Request.QueryString["ID_Root"] != "-1")
            {
                dmg.Id = decimal.Parse(Request.QueryString["ID_Root"]);
                DataTable dt = acg.SelectOne(dmg);
                if (dt.Rows.Count > 0)
                {
                    SetMetaTags("گروه " + dt.Rows[0]["title"].ToString(),
                        dt.Rows[0]["MetaDescription"].ToString(),
                        dt.Rows[0]["MetaKeyword"].ToString());
                }
                else
                {
                    Home = true;
                }
            }
            else
            {
                Home = true;
            }
        }
        else
        {
            Home = true;
        }
        if (Home)
        {
            OneRecord ac2 = new OneRecord();
            OneRecordDatum dm2 = new OneRecordDatum();
            string title = "فروشگاه اینترنتی فراجهش شمال";
            string key = "";
            string desc = "";
            DataTable dt2;
            dm2.Type = "MetaTagTitle";
            dt2 = ac2.SelectOne(dm2);
            if (dt2.Rows.Count > 0)
            {
                title = dt2.Rows[0]["text"].ToString();
            }
            dm2.Type = "MetaTagKeyword";
            dt2 = ac2.SelectOne(dm2);
            if (dt2.Rows.Count > 0)
            {
                key = dt2.Rows[0]["text"].ToString();
            }
            dm2.Type = "MetaTagDescription";
            dt2 = ac2.SelectOne(dm2);
            if (dt2.Rows.Count > 0)
            {
                desc = dt2.Rows[0]["text"].ToString();
            }
            SetMetaTags(title, desc, key);
        }

    }

    public void SetMetaTags(string title, string description, string keywords)
    {
        HtmlHead headTag = (HtmlHead)Page.Header;
        headTag.Title = title;
        HtmlMeta metaTag = new HtmlMeta();
        metaTag.Name = "Description";
        metaTag.Content = description;
        headTag.Controls.Add(metaTag);
        metaTag = new HtmlMeta();
        metaTag.Name = "Keywords";
        metaTag.Content = keywords;
        headTag.Controls.Add(metaTag);
    }
    void FillSession()
    {
        if (Session["ProductTable"] == null)
        {
            dtShop = new DataTable();
            dtShop.Columns.Add("ID", Type.GetType("System.String"));
            dtShop.Columns.Add("ProductName", Type.GetType("System.String"));
            dtShop.Columns.Add("Price", Type.GetType("System.String"));
            dtShop.Columns.Add("Pic", Type.GetType("System.String"));
            dtShop.Columns.Add("ID_Group", Type.GetType("System.String"));
            Session["ProductTable"] = dtShop;
        }

    }
   
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
                    FillSession();

            DataTable dt = (DataTable)Session["ProductTable"];
            bool check = true;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["ID"].ToString() == ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label11"))).Text)
                {
                    check = false;
                }
            }
            if (check)
            {
                DataRow dr = dt.NewRow();
                dr["ID"] = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label11"))).Text;
                dr["Price"] = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label15"))).Text;
                dr["ProductName"] = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label14"))).Text;
                dr["Pic"] = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label13"))).Text;
                dr["ID_Group"] = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Label12"))).Text;

                dt.Rows.Add(dr);
                Session["ProductTable"] = dt;
                Response.Redirect(Request.RawUrl);
            }
            else
            {

            }

    }
}
