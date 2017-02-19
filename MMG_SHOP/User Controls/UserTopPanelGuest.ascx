<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserTopPanelGuest.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<asp:Image ID="Image1" CssClass="PanelTopImageRight" ImageUrl="~/Administrator/files/Design/login_right.gif"  runat="server" />

<span class="PanelTopLoginTitle">پست الکترونیکی :</span>

<asp:TextBox ID="TextTitle"
    CssClass="TextBoxNormal" Style="text-align: left; width: 120px; direction: ltr;"
    runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextTitle"
    ErrorMessage="*" ValidationGroup="Login" CssClass="RegisterUserFieldValidation">
</asp:RequiredFieldValidator>


<span class="PanelTopLoginTitle">رمز عبور :</span>

<asp:TextBox ID="TextBox1" CssClass="TextBoxNormal"
    Style="text-align: left; width: 120px;" TextMode="Password" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
    ErrorMessage="*" ValidationGroup="Login" CssClass="RegisterUserFieldValidation">
</asp:RequiredFieldValidator>

<asp:Button ID="Button1" runat="server" Text="ورود" CssClass="ButtonNormal" Style="float: right;
    margin-right: 5px; margin-left: 5px; width: 50px; margin-top: 5px;" ValidationGroup="Login"
    OnClick="Button1_Click" />
    
<span runat="server" id="lblError" style="color: Red;" visible="false" class="PanelTopLoginTitle">
    اطلاعات اشتباه است
</span>

<asp:HyperLink NavigateUrl="~/Index.aspx?Type=UserRegister" ID="HyperLink1" runat="server"
    CssClass="PanelTopLeftTitle">ثبت نام
</asp:HyperLink>

<asp:Image ID="Image2" runat="server" CssClass="PanelTopLeftImage" ImageUrl="~/Administrator/files/Design/user_edit.png" />

<asp:HyperLink ID="HyperLink2" runat="server" CssClass="PanelTopLeftTitle" Style=""
    NavigateUrl="~/index.aspx?Type=UserForgetPassword">رمز عبور جدید
</asp:HyperLink>

<asp:Image ID="Image3" runat="server" ImageUrl="~/Administrator/files/Design/vcard_edit.png" CssClass="PanelTopLeftImage" />
