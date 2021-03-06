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
        dm.Type = "Amar";
        DataTable dt= ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Checked =bool.Parse( dt.Rows[0]["title"].ToString());
            TextTitle.Text = dt.Rows[0]["text"].ToString();

        }
    }
    private void Cancel()
    {
        Fill();
        TextTitle.Focus();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Cancel();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dm.Title = TextBox1.Checked.ToString();
        dm.Text = TextTitle.Text.Trim();
        dm.Type = "Amar";
        ac.Update(dm);
    }
    
    //----------------------------------------------------------------------------------------------


}
