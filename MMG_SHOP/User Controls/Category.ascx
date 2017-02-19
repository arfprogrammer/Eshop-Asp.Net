<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Category.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/folder_magnify.png" />
    <span class="SpanHeaderBox">گروه های محصولات</span>
</div>
<div class="DownSmall" style=" padding-bottom: 5px;">
    <ul id='menu'>
        <%= PathString %>
    </ul>
</div>
