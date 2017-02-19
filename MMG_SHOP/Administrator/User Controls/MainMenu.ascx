<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<ul id='menu'>
    <li><a href="./index.aspx">صفحه اصلی</a></li>
    <li><a href="#">محصولات<img class="ArrowDown" src="../administrator/Images/arrowDown.gif" /></a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=ProductInsert">جدید </a></li>
            <li><a href="./index.aspx?Type=ProductManage">ویرایش</a></li>
            <li><a href="./index.aspx?Type=ProductCategory">دسته بندی محصولات</a></li>
            <li><a href="./index.aspx?Type=ProductState">تعریف نوع وضعیت</a></li>
            <li><a href="./index.aspx?Type=ProductComment">نظرات</a></li>
        </ul>
    </li>
    <li><a href="#">سفارشات<img class="ArrowDown" src="../administrator/Images/arrowDown.gif" /></a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=FactorManage&Kind=NoPayment">سفارش واریز نشده </a></li>
            <li><a href="./index.aspx?Type=FactorManage&Kind=Payment">سفارش واریز شده </a></li>
            <li><a href="./index.aspx?Type=FactorManage&Kind=Sended">سفارش ارسال شده </a></li>
        </ul>
    </li>
    <li><a href="#">مدیران<img class="ArrowDown" src="../administrator/Images/arrowDown.gif" /></a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=AdminManage">جدید / ویرایش / حذف </a></li>
            <li><a href="./index.aspx?Type=AdminSecurity">نوع دسترسی</a></li>
        </ul>
    </li>
    <li><a href="#">تبلیغات<img class="ArrowDown" src="../administrator/Images/arrowDown.gif" /></a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=AdvertizingManage">مدیریت تبلیغات</a></li>
            <li><a href="./index.aspx?Type=ArmManage">مدیریت آرم ها</a></li>
        </ul>
    </li>
    <li><a href="#">تنظیمات<img class="ArrowDown" src="../administrator/Images/arrowDown.gif" /></a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=SettingAmar">تنظیم آمار</a></li>
            <li><a href="./index.aspx?Type=SettingPicture">تصاویر اصلی </a></li>
            <li><a href="./index.aspx?Type=SettingPrint">بخش پرینت فاکتور </a></li>
            <li><a href="./index.aspx?Type=SettingShoping">بخش های مراحل خرید</a></li>
            <li><a href="./index.aspx?Type=SettingEmail">تنظیم محتوای ایمیل</a></li>
            <li><a href="./index.aspx?Type=SettingMain">تنظیمات اصلی سایت</a></li>
        </ul>
    </li>
    <li><a href="./index.aspx?Type=PageManage">صفحات</a></li>
    <li><a href="./index.aspx?Type=UserManage">کاربران</a>
        <ul class="submenu">
            <li><a href="./index.aspx?Type=CustomerStory">داستان موفقیت</a></li>            
        </ul>
    </li>
    <li><a href="../index.aspx">مشاهده سایت</a></li>
    <li><a href="./index.aspx?Type=Exit">خروج</a></li>
</ul>
