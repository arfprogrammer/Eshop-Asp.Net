using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Controls_SuccessStoryDetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id;

        if (Request.QueryString["ID_Story"] != null)
        {
            id = int.Parse(Request.QueryString["ID_Story"]);

            DataTable dt = new BLL.SuccessStory().SelectRow(id);

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                lbBody.Text = dr["body"].ToString();
                lbCustomerName.Text = dr["CustomerName"].ToString();
                lbVisit.Text = dr["visit_count"].ToString();
                lbRegDate.Text = dr["date_register"].ToString();
                lbtitle.Text = dr["title"].ToString();

                new BLL.SuccessStory().UpdateVisitor(id);
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Redirect("~/index.aspx?ID_Story=" + DropDownList1.SelectedValue);
    }
}
