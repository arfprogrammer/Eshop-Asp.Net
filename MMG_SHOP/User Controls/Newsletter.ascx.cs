using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Controls_Newsletter : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        int res = new BLL.Newsletter().Insert(txtEmail.Text);
        
        switch (res)
        {
            case 0:
                lbMessage.Text = "خطا در ثبت ایمیل";
                break;
            case 1:
                lbMessage.Text = "ایمیل شما ثبت شد";
                break;
            case 2:
                lbMessage.Text = "ایمیل شما قبلا ثبت شده است";
                break;
        }

        txtEmail.Text = "";
    
    }

}
