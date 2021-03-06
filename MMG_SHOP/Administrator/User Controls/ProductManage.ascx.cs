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
    Product ac = new Product();
    ProductDatum dm = new ProductDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!new Admin().CheckSecurity("Product", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }

            FillDr(-1, DropDownList1);
            if (DropDownList1.Items.Count > 0)
            {
                FillDr(int.Parse(DropDownList1.SelectedValue), DropDownList2);
                FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
                FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
                FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
                FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
            }
            FillGrid();
        }
    }

    private void FillGrid()
    {
        int ID_Category = -1;
        if (DropDownList6.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList6.SelectedValue.ToString());
        }
        else if (DropDownList5.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList5.SelectedValue.ToString());
        }
        else if (DropDownList4.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList4.SelectedValue.ToString());
        }
        else if (DropDownList3.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList3.SelectedValue.ToString());
        }
        else if (DropDownList2.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList2.SelectedValue.ToString());
        }
        else if (DropDownList1.SelectedValue != "0")
        {
            ID_Category = int.Parse(DropDownList1.SelectedValue.ToString());
        }
        dm.Id_Group = ID_Category;
        GridView1.DataSource = ac.Select_Product(dm);        
        GridView1.DataBind();
        //excel out
        DataTable dt = (DataTable)GridView1.DataSource;
        new DAL.WriteToExcel().WriteTable(dt, Server.MapPath(@"~/Administrator/files/ExcelOut"));
    }

    //---------------------------------------Delete ---------------------------------------------------
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = ((Label)(GridView1.Rows[e.RowIndex].FindControl("Lblid"))).Text;
        string pic = ((Label)(GridView1.Rows[e.RowIndex].FindControl("Lblid"))).ToolTip;
        dm.Id = decimal.Parse(id);

        if (System.IO.File.Exists(Server.MapPath(pic)))
        {
            System.IO.File.Delete(Server.MapPath(pic));
        }

        Product_Picture ac2 = new Product_Picture();
        Product_PictureDatum dm2 = new Product_PictureDatum();
        dm2.Id_Product = dm.Id;
        DataTable dt = ac2.select(dm2);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            pic = dt.Rows[i]["pic"].ToString();
            if (System.IO.File.Exists(Server.MapPath(pic)))
            {
                System.IO.File.Delete(Server.MapPath(pic));
            }

        }


        ac.Delete(dm);
        FillGrid();


    }
    //----------------------------------------------------------------------------------------------

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int i = 0;
        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            dm.Row_View = decimal.Parse(((TextBox)(GridView1.Rows[i].FindControl("txtrowview"))).Text);
            dm.Id = decimal.Parse(((Label)(GridView1.Rows[i].FindControl("Lblid"))).Text);

            ac.Update_Row_View(dm);
        }

        FillGrid();

        for (i = 0; i < GridView1.Rows.Count; i++)
        {
            dm.Row_View = decimal.Parse(((TextBox)(GridView1.Rows[i].FindControl("txtrowview"))).Text);

            if (ac.Check_Row_View_Exist(dm))
            {
                ((TextBox)(GridView1.Rows[i].FindControl("txtrowview"))).BackColor = System.Drawing.Color.Gray;
            }
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    private void FillDr(int ID_Category, DropDownList Dr)
    {
        string DR_ID = Dr.ID.Substring(Dr.ID.Length - 1, 1);
        Dr.Items.Clear();
        Dr.DataValueField = "ID";
        Dr.DataTextField = "Title";
        Dr.Items.Add("همه");
        Dr.Items[0].Value = "0";
        Product_Grouping bl = new Product_Grouping();
        Product_GroupingDatum dm2 = new Product_GroupingDatum();
        dm2.Id = ID_Category;
        Dr.DataSource = bl.SelectAll(dm2);
        Dr.DataBind();
        Dr.Visible = true;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList1.SelectedValue), DropDownList2);
        FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
        FillGrid();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
        FillGrid();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
        FillGrid();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
        FillGrid();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
        FillGrid();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGrid();
    }
    
}
