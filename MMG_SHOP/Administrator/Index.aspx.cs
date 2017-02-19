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
using System.Web.UI.MobileControls;

public partial class Home_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["ID_Admin"] != null)
        {
            PlaceHolder1.Controls.Add(LoadControl("~//Administrator//user controls//MainMenu.ascx"));
            if (Request.QueryString["Type"] != null)
            {
                switch (Request.QueryString["Type"].ToString())
                {
                    case "OKForm":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//OKForm.ascx"));
                        Title = "تایید عملیات";
                        break;

                    case "ProductCategory":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductCategory.ascx"));
                        Title = "مدیریت دسته بندی محصولات";
                        break;
                    case "ProductInsert":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductInsert.ascx"));
                        Title = "ثبت محصولات";
                        break;
                    case "ProductManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductManage.ascx"));
                        Title = "مدیریت محصولات";
                        break;
                    case "ProductEdit":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductEdit.ascx"));
                        Title = "ویرایش محصولات";
                        break;
                    case "ProductPicture":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductPicture.ascx"));
                        Title = "مدیریت عکس های محصولات";
                        break;
                    case "ProductState":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductState.ascx"));
                        Title = "مدیریت وضعیت های محصولات";
                        break;
                    case "ProductComment":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ProductComment.ascx"));
                        Title = "مدیریت نظرات محصولات";
                        break;
                    case "AdvertizingManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//AdvertizingManage.ascx"));
                        Title = "مدیریت تبلیغات";
                        break;
                    case "PageManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//PageManage.ascx"));
                        Title = "مدیریت صفحات";
                        break;
                    case "FactorDetail":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//FactorDetail.ascx"));
                        Title = "ریز فاکتور";
                        break;
                    case "AdminManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//AdminManage.ascx"));
                        Title = "مدیریت مدیران";
                        break;
                    case "AdminSecurity":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//AdminSecurity.ascx"));
                        Title = "مدیریت سطح دسترسی مدیران";
                        break;
                    case "Accessdenied":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//AccessDenied.ascx"));
                        Title = "عدم مجوز دسترسی";
                        break;
                    case "UserManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//UserManage.ascx"));
                        Title = "مدیریت کاربران";
                        break;
                    case "UserSupportComment":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//UserSupportComment.ascx"));
                        Title = "بخش ارتباط با پشتیبانی";
                        break;
                    case "ArmManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//ArmManage.ascx"));
                        Title = "بخش مدیریت آرم ها";
                        break;

                    case "SettingAmar":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingAmar.ascx"));
                        Title = "تنظیم محتوای آمار";
                        break;

                    case "SettingPicture":
                        //todo PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingPicture.ascx"));
                        UserControl uc;
                        //System.Collections.Generic.List<string> pics = new System.Collections.Generic.List<string>();

                        Stack pics = new Stack();

                        foreach (string pic in System.IO.Directory.GetFiles(Server.MapPath("~/Administrator/files/Design")))
                        {
                            if (System.IO.Path.GetExtension(pic) != ".db")
                            {
                                uc = (UserControl)LoadControl("~//Administrator//user controls//PhotoManager.ascx");
                                pics.Push(System.IO.Path.GetFileName(pic));
                                PlaceHolder2.Controls.Add(uc);
                            }
                        }
                        
                        Application["PhotoManager_fields"] = pics;


                        Title = "تنظیم تصاویر اصلی سایت";
                        break;

                    case "SettingPrint":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingPrint.ascx"));
                        Title = "تنظیم بخش پرینت فاکتور";
                        break;
                    case "SettingShoping":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingShoping.ascx"));
                        Title = "تنظیم بخش های مراحل خرید";
                        break;
                    case "SettingEmail":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingEmail.ascx"));
                        Title = "تنظیم محتوای ایمیل";
                        break;
                    case "SettingMain":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SettingMain.ascx"));
                        Title = "تنظیمات اصلی سایت";
                        break;

                    case "Exit":
                        Response.Cookies["ID_Admin"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1); 
                        Response.Redirect("~//administrator//Login.aspx");
                        break;


                    case "FactorManage":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//FactorManage.ascx"));
                        if (Request.QueryString["Kind"] == "NoPayment")
                        {
                            Title = "مدیریت فاکتور های واریز نشده";
                        }
                        else if (Request.QueryString["Kind"] == "Payment")
                        {
                            Title = "مدیریت فاکتور های واریز شده";
                        }
                        else if (Request.QueryString["Kind"] == "Sended")
                        {
                            Title = "مدیریت فاکتور های ارسال شده";
                        }
                        break;
                    case "CustomerStory":
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//SuccessStoryManage.ascx"));
                        Title = "مدیریت داستان موفقیت مشتریان";
                        break;
                    default:
                        PlaceHolder2.Controls.Add(LoadControl("~//Administrators//user controls//Index.ascx"));
                        Title = "سیستم مدیریت وب سایت فروشگاه فراجهش شمال";
                        break;
                }
            }

            //else if (Request.QueryString["ID_Root"] != null && Request.QueryString["ID_Root"].Length > 0)
            //{
            //    PlaceHolder6.Controls.Add(LoadControl("~//user controls//product_show_group.ascx"));
            //    Title = "گروه محصولات";
            //}

            else
            {
                PlaceHolder2.Controls.Add(LoadControl("~//Administrator//user controls//Index.ascx"));                
                Title = "سیستم مدیریت وب سایت فروشگاه فراجهش شمال";
            }
        }
        else
        {
            Response.Redirect("~/Administrator/Login.aspx");
        }

    }
}
