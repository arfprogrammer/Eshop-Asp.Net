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

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLL.Shoping blfac=new BLL.Shoping();
        BLL.user blluser = new BLL.user();
        BLL.Product_Comment bllsup = new BLL.Product_Comment();
        BLL.SuccessStory bllsto = new BLL.SuccessStory();

        lnkNotPay.Text = string.Format("واریز نشده امروز({0})", blfac.shop_factor_select_nopeyment_today().Rows.Count);
        lnkPayToday.Text =  string.Format("واریز شده امروز({0})", blfac.shop_factor_select_peyment_today().Rows.Count);
        lnkNewUser.Text = string.Format("کاربر جدید امروز({0})", blluser.shop_user_select_new_today().Rows.Count);
        lnkMessage.Text = string.Format("نظرجدید({0})", bllsup.select_today().Rows.Count);
        lnkSuccessStory.Text = string.Format("داستان موفقیت({0})", bllsto.DeactiveCount());

    }
}
