using System;
using System.Data;

using BLL;
using Common;
public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            FillOneRecord();
        }
        if (Request.QueryString["Id_Factor"] != null &&Request.QueryString["Factor_Code"] != null )
        {
            Label34.Text = Request.QueryString["Id_Factor"].ToString();
            Label37.Text = Request.QueryString["Factor_Code"].ToString();
        }
        PublicClass pc = new PublicClass();
        Label62.Text = pc.GetDate();
    }
    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = "Shoping4";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label2.Text = dt.Rows[0]["title"].ToString();
            Label1.Text = dt.Rows[0]["text"].ToString();
        }

    }

}
