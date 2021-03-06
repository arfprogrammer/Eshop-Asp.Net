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
    OneRecord ac = new OneRecord();
    OneRecordDatum dm = new OneRecordDatum();

    //<ذخيره فايل در مکان فيزيکي>
    public void Save_File(System.Web.UI.WebControls.FileUpload File_Upload, string Address)
    {
        string str = "";
        str = Server.MapPath(Address);
        File_Upload.PostedFile.SaveAs(str);
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!new Admin().CheckSecurity("Setting", decimal.Parse(Request.Cookies["ID_Admin"].Value)))
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }

            Fill();
        }
    }


    private void Fill()
    {
        DataTable dt;
        dm.Type = "Print1";
        dt= ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["title"].ToString();
            FCKeditor1.Value = dt.Rows[0]["text"].ToString();
        }
        dm.Type = "Print2";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox2.Text = dt.Rows[0]["title"].ToString();
            FCKeditor2.Value = dt.Rows[0]["text"].ToString();
        }


    }
    private void Cancel()
    {
        Fill();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Title = TextBox1.Text;
        dm.Text = FCKeditor1.Value;
        dm.Type = "Print1";
        ac.Update(dm);
        dm.Title = TextBox2.Text;
        dm.Text = FCKeditor2.Value;
        dm.Type = "Print2";
        ac.Update(dm);

        if (FileUpload1.HasFile)
        {
            Save_File(FileUpload1, "~\\Administrator\\files\\Design\\print_header.gif");
        }

        if (FileUpload2.HasFile)
        {
            Save_File(FileUpload2, "~\\Administrator\\files\\Design\\print_right.gif");
        }


    }
    
    //----------------------------------------------------------------------------------------------

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\print_header.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\print_header.gif");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\print_right.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\print_right.gif");
        System.IO.File.Copy(s, d, true);
    }
}
