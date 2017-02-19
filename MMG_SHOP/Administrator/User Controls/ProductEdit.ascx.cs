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

    //<ذخيره فايل در مکان فيزيکي>
    public void Save_File(System.Web.UI.WebControls.FileUpload File_Upload, string Address)
    {
        string str = "";
        str = Server.MapPath(Address);
        File_Upload.PostedFile.SaveAs(str);
    }
    //<بررسي مي کند که نام فايل مورد نظر داخل هاست هست اگر باشد نام جديد را انتخاب مي کند و آن را برمي گرداند>
    string check_name_File(string Folder, string File_Name)
    {
        if (!new Admin().CheckSecurity("Product", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
        {
            Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
        }

        while (System.IO.File.Exists(Server.MapPath(Folder + File_Name)))
            File_Name = 'a' + File_Name;
        return Folder + File_Name;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            FillDr(-1, DropDownList1);
            if (DropDownList1.Items.Count > 0)
            {
                FillDr(int.Parse(DropDownList1.SelectedValue), DropDownList2);
                FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
                FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
                FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
                FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
            }
            fill_state();
            Fill();
        }
    }

    private void Fill()
    {
        if (Request.QueryString["ID_Product"] != null)
        {
            dm.Id = decimal.Parse(Request.QueryString["ID_Product"].ToString());
        }

        DataTable dt= ac.Select_Product_One(dm);

        TextTitle.Text = dt.Rows[0]["title"].ToString();
        FCKeditor2.Value = dt.Rows[0]["text_short"].ToString();
        FCKeditor1.Value = dt.Rows[0]["text_long"].ToString();
        TextBox4.Text = dt.Rows[0]["price"].ToString();
        TextBox3.Text = dt.Rows[0]["post_price"].ToString();
        TextBox5.Text = dt.Rows[0]["weight"].ToString();
        TextBox6.Text = dt.Rows[0]["rate"].ToString();
        TextBox1.Text = dt.Rows[0]["MetaKeyword"].ToString();
        TextBox2.Text = dt.Rows[0]["MetaDescription"].ToString();

        DropDownList1.SelectedIndex = -1;
        DropDownListVaziat.Items.FindByValue(dt.Rows[0]["id_State"].ToString()).Selected = true;

        TextBox8.Text = dt.Rows[0]["catalug"].ToString();
        TextBox7.Text = dt.Rows[0]["demo"].ToString();

        FileUpload1.ToolTip = dt.Rows[0]["pic"].ToString();
        
        Image1.ImageUrl = dt.Rows[0]["pic"].ToString();


        Product_Grouping ac2 = new Product_Grouping();
        Product_GroupingDatum dm2 = new Product_GroupingDatum();
        dm2.Id = decimal.Parse(dt.Rows[0]["ID_Group"].ToString());
        DataTable dt2 = ac2.SelectOne(dm2);
        if (dt2.Rows.Count > 0)
        {
            string delimitedInfo = dt2.Rows[0]["Path"].ToString();
            string[] discreteInfo = delimitedInfo.Split(new char[] { ',' });
            int i = 1;
            foreach (string Data in discreteInfo)
            {
                if (Data == "-1")
                {
                    FillDr(int.Parse(Data), (DropDownList)FindControl("DropDownList" + i.ToString()));
                }
                else
                {
                    ((DropDownList)(FindControl("DropDownList" + (i - 1).ToString()))).Items.FindByValue(Data).Selected = true;
                    FillDr(int.Parse(Data), (DropDownList)FindControl("DropDownList" + i.ToString()));
                }
                i++;
            }
            ((DropDownList)(FindControl("DropDownList" + (i - 1).ToString()))).Items.FindByValue(dt.Rows[0]["ID_Group"].ToString()).Selected = true;

        }


    }

    private void FillDr(int ID_Category, DropDownList Dr)
    {
        string DR_ID = Dr.ID.Substring(Dr.ID.Length - 1, 1);
        Dr.Items.Clear();
        Dr.DataValueField = "ID";
        Dr.DataTextField = "Title";
        if (DR_ID != "1")
        {
            Dr.Items.Add("همه");
            Dr.Items[0].Value = "0";
        }
        Product_Grouping bl = new Product_Grouping();
        Product_GroupingDatum dm2 = new Product_GroupingDatum();
        dm2.Id = ID_Category;
        Dr.DataSource = bl.SelectAll(dm2);
        Dr.DataBind();
        Dr.Visible = true;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    private void Cancel()
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Folder = "~\\Administrator\\files\\ProductPic\\";
        string File_Name = FileUpload1.FileName.ToString().Trim();
        string Address_Full = check_name_File(Folder, File_Name);

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

        dm.Id = decimal.Parse(Request.QueryString["ID_Product"].ToString());
        //<براي شماره نمايش در صفحه>
        dm.Row_View = ac.SelectMaxRowview();
        int i = 0;
        //<اضافه کردن مشخصات آدرس فايل>
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentLength < 5120000)
            {
                dm.Pic = Address_Full;
            }
            else
            {
                i++;
                Response.Write("<script>alert('حجم بايد کمتر از 5000 کيلو بايت باشد')</script>");
            }
        }
        else
        {
            dm.Pic = FileUpload1.ToolTip;
        }
        if (i == 0)
        {
            dm.Title = TextTitle.Text.Trim();
            dm.Text_short = FCKeditor2.Value;
            dm.Text_Long = FCKeditor1.Value;
            try { dm.Price = decimal.Parse(TextBox4.Text.Trim()); }
            catch { dm.Price = 0; }
            try { dm.Post_Price = decimal.Parse(TextBox3.Text.Trim()); }
            catch { dm.Post_Price = 0; }
            dm.Demo = TextBox7.Text.Trim();
            dm.Catalug = TextBox8.Text.Trim();

            dm.Id_Group = ID_Category;
            try { dm.Id_State = decimal.Parse(DropDownListVaziat.SelectedValue); }
            catch { dm.Id_State = 0; }

            try { dm.Rate = decimal.Parse(TextBox6.Text); }
            catch { dm.Rate = 0; }
            try { dm.Weight = decimal.Parse(TextBox5.Text); }
            catch { dm.Weight = 0; }
            dm.MetaDescription = TextBox2.Text;
            dm.MetaKeyword = TextBox1.Text;
            dm.Id_Admin = 1;
            ac.Update(dm);
            if (FileUpload1.HasFile)
            {//<فايل را در فضاي هاست ذخيره مي کند>
                Save_File(FileUpload1, Address_Full);
                if (System.IO.File.Exists(Server.MapPath(FileUpload1.ToolTip)))
                {
                    System.IO.File.Delete(Server.MapPath(FileUpload1.ToolTip));
                }

            }
            Response.Redirect("~//administrator//Index.aspx?Type=OKForm");
        }
        else
        {
            Response.Write("<script>alert('عمليات با خطا مواجه شده است')</script>");
        }
    }

    public void fill_state()
    {
        Product_State ac2 = new Product_State();
        DropDownListVaziat.DataValueField = "id";
        DropDownListVaziat.DataTextField = "title";
        DropDownListVaziat.DataSource = ac2.Select_All();
        DropDownListVaziat.DataBind();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList1.SelectedValue), DropDownList2);
        FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList2.SelectedValue), DropDownList3);
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);


    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDr(int.Parse(DropDownList3.SelectedValue), DropDownList4);
        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        FillDr(int.Parse(DropDownList4.SelectedValue), DropDownList5);
        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {


        FillDr(int.Parse(DropDownList5.SelectedValue), DropDownList6);

    }

}
