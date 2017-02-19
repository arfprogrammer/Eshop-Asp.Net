<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingEmail.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<span class="SpanHelp">در این قسمت برای تنظیم بخش متن ایمیل تایید ثبت نام میتوانید اقدام نمایید . توجه داشته باشید کلمات تعریف شده name , username و password باید در محتوا باشند تا در سمت کاربر این کلمات با مشخصات کاربر مربوطه جایگزین گردند
    : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">عنوان</span><asp:TextBox ID="TextBox1"
        CssClass="TextBoxNormal" Style="width: 520px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px; margin-top: 10px;">
    <span class="SpanNormal" style="margin-right: 100px;">محتوا</span><FCKeditorV2:FCKeditor
        ID="FCKeditor1" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
    </FCKeditorV2:FCKeditor>
</div>

<span class="SpanHelp" style="margin-top:50px;">در این قسمت برای تنظیم بخش متن ایمیل ارسال فاکتور میتوانید اقدام نمایید . توجه داشته باشید کلمات تعریف شده LinkFactor و TextUser باید در محتوا باشند تا در سمت کاربر این کلمات با مشخصات کاربر مربوطه جایگزین گردند
    : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">عنوان</span><asp:TextBox ID="TextBox7"
        CssClass="TextBoxNormal" Style="width: 520px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px; margin-top: 10px;">
    <span class="SpanNormal" style="margin-right: 100px;">محتوا</span><FCKeditorV2:FCKeditor
        ID="FCKeditor2" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
    </FCKeditorV2:FCKeditor>
</div>

<span class="SpanHelp" style="margin-top:50px;">در این قسمت برای تنظیم بخش متن ایمیل فراموشی رمز عبور میتوانید اقدام نمایید . توجه داشته باشید کلمات تعریف شده password و username باید در محتوا باشند تا در سمت کاربر این کلمات با مشخصات کاربر مربوطه جایگزین گردند
    : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">عنوان</span><asp:TextBox ID="TextBox8"
        CssClass="TextBoxNormal" Style="width: 520px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px; margin-top: 10px;">
    <span class="SpanNormal" style="margin-right: 100px;">محتوا</span><FCKeditorV2:FCKeditor
        ID="FCKeditor3" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
    </FCKeditorV2:FCKeditor>
</div>

<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم بخش تنظیمات ارسال ایمیل میتوانید اقدام نمایید
    : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">نام نمایشی</span><asp:TextBox ID="TextBox2"
        CssClass="TextBoxNormal" Style="width: 220px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">ایمیل نمایشی</span><asp:TextBox ID="TextBox3"
        CssClass="TextBoxNormal" Style="width: 220px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;margin-top:20px;">
    <span class="SpanNormal" style="margin-right: 100px;">Smtp_Host</span><asp:TextBox ID="TextBox4"
        CssClass="TextBoxNormal" Style="width: 220px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">ایمیل فرستنده</span><asp:TextBox ID="TextBox5"
        CssClass="TextBoxNormal" Style="width: 220px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">رمز ایمیل فرستنده</span><asp:TextBox ID="TextBox6"
        CssClass="TextBoxNormal" Style="width: 220px;" runat="server"></asp:TextBox>
</div>

<div style="float: right; width: 950px;margin-top: 50px;">
    <asp:Button ID="Button1" Style="margin-right: 425px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ویرایش" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>
