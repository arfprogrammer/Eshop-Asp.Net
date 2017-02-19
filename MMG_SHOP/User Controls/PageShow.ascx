<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageShow.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page.png" />
    <span class="SpanHeaderBox">صفحات</span>
</div>
<div class="DownSmall">
    <asp:GridView ID="GridView1" runat="server" Style="margin-bottom: 10px;" AllowPaging="false"
        AutoGenerateColumns="False" GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="BasketShopSmallRow">
                        <asp:Image ID="Image2" runat="server" CssClass="BasketShopSmallRowArow" Style="margin-top: 4px;
                            margin-right: 5px;" ImageUrl="~/Administrator/files/Design/bullet_red.png" />
                        <asp:HyperLink ID="Label8" runat="server" CssClass="BasketShopSmallRowLink" Style="margin-top: 0px;line-height:170%;
                            margin-right: 0px; width: 130px;" Text='<%# Eval("title") %>' NavigateUrl='<%# "~/index.aspx?ID_Page="+Eval("id").ToString() %>'></asp:HyperLink>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label4" runat="server" Text="صفحه ای ثبت نشده است" CssClass="EmptyGridSmall"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <div id="Archive" runat="server" style="float: right; width: 160px; text-align: center;
        height: 30px; padding-top: 10px; font-weight: bold;">
        <asp:Image ID="Image3" ImageUrl="~/Administrator/files/Design/mosbat-abi.gif" runat="server" />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/index.aspx?Type=PageArchive" runat="server">آرشیو صفحات</asp:HyperLink>
    </div>
</div>
