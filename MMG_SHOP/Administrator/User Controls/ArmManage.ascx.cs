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
    Arm ac = new Arm();
    ArmDatum dm = new ArmDatum();

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
            if (!new Admin().CheckSecurity("Advertizing", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }

            FillGrid();
        }
    }


    private void FillGrid()
    {
        GridView1.DataSource = ac.Select_All();
        GridView1.DataBind();
    }
    private void Cancel()
    {
        GridView1.SelectedIndex = -1;
        TextTitle.Text = "";
        TextBox1.Text = "";
        FileUpload1.Dispose();

        TextTitle.Focus();
        LblHidden.ToolTip = "";
        Button1.Text = "ثبت";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Folder = "~\\Administrator\\files\\armpic\\";
        string File_Name = FileUpload1.FileName.ToString().Trim();
        string Address_Full = check_name_File(Folder, File_Name);

        dm.Title = TextTitle.Text.Trim();
        dm.Link = TextBox1.Text.Trim();
        int i = 0;
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
            if (LblHidden.ToolTip.Length > 0)
            {
                dm.Pic = "";
            }
            else
            {
                dm.Pic = FileUpload1.ToolTip;
            }
        }
        if (i == 0)
        {
            if (LblHidden.ToolTip.Length > 0)
            {
                dm.Id = decimal.Parse(LblHidden.ToolTip);
                ac.Update(dm);
                if (FileUpload1.HasFile)
                {//<فايل را در فضاي هاست ذخيره مي کند>
                    Save_File(FileUpload1, Address_Full);
                    if (System.IO.File.Exists(Server.MapPath(FileUpload1.ToolTip)))
                    {
                        System.IO.File.Delete(Server.MapPath(FileUpload1.ToolTip));
                    }
                }
            }
            else
            {
                ac.Insert(dm);
                if (FileUpload1.HasFile)
                {//<فايل را در فضاي هاست ذخيره مي کند>
                    Save_File(FileUpload1, Address_Full);
                }
            }


            FillGrid();
            Cancel();
        }
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

        ac.Delete(dm);
        Cancel();
        FillGrid();

    }
    //----------------------------------------------------------------------------------------------

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dm.Id = decimal.Parse(((Label)(GridView1.Rows[e.NewEditIndex].FindControl("lblID"))).Text);
        DataTable dt = ac.SelectOne(dm);
        TextTitle.Text = dt.Rows[0]["Title"].ToString();
        TextBox1.Text = dt.Rows[0]["link"].ToString();
        FileUpload1.ToolTip = dt.Rows[0]["pic"].ToString();
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

}
