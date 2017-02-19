<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingMain.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>


<span class="SpanHelp" >جستجوی گوگل</span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">متن جستجو</span><asp:TextBox
        ID="txtGoogleSearch" CssClass="TextBoxNormal" Style="width: 250px; text-align: center"
        runat="server"></asp:TextBox><span class="SpanNormal" style="margin-right: 5px; width: 20px;">
      </span>
</div>



<span class="SpanHelp" >در این قسمت برای تنظیم مقدار درصد مالیات میتوانید اقدام نمایید
    . توجه داشته باشید در صورتی که درصد مالیات 0 گذاشته شود نمایش داده نمیشود و غیر
    فعال می گردد : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">مقدار مالیات</span><asp:TextBox
        ID="TextBox1" CssClass="TextBoxNormal" Style="width: 50px; text-align: center"
        runat="server"></asp:TextBox><span class="SpanNormal" style="margin-right: 5px; width: 20px;">%
        </span>
</div>
<span class="SpanHelp">در این قسمت برای تنظیم مقدار هزینه ارسال می توانید اقدام نمایید. توجه داشته باشید هزینه ارسال در صورت 0 بودن هم نمایش داده میشود  : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">هزینه ارسال</span><asp:TextBox
        ID="TextBox5" CssClass="TextBoxNormal" Style="width: 50px; text-align: center"
        runat="server"></asp:TextBox><asp:Image ID="Image1"  style="margin-right: 5px; float:right;margin-top:10px;" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server" />
</div>

<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عنوان و کلمات کلیدی و توضیح در صفحه اصلی
    سایت میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">عنوان اصلی سایت</span><asp:TextBox
        ID="TextBox2" CssClass="TextBoxNormal" Style="width: 520px;"
        runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">کلمات کلیدی اصلی سایت</span><asp:TextBox
        ID="TextBox3" CssClass="TextBoxNormal" Style="width: 520px;height:100px;" TextMode=MultiLine
        runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">توضیحات اصلی سایت</span><asp:TextBox
        ID="TextBox4" CssClass="TextBoxNormal" Style="width: 520px;height:100px;" TextMode=MultiLine
        runat="server"></asp:TextBox>
</div>

<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم نسخه چاپی برای آدرس شرکت و آدرس مشتری می باشد. توجه داشته باشید که کلمات کلیدی AddressUser  , NameUser و TellphoneUser  موقعیت مشخصات مشتری را در صفحه ی چاپ مشخص میکند : </span>
<div style="float: right; width: 950px; margin-top: 10px;">
    <span class="SpanNormal" style="margin-right: 100px;">محتوا</span><FCKeditorV2:FCKeditor
        ID="FCKeditor1" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
    </FCKeditorV2:FCKeditor>
</div>

<div style="float: right; width: 950px;margin-top: 50px;">
    <asp:Button ID="Button1" Style="margin-right: 425px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ویرایش" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>

<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای به روز رسانی نقشه سایت میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <asp:LinkButton ID="LinkButton1" runat="server"  OnClientClick="return confirm('آیا از این کار اطمینان دارید؟');"  style="margin-right: 390px;" CssClass="TextBoxNormal" OnClick="LinkButton1_Click"> برای به روز رسانی نقشه سایت کلیک کنید</asp:LinkButton>
</div>