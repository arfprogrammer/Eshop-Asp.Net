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

    }

    private void FillOneRecord()
    {
        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type ="Amar";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            if (bool.Parse(dt.Rows[0]["title"].ToString()))
            {
                Label3.Text = dt.Rows[0]["text"].ToString();
            }
            else
            {
                Label3.Text = dt.Rows[0]["text"].ToString();

                divTop.Visible = false;
            }
        }


    }

}
