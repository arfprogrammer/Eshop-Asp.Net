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
    Admin ac = new Admin();
    AdminDatum dm = new AdminDatum();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!new Admin().CheckSecurity("Admin", decimal.Parse(Request.Cookies["ID_Admin"].Value))) 
            {
                Response.Redirect("~/Administrator/index.aspx?Type=Accessdenied");
            }
            fillgrid();
        }
        TextBox3.Focus();
    }

    private void CheckSecurity()
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        dm.Name = TextBox3.Text.Trim();
        dm.UserName = TextBox1.Text.Trim();
        dm.Password = TextBox2.Text.Trim();

        if (LblHidden.ToolTip.Length > 0)
        {
            dm.Id_admin = decimal.Parse(LblHidden.ToolTip);
            if (ac.CheckUserExist(dm).Rows.Count == 0 || dm.UserName == HiddenField1.Value)
            {
                ac.Update(dm);
                Cancel();
                fillgrid();

            }
            else
            {
                Label2.Visible = true;
            }

        }
        else
        {
            if (ac.CheckUserExist(dm).Rows.Count == 0)
            {
                ac.Insert(dm);
                Cancel();
                fillgrid();
            }
            else
            {
                Label2.Visible = true;
            }
        }

    }

    void fillgrid()
    {
        GridView1.DataSource = ac.SelectAllAdmin();
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //عمليات ويزاردي را غير فعال مي کند
        e.Cancel = true;
        string id = ((Label)(GridView1.Rows[e.RowIndex].FindControl("lblid"))).Text;
        dm.Id_admin = decimal.Parse(id);
        ac.Delete(dm);
        Cancel();
        fillgrid();


    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        dm.Id_admin = decimal.Parse(((Label)(GridView1.Rows[e.NewEditIndex].FindControl("lblID"))).Text);
        DataTable dt = ac.Select_page_One(dm);
        TextBox1.Text = dt.Rows[0]["UserName"].ToString();
        TextBox2.Text = dt.Rows[0]["Password"].ToString();
        TextBox3.Text = dt.Rows[0]["name"].ToString();
        HiddenField1.Value = dt.Rows[0]["UserName"].ToString();
        HiddenField2.Value = dt.Rows[0]["Password"].ToString();
        LblHidden.ToolTip = dm.Id_admin.ToString();
        GridView1.SelectedIndex = e.NewEditIndex;
        Button3.Text = "ویرایش";

    }
    private void Cancel()
    {
        GridView1.SelectedIndex = -1;
        TextBox1.Text = "";
        TextBox3.Focus();
        TextBox2.Text = "";
        TextBox3.Text = "";
        LblHidden.ToolTip = "";
        Button3.Text = "ثبت";
        Label2.Visible = false;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }
}
