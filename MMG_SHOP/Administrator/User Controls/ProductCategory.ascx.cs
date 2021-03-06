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
    Product_Grouping ac = new Product_Grouping();
    Product_GroupingDatum dm = new Product_GroupingDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!new Admin().CheckSecurity("ProductCategory", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }

            FillGrid();
            FillPath();
        }
    }

    private void FillPath()
    {
        lblPath.Text = "";
        if (Request.QueryString["ID_Root"] != null)
        {
            if (Request.QueryString["ID_Root"] != "-1")
            {
                dm.Id = int.Parse(Request.QueryString["ID_Root"]);
                DataTable dt = ac.SelectOne(dm);

                string delimitedInfo = dt.Rows[0]["Path"].ToString();
                string[] discreteInfo = delimitedInfo.Split(new char[] { ',' });
                string title = "";
                DataTable dt2 = new DataTable();
                foreach (string Data in discreteInfo)
                {
                    if (Data == "-1")
                    {
                        title = "بخش اصلی";
                    }
                    else
                    {
                        dm.Id = int.Parse(Data);
                        dt2 = ac.SelectOne(dm);
                        if (dt2.Rows.Count > 0)
                        {
                            title = dt2.Rows[0]["Title"].ToString();
                        }
                    }
                    lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=" +
                        Data + "'>" + title + "</a>" + " >> ";
                }
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=" +
                    dt.Rows[0]["ID"].ToString() + "'>" + dt.Rows[0]["Title"].ToString() + "</a>" + " >> ";
            }
            else
            {
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=-1'>بخش اصلی</a>  >> ";
            }
        }
        else
        {
            lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=-1'>بخش اصلی</a>  >> ";
        }
    }

    private void FillGrid()
    {

        dm.Id = -1;
        if (Request.QueryString["id_root"] != null && Request.QueryString["id_root"].Length > 0)
        {
            dm.Id = decimal.Parse(Request.QueryString["id_root"].ToString());
        }
        GridView1.DataSource = ac.SelectAll(dm);
        GridView1.DataBind();
    }
    private void Cancel()
    {
        GridView1.SelectedIndex = -1;
        TextTitle.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "0";
        TextTitle.Focus();
        LblHidden.ToolTip = "";
        Button1.Text = "ثبت";
        Label3.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["ID_Root"] != null)
        {
            dm.Id_root = decimal.Parse(Request.QueryString["ID_Root"].ToString());
        }
        else
        {
            dm.Id_root = -1;
        }
        string path = "-1";
        
        if (Request.QueryString["ID_Root"] != null && Request.QueryString["ID_Root"] != "-1")
        {
            dm.Id = decimal.Parse(Request.QueryString["ID_Root"].ToString());
            DataTable dt = ac.SelectOne(dm); ;
            path = dt.Rows[0]["Path"].ToString() + "," + dm.Id.ToString();
        }
        dm.Path = path;
        dm.Rowview = decimal.Parse(TextBox3.Text);
        dm.Title = TextTitle.Text.Trim();
        dm.MetaDescription = TextBox2.Text;
        dm.MetaKeyword = TextBox1.Text;
        if (LblHidden.ToolTip.Length > 0)
        {
            dm.Id = decimal.Parse(LblHidden.ToolTip);
            ac.Update(dm);
        }
        else
        {
            ac.InsertGroup(dm);
        }
        FillGrid();
        Cancel();
    }

    //---------------------------------------Delete ---------------------------------------------------
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Product ac2 = new Product();
        ProductDatum dm2 = new ProductDatum();

        string id = ((Label)(GridView1.Rows[e.RowIndex].FindControl("Lblid"))).Text;
        dm.Id = decimal.Parse(id);
        dm2.Id_Group = dm.Id;
        
        if (ac.SelectAll(dm).Rows.Count == 0 && ac2.Select_Product_Group_Node(dm2).Rows.Count==0)
        {
            ac.Delete(dm);
            Cancel();
            FillGrid();
        }
        else
        {
            Label3.Visible = true;
        }

    }
    //----------------------------------------------------------------------------------------------

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dm.Id = decimal.Parse(((Label)(GridView1.Rows[e.NewEditIndex].FindControl("lblID"))).Text);
        DataTable dt = ac.SelectOne(dm);
        LblHidden.ToolTip = dm.Id.ToString();
        TextTitle.Text = dt.Rows[0]["Title"].ToString();
        TextBox1.Text = dt.Rows[0]["MetaKeyword"].ToString();
        TextBox2.Text = dt.Rows[0]["MetaDescription"].ToString();
        TextBox3.Text = dt.Rows[0]["RowView"].ToString();
        LblHidden.ToolTip = dm.Id.ToString();
        GridView1.SelectedIndex = e.NewEditIndex;
        Button1.Text = "ویرایش";

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        FillGrid();
        Cancel();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}
