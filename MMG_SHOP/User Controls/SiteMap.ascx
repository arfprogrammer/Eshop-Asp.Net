<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SiteMap.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>

<div class="TopBig">
    <asp:Image ID="Image3" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/sitemap_color.png" />
   <span class="SpanHeaderBox">
        <asp:HyperLink ID="Label1" NavigateUrl="~/index.aspx?Type=SiteMap" runat="server" Text="نقشه سایت"></asp:HyperLink></span>
        
      

</div>
<div class="DownBig">
    <div class="ProductDetailDivBig">
           <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            <asp:TreeView style="float:right;" ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="XPFileExplorer"
                    NodeIndent="15" ShowLines="True" EnableTheming="True" >
                    <ParentNodeStyle Font-Bold="False" />
                    <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                    <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px"
                        VerticalPadding="0px" />
                    <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px"
                        NodeSpacing="5px" VerticalPadding="2px" />
                </asp:TreeView>
    </div>
</div>
