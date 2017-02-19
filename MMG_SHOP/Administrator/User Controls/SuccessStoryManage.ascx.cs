using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_User_Controls_SuccessStoryManage : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }

    private void fillgrid()
    {
        GridView1.DataSource = new BLL.SuccessStory().SelectAll();
        GridView1.DataBind();
    }



    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ActiveChange")
        {
            ImageButton lb = (ImageButton)e.CommandSource;

            bool active = bool.Parse(((Label)lb.Parent.FindControl("lbActiveState")).Text);

            new BLL.SuccessStory().UpdateAdminActive(int.Parse(e.CommandArgument.ToString()), !active);
            fillgrid();
        }
        else if (e.CommandName == "Delete")
        {
            new BLL.SuccessStory().Delete(int.Parse(e.CommandArgument.ToString()));
            fillgrid();
        }
        else if (e.CommandName == "ItemView")
        {
            GridView1.EditIndex = -1;
            GridView1.Columns[3].Visible =true;
            GridView1.Columns[4].Visible = true;
            GridView1.Columns[5].Visible = true;
            fillgrid();
        }
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BLL.SuccessStory bl = new BLL.SuccessStory();
        bool active;
        int id;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            id = int.Parse(((Label)GridView1.Rows[i].FindControl("lbActiveState")).Text);
            active = ((CheckBox)GridView1.Rows[i].FindControl("chkState")).Checked;

            bl.UpdateAdminActive(id, active);
        }

        fillgrid();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {        
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.Columns[3].Visible = false;
        GridView1.Columns[4].Visible = false;
        GridView1.Columns[5].Visible = false;
        fillgrid();
    }
}
  