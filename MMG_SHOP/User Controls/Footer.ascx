<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Footer.ascx.cs" Inherits="user_controls_product_show" %>
<div style="margin-top:5px;">
    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/index.aspx">صفحه اصلی</asp:HyperLink>
    <asp:Label ID="Label10" runat="server" Text=" | " ></asp:Label>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <asp:HyperLink ID="HyperLink2" runat="server"   NavigateUrl='<%# "~/index.aspx?ID_Page="+Eval("id").ToString() %>' Text='<%# Eval("title") %>'></asp:HyperLink>
    <asp:Label ID="Label2" runat="server" Text=" | "></asp:Label>
    </ItemTemplate>
    </asp:Repeater>
   

    <asp:HyperLink ID="HyperLink6" runat="server"  NavigateUrl="~/index.aspx?Type=SiteMap">نقشه سايت</asp:HyperLink>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" style="color:#696969;" Text="استفاده از مطالب سايت ام ام جي سافت برای مقاصد غیر تجاری و با ذکر منبع بلامانع است. کليه حقوق اين سايت متعلق به "></asp:Label>
    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="http://www.mmg-soft.com"
        Target="_blank" style="color:#696969;">ام ام جي سافت</asp:HyperLink>
    <asp:Label ID="Label9" runat="server" style="color:#696969;" Text="مي باشد."></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="http://www.mmg-soft.com"
        Target="_blank" style="color:#696969;">Mmg-Soft.com</asp:HyperLink>
    <asp:Label ID="Label8" runat="server" style="color:#696969;" Text="- Copyright © 2006-2010 - All rights reserved"></asp:Label>
</div>
