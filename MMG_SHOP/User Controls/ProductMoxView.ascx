<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductMoxView.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/award_star_silver_3.png" />
    <span class="SpanHeaderBox">محصولات پر بازدید</span>
</div>
<div class="DownSmall">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="false" AutoGenerateColumns="False"
        GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div style="float: right; width: 105px;margin-top:3px;margin-bottom:3px;">
                        <asp:Image ID="Image2" runat="server" CssClass="BasketShopSmallRowArow" ImageUrl="~/Administrator/files/Design/arrow_dark.gif" />
                        <asp:HyperLink ID="Label8" runat="server" CssClass="BasketShopSmallRowLink" Text='<%# Eval("title") %>'
                            NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id").ToString()+"&ID_Root=" +Eval("ID_Group").ToString() %>'></asp:HyperLink>
               <div style="float: right; width: 105px;margin-top:3px;">
                        <asp:Label ID="Label4" runat="server" CssClass="BasketShopSmallRowPriceTitle" Text="قيمت:"></asp:Label>
                        <asp:Label ID="Label3" CssClass="BasketShopSmallRowPrice" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("price").ToString()) %>'></asp:Label>
                        <asp:Image ID="Image3" runat="server" CssClass="BasketShopSmallRowPriceUnit" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" />
                        </div>
                        <asp:Label ID="Label1" runat="server" CssClass="BasketShopSmallRowPriceTitle" Text="مشاهده:"></asp:Label>
                        <asp:Label ID="Label2" CssClass="BasketShopSmallRowPrice" runat="server" Text='<%# Eval("number_View").ToString() + " بار" %>'></asp:Label>
                    </div>
                    <div style="float: right; width: 50px;">
                        <asp:Image ID="Image1" runat="server" CssClass="BasketShopSmallRowPic" ImageUrl='<%#  "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=50"  %>' AlternateText='<%# Eval("title") %>'/>
                    </div>
                    <div class="BasketShopSmallRowSpace">
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label4" runat="server" Text="خالی می باشد" CssClass="EmptyGridSmall"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</div>
