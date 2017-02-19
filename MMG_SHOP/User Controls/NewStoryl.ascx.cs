using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Controls_NewStoryl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new BLL.SuccessStory().SelectByUserId(int.Parse(Request.Cookies["Id_User"].Value));
            if (dt.Rows.Count != 0)
            {
                txttitle.Text = dt.Rows[0]["title"].ToString();
                txtBody.Text = dt.Rows[0]["body"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txtBody.Text!=null && txttitle.Text!=null)
        {
            BLL.SuccessStory adp = new BLL.SuccessStory();
            Common.SuccessStory inf = new Common.SuccessStory();


            DataTable dt = new BLL.SuccessStory().SelectByUserId(int.Parse(Request.Cookies["Id_User"].Value));
            if (dt.Rows.Count == 0)
            {
                inf.admin_active = false;
                inf.body = txtBody.Text;
                inf.id_user = int.Parse(Request.Cookies["Id_User"].Value);
                inf.title = txttitle.Text;

                adp.Insert(inf);
            }
            else
            {                
                inf.body = txtBody.Text;
                inf.id_user = int.Parse(Request.Cookies["Id_User"].Value);
                inf.title = txttitle.Text;
                inf.id = int.Parse(dt.Rows[0]["id"].ToString());

                adp.Update(inf);
            }

            Response.Redirect("~/index.aspx?Type=UserProfile");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
}
