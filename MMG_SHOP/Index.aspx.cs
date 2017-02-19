using System;
using System.Data;


public partial class Home_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login_User"] != null)
        {
            if (bool.Parse(Request.Cookies["Login_User"].Value))
            {
                PlaceHolder1.Controls.Add(LoadControl("~//user controls//UserTopPanelLoged.ascx"));
            }
            else
            {
                PlaceHolder1.Controls.Add(LoadControl("~//user controls//UserTopPanelGuest.ascx"));
            }
        }
        else
        {
            PlaceHolder1.Controls.Add(LoadControl("~//user controls//UserTopPanelGuest.ascx"));
        }

        PlaceHolder2.Controls.Add(LoadControl("~//user controls//Category.ascx"));
        PlaceHolder4.Controls.Add(LoadControl("~//user controls//Path.ascx"));
        PlaceHolder5.Controls.Add(LoadControl("~//user controls//ProductMoxShop.ascx"));
        PlaceHolder6.Controls.Add(LoadControl("~//user controls//ProductMoxView.ascx"));
        PlaceHolder8.Controls.Add(LoadControl("~//user controls//BasketShop.ascx"));
        PlaceHolder9.Controls.Add(LoadControl("~//user controls//AdvertizingLeft.ascx"));
        PlaceHolder10.Controls.Add(LoadControl("~//user controls//AdvertizingRight.ascx"));
        PlaceHolder11.Controls.Add(LoadControl("~//user controls//FooterArm.ascx"));
        PlaceHolder12.Controls.Add(LoadControl("~//user controls//Footer.ascx"));
        PlaceHolder7.Controls.Add(LoadControl("~//user controls//PageShow.ascx"));
        PlaceHolder13.Controls.Add(LoadControl("~//user controls//Amar.ascx"));
        PlaceHolder15.Controls.Add(LoadControl("~//user controls//Newsletter.ascx"));
        if (new BLL.SuccessStory().SelectOne().Rows.Count > 0)
        {
            PlaceHolder14.Controls.Add(LoadControl("~//user controls//SuccessStory.ascx"));
        }

        if (Request.QueryString["Type"] != null)
        {
            switch (Request.QueryString["Type"].ToString())
            {
                case "404":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserRegister.ascx"));
                    Title = "فرم ثبت نام کاربر";
                    break;

                case "UserRegister":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserRegister.ascx"));
                    Title = "فرم ثبت نام کاربر";
                    break;
                case "UserRegisterOK":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserRegisterOK.ascx"));
                    Title = "موفقیت در ثبت نام";
                    break;
                case "UserEdit":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserEdit.ascx"));
                    Title = "ویرایش مشخصات شخصی";
                    break;
                case "UserProfile":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserProfile.ascx"));
                    Title = "پروفایل کاربر";
                    break;
                case "ShopFactorRegister":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//ShopFactorRegister.ascx"));
                    PlaceHolder8.Controls.Clear();
                    Title = "مشاهده سبد خرید";
                    break;
                case "ShopPeymentRegister":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//ShopPeymentRegister.ascx"));
                    Title = "ثبت اطلاعات پرداختی";
                    break;
                case "ShopPeymentEnd":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//ShopPeymentEnd.ascx"));
                    Title = "تایید ثبت اطلاعات پرداختی";
                    break;
                case "UserOrder":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserOrder.ascx"));
                    Title = "مشاهده سوابق خرید من";
                    break;

                case "UserFactor":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserFactor.ascx"));
                    Title = "مشاهده ریز فاکتور";
                    break;
                case "UserPeymentEdit":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserPeymentEdit.ascx"));
                    Title = "ویرایش اطلاعات پرداختی";
                    break;
                case "UserForgetPassword":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserForgetPassword.ascx"));
                    Title = "ارسال رمز عبور";
                    break;
                case "UserSupportComment":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//UserSupportComment.ascx"));
                    Title = "ارتباط با پشتیبانی";
                    break;
                case "OneRecord":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//OneRecord.ascx"));
                    break;
                case "Search":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//Search.ascx"));
                    Title = "جستجو پیشرفته";
                    break;
                case "SiteMap":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//SiteMap.ascx"));
                    Title = "نقشه سایت";
                    break;
                case "PageArchive":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//PageArchive.ascx"));
                    Title = "آرشیو صفحات";
                    break;
                case "StoryArchive":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//SuccessStoryArchive.ascx"));
                    Title = "آرشیو داستان موفقیت";
                    break;
                case "SuccessStory":
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//NewStoryl.ascx"));
                    Title = "ثبت داستان موفقیت شما";
                    break;                    

                default:



                    if (Request.Cookies["ProductFormShow"] != null)
                    {
                        if (Request.Cookies["ProductFormShow"].Value == "DataList")
                        {
                            PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductDataList.ascx"));
                        }
                        else if (Request.Cookies["ProductFormShow"].Value == "Grid")
                        {
                            PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductGrid.ascx"));
                        }
                    }
                    else
                    {
                        PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductDataList.ascx"));
                    }

                    break;
            }
        }

        else if (Request.QueryString["ID_Product"] != null)
        {
            PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductDetail.ascx"));
        }
        else if (Request.QueryString["ID_Page"] != null)
        {
            PlaceHolder3.Controls.Add(LoadControl("~//user controls//PageDetail.ascx"));
        }
        else if (Request.QueryString["ID_Story"] != null)
        {
            PlaceHolder3.Controls.Add(LoadControl("~//user controls//SuccessStoryDetails.ascx"));
        }
        else
        {
            if (Request.Cookies["ProductFormShow"] != null)
            {
                if (Request.Cookies["ProductFormShow"].Value == "DataList")
                {
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductDataList.ascx"));
                }
                else if (Request.Cookies["ProductFormShow"].Value == "Grid")
                {
                    PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductGrid.ascx"));
                }
            }
            else
            {
                PlaceHolder3.Controls.Add(LoadControl("~//user controls//ProductDataList.ascx"));
            }

        }

    }


}
