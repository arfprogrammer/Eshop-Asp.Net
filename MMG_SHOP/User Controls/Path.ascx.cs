using System;
using System.Data;

using BLL;
using Common;

public partial class Administrator_User_Controls_MainMenu : System.Web.UI.UserControl
{
    Product_Grouping ac = new Product_Grouping();
    Product_GroupingDatum dm = new Product_GroupingDatum();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillPath();
            FillOther();
        }
        Panel1.DefaultButton = Button1.ID.ToString();
    }

    private void FillOther()
    {
        string Title = "";
        if (Request.QueryString["Type"] != null)
        {
            switch (Request.QueryString["Type"].ToString())
            {
                case "UserRegister":
                    Title = "فرم ثبت نام کاربر";

                    break;
                case "UserRegisterOK":
                    Title = "موفقیت در ثبت نام";
                    break;
                case "UserEdit":
                    Title = "ویرایش مشخصات شخصی";
                    break;
                case "UserProfile":
                    Title = "پروفایل کاربر";
                    break;
                case "ShopFactorRegister":
                    Title = "مشاهده سبد خرید";
                    break;
                case "ShopPeymentRegister":
                    Title = "ثبت اطلاعات پرداختی";
                    break;
                case "ShopPeymentEnd":
                    Title = "تایید ثبت اطلاعات پرداختی";
                    break;
                case "UserOrder":
                    Title = "مشاهده سوابق خرید من";
                    break;

                case "UserFactor":
                    Title = "مشاهده ریز فاکتور";
                    break;
                case "UserPeymentEdit":
                    Title = "ویرایش اطلاعات پرداختی";
                    break;
                case "UserForgetPassword":
                    Title = "ارسال رمز عبور";
                    break;
                case "UserSupportComment":
                    Title = "ارتباط با پشتیبانی";
                    break;
                case "PageArchive":
                    Title = "آرشیو صفحات";
                    break;

            }

            if (Title.Length > 0)
            {
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=" + Request.QueryString["Type"] + "'>" + Title +
                    "</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
            }

        }
    }
    private void FillPath()
    {
        lblPath.Text = "";
        if (Request.QueryString["ID_Root"] != null && Request.QueryString["ID_Root"].Length>0)
        {
            if (Request.QueryString["ID_Root"] != "-1")
            {
                dm.Id = int.Parse(Request.QueryString["ID_Root"]);
                DataTable dt = ac.SelectOne(dm);

                string delimitedInfo = dt.Rows[0]["Path"].ToString();
                string[] discreteInfo = delimitedInfo.Split(new char[] { ',' });
                string title = "";
                DataTable dt2 = new DataTable();
                foreach (string Data in discreteInfo)
                {
                    if (Data == "-1")
                    {
                        title = "صفحه اصلی";
                    }
                    else
                    {
                        dm.Id = int.Parse(Data);
                        dt2 = ac.SelectOne(dm);
                        if (dt2.Rows.Count > 0)
                        {
                            title = dt2.Rows[0]["Title"].ToString();
                        }
                    }
                    lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=" +
                        Data + "'>" + title + "</a>" + "<img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
                }
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=ProductCategory&ID_Root=" +
                    dt.Rows[0]["ID"].ToString() + "'>" + dt.Rows[0]["Title"].ToString() + "</a>" + "<img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
            }
            else
            {
                lblPath.Text = lblPath.Text + "<a href='./index.aspx'>صفحه اصلی</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
            }
        }
        else
        {
            lblPath.Text = lblPath.Text + "<a href='./index.aspx'>صفحه اصلی</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
        }

        if (Request.QueryString["ID_Product"] != null)
        {
            Product ac3 = new Product();
            ProductDatum dm3 = new ProductDatum();
            dm3.Id = decimal.Parse(Request.QueryString["ID_Product"]);
            DataTable dt3 = ac3.Select_Product_One(dm3);
            if (dt3.Rows.Count > 0)
            {
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?ID_Product=" + Request.QueryString["ID_Product"] +
                    "&ID_Root=" + dt3.Rows[0]["id_group"].ToString() + "'>" + dt3.Rows[0]["Title"].ToString() + "</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
            }
            else
            {
                Response.Redirect("~/index.aspx?Type=404");

            }
        }
        if (Request.QueryString["ID_Page"] != null)
        {
            Page_Manage ac4 = new Page_Manage();
            Page_ManageDatum dm4 = new Page_ManageDatum();
            dm4.Id = decimal.Parse(Request.QueryString["ID_Page"]);
            DataTable dt4 = ac4.Select_page_One(dm4);
            if (dt4.Rows.Count > 0)
            {
                lblPath.Text = lblPath.Text + "<a href='./index.aspx?Type=PageArchive'>آرشیو صفحات</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>" +
                    "<a href='./index.aspx?ID_Page=" + Request.QueryString["ID_Page"] +
                    "'>" + dt4.Rows[0]["Title"].ToString() + "</a><img src='./Administrator/files/Design/arrow_rtl.png' class='PathArrow'/>";
            }
            else
            {
                Response.Redirect("~/index.aspx?Type=404");

            }

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.google.com/search?hl=fa&q=" + TextBox1.Text + "&btnG=Google+Search&&sitesearch="+new BLL.Setting().Select().google_search );
    }
}
