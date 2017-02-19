<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SettingPicture.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس هدر سایت
    میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload1" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink1" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/header.gif" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image1" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس زمینه کنترل
    پنل کاربران میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload2" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink2" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/login_center.gif" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image2" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس زمینه مسیر
    جاری میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload3" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink3" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/bgPath.png" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image3" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس زمینه هدر
    باکس ها میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload4" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink4" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/BgTop.gif" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image4" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس زمینه بدنه
    اصلی باکس ها میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload5" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink5" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/BgDown.png" runat="server">مشاهده</asp:HyperLink>
    <asp:Image ID="Image5" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس زمینه فوتر
    سایت میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload6" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink6" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/HeaderDown.jpg" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image6" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس accept.png اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload7" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink7" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image7" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس add_basket.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload8" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink8" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image8" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton8" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس application_form_add.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload9" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink9" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image9" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton9" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس application_form_edit.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload10" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink10" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image10" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton10" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس arrow_dark.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload11" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink11" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image11" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton11" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس arrow_rtl.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload12" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink12" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image12" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton12" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس award_star_gold_2.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload13" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink13" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image13" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton13" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس award_star_silver_3.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload14" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink14" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image14" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton14" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس basket.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload15" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink15" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image15" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton15" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس basket_put.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload16" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink16" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image16" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton16" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس bgDown.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload17" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink17" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image17" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton17" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس bgPath.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload18" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink18" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image18" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton18" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس BgTop.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload19" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink19" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image19" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton19" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس bread.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload20" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink20" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image20" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton20" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس bullet_red.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload21" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink21" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image21" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton21" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس camera.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload22" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink22" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image22" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton22" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس Cart_Continue.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload23" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink23" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image23" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton23" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس Cart_Finish.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload24" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink24" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image24" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton24" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس chart_bar.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload25" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink25" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image25" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton25" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس coins.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload26" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink26" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image26" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton26" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس comment.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload27" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink27" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image27" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton27" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس comments.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload28" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink28" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image28" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton28" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس delete.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload29" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink29" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image29" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton29" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس email_go.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload30" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink30" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image30" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton30" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس empty.jpg میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload31" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink31" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image31" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton31" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس error.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload32" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink32" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image32" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton32" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس folder_magnify.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload33" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink33" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image33" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton33" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس Header.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload34" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink34" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image34" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton34" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس HeaderDown.jpg میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload35" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink35" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image35" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton35" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس help.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload36" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink36" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image36" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton36" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس lightning.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload37" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink37" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image37" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton37" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس login_center.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload38" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink38" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image38" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton38" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس login_right.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload39" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink39" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image39" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton39" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس money_add.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload40" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink40" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image40" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton40" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس mosbat-abi.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload41" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink41" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image41" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton41" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس page.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload42" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink42" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image42" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton42" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس page_white_text.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload43" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink43" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image43" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton43" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس page_word.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload44" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink44" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image44" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton44" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس PriceUnit.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload45" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink45" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image45" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton45" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس print_header.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload46" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink46" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image46" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton46" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس print_right.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload47" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink47" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image47" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton47" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس printer.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload48" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink48" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image48" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton48" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس product_details.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload49" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink49" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image49" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton49" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس puce_menu.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload50" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink50" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image50" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton50" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس sabad.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload51" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink51" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image51" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton51" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس sitemap_color.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload52" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink52" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image52" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton52" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس Submit.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload53" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink53" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image53" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton53" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس text_list.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload54" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink54" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image54" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton54" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس text_table.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload55" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink55" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image55" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton55" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس user.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload56" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink56" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image56" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton56" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس user_edit.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload57" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink57" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image57" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton57" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس vcard.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload58" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink58" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image58" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton58" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس vcard_edit.png میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload59" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink59" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image59" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton59" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<span class="SpanHelp" style="margin-top: 50px;">در این قسمت برای تنظیم عکس Write-Comment.gif میتوانید اقدام نمایید : </span>
<div style="float: right; width: 950px;">
    <span class="SpanNormal" style="margin-right: 225px;">آدرس</span>
    <asp:FileUpload ID="FileUpload60" CssClass="TextBoxNormal" runat="server" />
    <asp:HyperLink ID="HyperLink60" Target="_blank" CssClass="TextBoxNormal" Style="margin-right: 10px;
        width: 50px;" NavigateUrl="~/Administrator/files/Design/PriceUnit.gif" runat="server">مشاهده</asp:HyperLink>
        <asp:Image ID="Image60" CssClass="TextBoxNormal" Style="margin-right: 30px; width: 16px;"
        ImageUrl="~/Administrator/Images/undo.gif" runat="server" />
    <asp:LinkButton CssClass="TextBoxNormal" Style="margin-right: 5px; width: 120px;"
        ID="LinkButton60" runat="server" OnClick="LinkButton7_Click">بازگشت به پیش فرض</asp:LinkButton>
</div>
<div style="float: right; width: 950px; margin-top: 50px;">
    <asp:Button ID="Button1" Style="margin-right: 400px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ویرایش" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
    
</div>
