using System;
using System.Data;

using BLL;
using Common;
using System.Web.UI.HtmlControls;
public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            FillOneRecord();
        }
    
    }
    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = Request.QueryString["OR"];
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["title"].ToString();
            Label1.Text = dt.Rows[0]["text"].ToString();
            SetMetaTags(Label2.Text);
        }
        

    }
    public void SetMetaTags(string title)
    {
        HtmlHead headTag = (HtmlHead)Page.Header;
        headTag.Title = title;
    }

}
