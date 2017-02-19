using System;
using System.Data;
using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fill();
    }

    void fill()
    {
        Advertizing ac = new Advertizing();
        AdvertizingDatum dm = new AdvertizingDatum();


        dm.Row_View = 2;
        if (ac.Select_Advertizing_Number(dm))
        {
            if (bool.Parse(dm.Show_Page))
            {
                Label3.Text = dm.Text;
            }
            else
            {
              //  Label3.CssClass = "EmptyGridSmall";
                //Label3.Text = "تبلیغی موجود نمی باشد";
                Div1.Visible = false;
                Div2.Visible = false;

            }
        }
        else
        {
          //  Label3.CssClass = "EmptyGridSmall";
            //Label3.Text = "تبلیغی موجود نمی باشد";
            Div1.Visible = false;
            Div2.Visible = false;

        }

    }
}
