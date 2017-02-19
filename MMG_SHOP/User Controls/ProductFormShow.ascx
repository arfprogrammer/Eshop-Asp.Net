<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductFormShow.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div style="float: left; margin-left: 5px;">
    <asp:ImageButton ID="ImageButton2" CssClass="ProductFormShowButton" ToolTip="بصورت زیر هم با توضیح مختصر"
        Style="" runat="server" ImageUrl="~/Administrator/files/Design/text_list.png" OnClick="ImageButton2_Click" />
    <asp:ImageButton ID="ImageButton1" ToolTip="بصورت جدولی" CssClass="ProductFormShowButton"
        runat="server" ImageUrl="~/Administrator/files/Design/text_table.png" OnClick="ImageButton1_Click" />
    <span class="ProductFormShowTitle">حالت نمایش </span>
</div>
