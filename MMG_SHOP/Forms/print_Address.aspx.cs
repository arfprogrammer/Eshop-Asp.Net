using System;
using System.Data;
using BLL;
using Common;
using System.Web.UI.WebControls;

public partial class forms_print_factor1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["ID_Admin"] == null)
        {
                Response.Redirect("~/index.aspx?Type=404");
        }

        Fill();

    }



    private void Fill()
    {


        OneRecord aco = new OneRecord();
        OneRecordDatum dmo = new OneRecordDatum();
        DataTable dt;
        dmo.Type = "AddressPrint";
        dt = aco.SelectOne(dmo);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0]["text"].ToString();
        }

        BLL.user blu = new user();
        Shoping ac = new Shoping();
        ShopingDatum dm = new ShopingDatum();
        string company, post_code;
        dm.Id_Factor = decimal.Parse(Request.QueryString["Id_Factor"].ToString());
        DataTable dt2 = ac.select_factor_one(dm);

        DataTable dtuser = blu.select_one_user(new userDatum() { Id = int.Parse(dt2.Rows[0]["id_user"].ToString()) });

        company = dtuser.Rows[0]["company"].ToString();
        post_code = dtuser.Rows[0]["post_code"].ToString();


        Label1.Text = Label1.Text.Replace("NameUser", dt2.Rows[0]["customer_name"].ToString());
        Label1.Text = Label1.Text.Replace("TellphoneUser", dt2.Rows[0]["customer_tell"].ToString());

        Label1.Text = Label1.Text.Replace("AddressUser",string.Format(" {0}  <br/> کد پستی {1} <br/> نام شرکت {2}",  dt2.Rows[0]["customer_address"].ToString(),company,post_code));

    }

    
}
