<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Path.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<asp:Image ID="Image1" ImageUrl="~/Administrator/files/Design/bread.png" CssClass="PathBoxImage" runat="server" />
<asp:Label ID="lblPath" CssClass="PathBoxPath" runat="server"></asp:Label>
<asp:Panel ID="Panel1" runat="server">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/index.aspx?Type=Search" CssClass="PathBoxSearchLink"
        runat="server">جستجو پیشرفته</asp:HyperLink>
    <asp:Button ID="Button1" runat="server" Text="جستجو" CssClass="ButtonNormal" Style="float: left;
        margin-top: 3px; margin-left: 10px;" OnClick="Button1_Click" />
    <asp:TextBox ID="TextBox1" CssClass="PathBoxSearchTextBox" runat="server"></asp:TextBox>
</asp:Panel>
