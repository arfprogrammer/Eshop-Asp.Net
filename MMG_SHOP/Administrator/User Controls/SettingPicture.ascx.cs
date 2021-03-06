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
        }
    }





    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            Save_File(FileUpload1, "~\\Administrator\\files\\Design\\Header.gif");
        }

        if (FileUpload2.HasFile)
        {
            Save_File(FileUpload2, "~\\Administrator\\files\\Design\\login_center.gif");
        }
        if (FileUpload3.HasFile)
        {
            Save_File(FileUpload3, "~\\Administrator\\files\\Design\\bgPath.png");
        }
        if (FileUpload4.HasFile)
        {
            Save_File(FileUpload4, "~\\Administrator\\files\\Design\\BgTop.gif");
        }
        if (FileUpload5.HasFile)
        {
            Save_File(FileUpload5, "~\\Administrator\\files\\Design\\BgDown.png");
        }
        if (FileUpload6.HasFile)
        {
            Save_File(FileUpload6, "~\\Administrator\\files\\Design\\HeaderDown.jpg");
        }
        if (FileUpload7.HasFile)
        {
            Save_File(FileUpload7, "~\\Administrator\\files\\Design\\PriceUnit.gif");
        }


    }

    //----------------------------------------------------------------------------------------------


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\Header.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\Header.gif");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\login_center.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\login_center.gif");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\bgPath.png");
        d = Server.MapPath("~\\Administrator\\files\\Design\\bgPath.png");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\BgTop.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\BgTop.gif");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\BgDown.png");
        d = Server.MapPath("~\\Administrator\\files\\Design\\BgDown.png");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\HeaderDown.jpg");
        d = Server.MapPath("~\\Administrator\\files\\Design\\HeaderDown.jpg");
        System.IO.File.Copy(s, d, true);
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        string s;
        string d;
        s = Server.MapPath("~\\Administrator\\files\\Design\\Default\\PriceUnit.gif");
        d = Server.MapPath("~\\Administrator\\files\\Design\\PriceUnit.gif");
        System.IO.File.Copy(s, d, true);
    }
}
