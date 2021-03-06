using System;
using System.Data;

using BLL;
using Common;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Product ac = new Product();
    ProductDatum dm = new ProductDatum();

    DataTable dtShop;

    protected void Page_Load(object sender, EventArgs e)
    {

      
        if (!IsPostBack)
        {
            update_number_view();
            Fill();
            FillGridPic();
            FillGridComment();
        }
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
    private void FillGridComment()
    {
        Product_Comment ac2 = new Product_Comment();
        Product_CommentDatum dm2 = new Product_CommentDatum();
        dm2.Id_Product = decimal.Parse(Request.QueryString["ID_Product"].ToString());

        GridView2.DataSource = ac2.select_product_comment_show_true(dm2);
        GridView2.DataBind();

    }

    private void FillGridPic()
    {
        Product_Picture ac2 = new Product_Picture();
        Product_PictureDatum dm2 = new Product_PictureDatum();
        dm2.Id_Product = decimal.Parse(Request.QueryString["ID_Product"].ToString());
        GridView1.DataSource = ac2.select(dm2);
        GridView1.DataBind();
        if (ac2.select(dm2).Rows.Count > 0)
        {
            Image6.ImageUrl = ac2.select(dm2).Rows[0]["pic"].ToString();
        }
        else
        {
            Image6.Visible = false;
        }

        otherpic.Visible = ((DataTable)GridView1.DataSource).Rows.Count != 0;

    }
    public void Fill()
    {

        dm.Id = decimal.Parse(Request.QueryString["ID_Product"].ToString());


        DataTable dt = ac.Select_Product_One(dm);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["title"].ToString();
            Label1.NavigateUrl = "~/index.aspx?ID_Product=" + dm.Id.ToString() + "&ID_Root=" + dt.Rows[0]["ID_group"].ToString();

            Label5.Text = dt.Rows[0]["title"].ToString();
            Label5.NavigateUrl = "~/index.aspx?ID_Product=" + dm.Id.ToString() + "&ID_Root=" + dt.Rows[0]["ID_group"].ToString();
            HiddenField2.Value = dt.Rows[0]["ID_group"].ToString();

            Label10.Text = dt.Rows[0]["rate"].ToString() + " از 10";
            Label12.Text = dt.Rows[0]["text_long"].ToString();
            Label14.Text = dt.Rows[0]["number_view"].ToString() + " بار";
            Label16.Text = dt.Rows[0]["number_shop"].ToString() + " بار";
            Label21.Text =BLL.PublicClass.numberToMoney(dt.Rows[0]["price"].ToString());
            Label8.Text = dt.Rows[0]["titleState"].ToString();
            HiddenField1.Value = dt.Rows[0]["price"].ToString();
            if (dt.Rows[0]["catalug"].ToString().Trim().Length > 0)
            {
                HyperLink2.NavigateUrl = dt.Rows[0]["catalug"].ToString();
            }
            else
            {
                Label17.Visible = false;

                HyperLink2.Visible = false; ;
            }
            if (dt.Rows[0]["demo"].ToString().Trim().Length > 0)
            {

                HyperLink1.NavigateUrl = dt.Rows[0]["demo"].ToString();
            }
            else
            {
                Label13.Visible = false;
                HyperLink1.Visible = false;
            }
            Image2.ImageUrl = dt.Rows[0]["pic"].ToString();

            SetMetaTags(dt.Rows[0]["title"].ToString(),
                dt.Rows[0]["MetaDescription"].ToString(),
                dt.Rows[0]["MetaKeyword"].ToString());

        }
        else
        {
            Response.Redirect("~/index.aspx?Type=404");
        }

    }

    public void SetMetaTags(string title, string description, string keywords)
    {
        System.Web.UI.HtmlControls.HtmlHead headTag = (HtmlHead)Page.Header;
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
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        FillSession();

        DataTable dt = (DataTable)Session["ProductTable"];
        bool check = true;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i]["ID"].ToString() == Request.QueryString["id_product"].ToString())
            {
                check = false;
            }
        }
        if (check)
        {
            DataRow dr = dt.NewRow();
            dr["ID"] = Request.QueryString["ID_Product"].ToString();
            dr["Price"] = HiddenField1.Value;
            dr["ProductName"] = Label1.Text;
            dr["Pic"] = Image2.ImageUrl.ToString();
            dr["ID_Group"] = HiddenField2.Value;

            dt.Rows.Add(dr);
            Session["ProductTable"] = dt;
            Response.Redirect(Request.RawUrl);
        }
        else
        {

        }
    }


    public void update_number_view()
    {
        dm.Id = decimal.Parse(Request.QueryString["ID_Product"].ToString());
        ac.Update_Number_View(dm);
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Image6.ImageUrl = ((Label)(GridView1.Rows[e.NewEditIndex].FindControl("Lblid"))).Text;

    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        PublicClass p = new PublicClass();
        Product_Comment ac2 = new Product_Comment();
        Product_CommentDatum dm2 = new Product_CommentDatum();
        dm2.Title = TextBox4.Text;
        dm2.Email = TextBox3.Text;
        dm2.NameUser = TextBox2.Text;
        dm2.Text = TextBox1.Text;
        dm2.Date_Send = p.GetDate();
        dm2.Show_Comment = "false";
        dm2.Id_Product = decimal.Parse(Request.QueryString["ID_Product"].ToString());
        ac2.Insert(dm2);
        Label11.Visible = true;
        TextBox4.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";

    }
}
