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
        while (System.IO.File.Exists(Server.MapPath(Folder + File_Name)))
            File_Name = 'a' + File_Name;
        return Folder + File_Name;
    }

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
            fill_state();
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

        PublicClass p = new PublicClass();

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
            dm.Pic = "";
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
            dm.Date_Send = p.GetDate();
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
            ac.Insert(dm);
            if (FileUpload1.HasFile)
            {//<فايل را در فضاي هاست ذخيره مي کند>
                Save_File(FileUpload1, Address_Full);
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
