<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BasketShop.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/sabad.gif" />
    <span class="SpanHeaderBox">سبد خرید شما</span>
</div>
<div class="DownSmall">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="false" AutoGenerateColumns="False"
        GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="BasketShopSmallRow">
                        <asp:Image ID="Image2" runat="server" CssClass="BasketShopSmallRowArow" ImageUrl="~/Administrator/files/Design/arrow_dark.gif" />
                        <asp:HyperLink ID="Label8" runat="server" CssClass="BasketShopSmallRowLink" Text='<%# Eval("ProductName") %>'
                            NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id").ToString()+"&ID_Root=" +Eval("ID_Group").ToString() %>'></asp:HyperLink>
                        <asp:Image ID="Image1" runat="server" CssClass="BasketShopSmallRowPic" ImageUrl='<%#  "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=50"  %>' />
                    </div>
                    <div class="BasketShopSmallRow">
                        <asp:Label ID="Label4" runat="server" CssClass="BasketShopSmallRowPriceTitle" Text="قيمت :"></asp:Label>
                        <asp:Label ID="Label3" CssClass="BasketShopSmallRowPrice" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("price").ToString()) %>'></asp:Label>
                        <asp:Image ID="Image3" runat="server" CssClass="BasketShopSmallRowPriceUnit" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" />
                    </div>
                    <div class="BasketShopSmallRowSpace">
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label4" runat="server" Text="سبد خرید شما خالی می باشد" CssClass="EmptyGridSmall"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:Image ID="Imagen" runat="server" ImageUrl="~/Administrator/files/Design/basket.png" CssClass="BasketShopSmallImageAll" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx?Type=ShopFactorRegister"
        CssClass="BasketShopSmallLinkAll">
       مشاهده سبد خريد</asp:HyperLink>
</div>
