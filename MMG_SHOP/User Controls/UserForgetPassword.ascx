<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserForgetPassword.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/lightning.png" />
    <span class="SpanHeaderBox">ارسال رمز عبور</span>
</div>
<div class="DownBig">
    <div class="SepratorBig">
        <asp:Label ID="Label4" runat="server" Style="margin: 20px; float: right;" Text="در صورتیکه رمز عبور خود را فراموش کرده اید لطفا همان آدرس الکترونیکی را که برای ثبت نام استفاده کردید وارد نمایید :"></asp:Label>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label5" runat="server" CssClass="RegisterUserFieldTitle" Text="آدرس الکترونیک :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="text-align:left;direction:ltr;" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="RegisterUserFieldValidation"
            runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2"
            CssClass="RegisterUserFieldValidation" ErrorMessage="ايميل را صحيح وارد کنيد"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ok"></asp:RegularExpressionValidator>
             <asp:Button ID="Button1" runat="server" Text="ارسال ايميل" CssClass="ButtonNormal" style="margin-top:0px;" OnClick="Button1_Click"
        ValidationGroup="ok" Width="84px" />
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label10" runat="server" CssClass="RegisterUserFieldTitle" Text="تکرار آدرس الکترونیک :"></asp:Label>
        <asp:TextBox ID="TextBox1" style="text-align:left;direction:ltr;" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RegisterUserFieldValidation" ID="RequiredFieldValidator2"
            runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
            ControlToValidate="TextBox1" ErrorMessage="ایمیل را صحيح وارد کنيد" ValidationGroup="ok"
            CssClass="RegisterUserFieldValidation"></asp:CompareValidator>
             <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" style="margin-top:0px;" Width="84px"
        OnClick="Button2_Click" />
    </div>
   
       <div class="SepratorBig">

    <asp:Label ID="Label11" runat="server" Style="margin: 20px; float: right;color:Red;width:640px;text-align:center;" Text="رمز عبور به ایمیل شما  با موفقیت ارسال شد.لطفا با وارد شدن  به ایمیل رمز عبور را دریافت کنید."
        Visible="False"></asp:Label>
        </div>
               <div class="SepratorBig">

    <asp:Label ID="Label6" runat="server" Text="کاربر گرامي اگر ايميل شما داراي سرويس اسپم مي باشد , براي ديدن ايميل حاوي رمز عبور علاوه بر بررسي کردن اينباکس قسمت اسپم ايميل را نيز مشاهده کنيد ."
        Style="margin: 20px; float: right;"></asp:Label>
        </div>
</div>
