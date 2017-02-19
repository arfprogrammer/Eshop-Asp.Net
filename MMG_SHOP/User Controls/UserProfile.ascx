<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserProfile.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/user_edit.png" />
    <span class="SpanHeaderBox">پروفایل کاربر</span>
</div>
<div class="DownBig">
    <div class="SepratorBig" style="margin-top: 20px;">
        <div class="SepratorBig">
            <asp:Label ID="Label2" runat="server" CssClass="RegisterUserFieldTitle" Text=" سفارش پرداخت نشده:"></asp:Label>
            <asp:HyperLink ID="Label38" runat="server" NavigateUrl="~/index.aspx?Type=UserOrder&Kind=NoPayment" CssClass="RegisterUserField2"></asp:HyperLink>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label3" runat="server" CssClass="RegisterUserFieldTitle" Text=" سفارش پرداخت شده:"></asp:Label>
            <asp:HyperLink ID="Label4" runat="server" NavigateUrl="~/index.aspx?Type=UserOrder&Kind=Payment" CssClass="RegisterUserField2"></asp:HyperLink>
        </div>

        <div class="SepratorBig">
            <asp:Label ID="Label5" runat="server" CssClass="RegisterUserFieldTitle" Text=" سفارش ارسال شده:"></asp:Label>
            <asp:HyperLink ID="Label40" runat="server" NavigateUrl="~/index.aspx?Type=UserOrder&Kind=Sended" CssClass="RegisterUserField2"></asp:HyperLink>
        </div>
        
        <div class="SepratorBig" style="margin-top: 20px;">
            <asp:Label ID="Label6" runat="server" CssClass="RegisterUserFieldTitle" Text="آدرس الکترونیک :"></asp:Label>
            <asp:Label ID="TextBox1" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label20" runat="server" CssClass="RegisterUserFieldTitle" Text="نام :"></asp:Label>
            <asp:Label ID="TextBox4" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label23" runat="server" CssClass="RegisterUserFieldTitle" Text="نام خانوادگی :"></asp:Label>
            <asp:Label ID="TextBox5" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label1" runat="server" CssClass="RegisterUserFieldTitle" Text="نام شرکت :"></asp:Label>
            <asp:Label ID="TextBox12" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label7" runat="server" CssClass="RegisterUserFieldTitle" Text="تلفن ثابت :"></asp:Label>
            <asp:Label ID="TextBox6" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label8" runat="server" CssClass="RegisterUserFieldTitle" Text="تلفن همراه :"></asp:Label>
            <asp:Label ID="TextBox7" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label9" runat="server" CssClass="RegisterUserFieldTitle" Text="کد پستي  :"></asp:Label>
            <asp:Label ID="TextBox8" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label24" runat="server" CssClass="RegisterUserFieldTitle" Text="کشور :"></asp:Label>
            <asp:Label ID="TextBox9" runat="server" CssClass="RegisterUserField2">ايران</asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label10" runat="server" CssClass="RegisterUserFieldTitle" Text="استان :"></asp:Label>
            <asp:Label ID="DropDownList1" runat="server" CssClass="RegisterUserField2">
            </asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label11" runat="server" CssClass="RegisterUserFieldTitle" Text="شهر :"></asp:Label>
            <asp:Label ID="TextBox10" runat="server" CssClass="RegisterUserField2"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:Label ID="Label12" runat="server" CssClass="RegisterUserFieldTitle" Text="آدرس پستي :"></asp:Label>
            <asp:Label ID="TextBox11" runat="server" CssClass="RegisterUserField2" Style="margin-bottom: 20px;"
                Width="300"></asp:Label>
        </div>
        <div class="SepratorBig">
            <asp:HyperLink ID="hpSuccessStory" runat="server" NavigateUrl="~/index.aspx?Type=SuccessStory">ثبت داستان موفقیت</asp:HyperLink>            
        </div>
    </div>
</div>
