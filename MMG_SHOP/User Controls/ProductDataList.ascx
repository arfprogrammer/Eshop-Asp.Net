<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductDataList.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/text_table.png" />
    <span class="SpanHeaderBox">لیست محصولات</span>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>
<div class="DownBig">
    <asp:DataList ID="DataList1" CssClass="DataList" runat="server" RepeatColumns="4"
        RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="DataListDiv">
                <a href='<%# "./index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("id_Group") %>' Visible="False"></asp:Label>
                      <asp:Label ID="Label5" runat="server" Text='<%# Eval("pic") %>' Visible="False"></asp:Label>
                       <asp:Label ID="Label6" runat="server" Text='<%# Eval("title") %>' Visible="False"></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>' Visible="False"></asp:Label>
                    <asp:Image ID="Image2" CssClass="DataListImage" runat="server" ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=100"  %>' AlternateText='<%# Eval("title") %>' />
                </a>
                <asp:HyperLink ID="HyperLink1" CssClass="DataListLink" runat="server" NavigateUrl='<%# "~/index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'
                    Text='<%# Eval("title") %>'></asp:HyperLink>
                <asp:Label ID="Label4" runat="server" CssClass="BasketShopSmallRowPriceTitle" Style="margin-top: 5px;
                    margin-right: 5px;" Text="قيمت :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="DataListLabel" Style="width: 87px;"
                    Text='<%# BLL.PublicClass.numberToMoney(Eval("price").ToString()) %>'></asp:Label><asp:Image ID="Image3" runat="server"
                        CssClass="BasketShopSmallRowPriceUnit" Style="margin-top: 8px;" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" />
                <div style="float: right; width: 149px;">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Administrator/files/Design/puce_menu.gif" Style="float: right;
                        margin-right: 5px; margin-top: 15px;" />
                    <asp:HyperLink Style="float: right; margin-right: 5px; margin-top: 10px;" ID="HyperLink2"
                        runat="server" Text="توضیحات" NavigateUrl='<%# "~/index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'></asp:HyperLink>
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/puce_menu.gif" Style="float: right;
                        margin-right: 45px; margin-top: 15px;" />
                    <asp:LinkButton Style="float: right; margin-right: 5px; margin-top: 10px;" ID="LinkButton1"
                        runat="server" Text="خرید" CommandName="ShopFast"></asp:LinkButton>
                        
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label3" CssClass="EmptyGridBig" runat="server" Text="محصولی در این گروه به ثبت نرسیده است"></asp:Label>
</div>
