<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingAmar.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<span class="SpanHelp">در این قسمت برای تنظیم محتوای بخش آمار سایت میتوانید اقدام نمایید .
    </span>
<div  class="DivFormTextBoxRight">
 <span class="SpanNormal">نمایش</span><asp:CheckBox ID="TextBox1" CssClass="TextBoxNormal"
        runat="server" ></asp:CheckBox>

    <span class="SpanNormal">محتوا</span><asp:TextBox ID="TextTitle" CssClass="TextBoxNormal"
        runat="server" style="height:130px;" TextMode=MultiLine></asp:TextBox>

    <asp:Button ID="Button1" style="margin-right:150px;" CssClass="ButtonNormal" ValidationGroup="Register" runat="server"
        Text="ویرایش" OnClick="Button1_Click" />
         <asp:Button ID="Button2"  CssClass="ButtonNormal" runat="server"
        Text="انصراف" OnClick="Button2_Click" />
</div>
