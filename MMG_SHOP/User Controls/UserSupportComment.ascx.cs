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
    Support_Comment ac = new Support_Comment();
    Support_CommentDatum dm = new Support_CommentDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login_User"] != null)
        {
            if (!bool.Parse(Request.Cookies["Login_User"].Value))
            {
                Response.Redirect("~/index.aspx?Type=404");
            }
        }
        else
        {
            Response.Redirect("~/index.aspx?Type=404");
        }

        if (!IsPostBack)
        {
            FillGrid("Admin");
        }
    }


    private void FillGrid(string SendType)
    {
        dm.ID_User = decimal.Parse(Request.Cookies["Id_User"].Value);
        dm.SendType = SendType;

        if (SendType == "Admin")
        {
            LinkButton1.Enabled = false;
            LinkButton2.Enabled = true;
        }
        else if (SendType == "User")
        {
            LinkButton2.Enabled = false;
            LinkButton1.Enabled = true;

        }

        GridView2.DataSource= ac.Select(dm);
        GridView2.DataBind();
       
        HiddenField1.Value = SendType;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        dm.ID_User = decimal.Parse(Request.Cookies["Id_User"].Value);
        dm.Title = TextBox1.Text;
        dm.Text = TextBox11.Text;
        PublicClass p = new PublicClass();
        dm.Date_send = p.GetDate();
        dm.SendType = "User";
        ac.Insert(dm);
        FillGrid("User");
        TextBox1.Text = "";
        TextBox11.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FillGrid("Admin");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        FillGrid("User");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        FillGrid(HiddenField1.Value);
    }


  
    
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {


        int id = int.Parse(((ImageButton)GridView2.Rows[e.RowIndex].FindControl("imgDelete")).CommandArgument);

        new BLL.Support_Comment().Delete(new Support_CommentDatum() { Id = id });
        FillGrid(HiddenField1.Value);

    }
}
