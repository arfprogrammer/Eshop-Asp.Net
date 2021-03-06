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
        DataTable dt;
        dm.Type = "Shoping1";
        dt= ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox1.Text = dt.Rows[0]["title"].ToString();
            FCKeditor1.Value = dt.Rows[0]["text"].ToString();
        }
        dm.Type = "Shoping2";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox2.Text = dt.Rows[0]["title"].ToString();
            FCKeditor2.Value = dt.Rows[0]["text"].ToString();
        }
        dm.Type = "Shoping3";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox3.Text = dt.Rows[0]["title"].ToString();
            FCKeditor3.Value = dt.Rows[0]["text"].ToString();
        }
        dm.Type = "Shoping4";
        dt = ac.SelectOne(dm);
        if (dt.Rows.Count > 0)
        {
            TextBox4.Text = dt.Rows[0]["title"].ToString();
            FCKeditor4.Value = dt.Rows[0]["text"].ToString();
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
        dm.Type = "Shoping1";
        ac.Update(dm);
        dm.Title = TextBox2.Text;
        dm.Text = FCKeditor2.Value;
        dm.Type = "Shoping2";
        ac.Update(dm);
        dm.Title = TextBox3.Text;
        dm.Text = FCKeditor3.Value;
        dm.Type = "Shoping3";
        ac.Update(dm);
        dm.Title = TextBox4.Text;
        dm.Text = FCKeditor4.Value;
        dm.Type = "Shoping4";
        ac.Update(dm);


    }
    
    //----------------------------------------------------------------------------------------------


}
