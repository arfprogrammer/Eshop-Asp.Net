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

            fillddr();

            if (Request.QueryString["ID_Admin"] != null )
            {
                string id = Request.QueryString["ID_Admin"].ToString().Trim();
                DropDownList1.Items.FindByValue(id).Selected = true;
            }
            fillcheckbox();
        }
        DropDownList1.Focus();
    }

    void fillddr()
    {
        {
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataSource = ac.SelectAllAdmin();
            DropDownList1.DataBind();
            Label2.Visible = false;

        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillcheckbox();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Id_admin = decimal.Parse(DropDownList1.SelectedValue);
        ac.DeletSecurity(dm);
        {
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    dm.Security = CheckBoxList1.Items[i].Value;
                   ac.InsertSecurity(dm);
                   
                }
            }
        }
        Label2.Visible = true;

    }

    void fillcheckbox()
    {
        CheckBoxList1.ClearSelection();
        dm.Id_admin = decimal.Parse(DropDownList1.SelectedValue);
        DataTable dt = ac.SelectSecurity(dm);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CheckBoxList1.Items.FindByValue(dt.Rows[i]["security"].ToString().Trim()).Selected = true;
        }
        Label2.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        fillcheckbox();
        Label2.Visible = false;
    }
}
