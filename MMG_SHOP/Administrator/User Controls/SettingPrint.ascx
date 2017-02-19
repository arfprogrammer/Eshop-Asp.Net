<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingPrint.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس هدر پرینت فاکتور میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">آدرس</span>
    <asp:FileUpload ID="FileUpload1" CssClass="TextBoxNormal" runat="server" />
        <asp:HyperLink ID="HyperLink1" Target="_blank" CssClass="TextBoxNormal" style="margin-right:10px;width:50px;" NavigateUrl="~/Administrator/files/Design/print_header.gif" runat="server">مشاهده</asp:HyperLink>
<asp:Image ID="Image6" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس سمت راست پرینت فاکتور میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">آدرس</span>
    <asp:FileUpload ID="FileUpload2" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink2" Target="_blank" CssClass="TextBoxNormal" style="margin-right:10px;width:50px;" NavigateUrl="~/Administrator/files/Design/print_right.gif" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image1" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>




<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم بخش متن قسمت زیر محصولات و امضای فاکتور میتوانید اقدام نمایید
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


<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم بخش متن فوتر و آدرس و مشخصات شرکت میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 100px;">عنوان</span><asp:TextBox ID="TextBox2"
        CssClass="TextBoxNormal" Style="width: 520px;" runat="server"></asp:TextBox>
</div>
<div style="float: right; width: 950px; margin-top: 10px;">
    <span class="SpanNormal" style="margin-right: 100px;">محتوا</span><FCKeditorV2:FCKeditor
        ID="FCKeditor2" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
    </FCKeditorV2:FCKeditor>
</div>



<div style="float: right; width: 950px;" style="margin-top: 50px;">
    <asp:Button ID="Button1" Style="margin-right: 425px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ویرایش" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>
