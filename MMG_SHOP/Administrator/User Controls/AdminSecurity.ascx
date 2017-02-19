<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminSecurity.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت سطح دسترسی مدیران میتوانید اقدام نمایید
    . </span><span class="SpanNormal">نام مدیر</span>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="TextBoxNormal"
    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:CheckBoxList Style="margin-top: 20px;" ID="CheckBoxList1" runat="server" CellPadding="5"
    CellSpacing="5" CssClass="Grid" RepeatColumns="4">
    <asp:ListItem Value="Product">محصول</asp:ListItem>
    <asp:ListItem Value="ProductCategory">دسته بندي محصول</asp:ListItem>
    <asp:ListItem Value="ProductComment">نظرات محصول</asp:ListItem>
    <asp:ListItem Value="ProductPicture">تصاویر محصول</asp:ListItem>
    <asp:ListItem Value="ProductState">وضعیت محصول</asp:ListItem>
    <asp:ListItem Value="Advertizing">تبليغات</asp:ListItem>
    <asp:ListItem Value="Shoping">سفارشات</asp:ListItem>
        <asp:ListItem Value="UserManage">کاربران</asp:ListItem>
    <asp:ListItem Value="PageManage">صفحات</asp:ListItem>
    <asp:ListItem Value="Admin">مديران سيستم</asp:ListItem>
    <asp:ListItem Value="Setting">تنظيمات</asp:ListItem>

</asp:CheckBoxList>
<div style="width: 900px; float: right; margin-top: 20px;">
    <asp:Button ID="Button1" Style="margin-right: 120px;" runat="server" OnClick="Button1_Click"
        CssClass="ButtonNormal" Text="ذخيره" />
    <asp:Button ID="Button2" runat="server" CssClass="ButtonNormal" OnClick="Button2_Click"
        Text="لغو" />
    <asp:Label ID="Label2" Style="float: right; color: Red; margin-right: 30px; margin-top: 10px;"
        Visible="false" runat="server" Text="اطلاعات ثبت گردید"></asp:Label>
</div>
</ContentTemplate>
</asp:UpdatePanel>