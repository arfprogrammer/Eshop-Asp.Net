<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductGrid.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/text_list.png" />
    <span class="SpanHeaderBox">لیست محصولات</span>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>
<div class="DownBig">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        GridLines="None" ShowHeader="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowEditing="GridView1_RowEditing">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="GridProductDiv">
                        <div class="GridProductDivRight">
                         <asp:Label ID="Label11" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                     <asp:Label ID="Label12" runat="server" Text='<%# Eval("id_Group") %>' Visible="False"></asp:Label>
                      <asp:Label ID="Label13" runat="server" Text='<%# Eval("pic") %>' Visible="False"></asp:Label>
                       <asp:Label ID="Label14" runat="server" Text='<%# Eval("title") %>' Visible="False"></asp:Label>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("price") %>' Visible="False"></asp:Label>
                        
                            <a href='<%# "./index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'>
                                <asp:Image ID="Image1" CssClass="GridProductImage" runat="server" ImageUrl='<%#  "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=100"  %>' AlternateText='<%# Eval("title") %>' /></a>
                            <asp:Label ID="Label5" runat="server" CssClass="GridProductLabelTitle" Text="وضعيت :"></asp:Label>
                            <asp:Label ID="Label6" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("titleState") %>'></asp:Label>
                            <asp:Label ID="Label8" runat="server" CssClass="GridProductLabelTitle" Text="امتیاز :"></asp:Label>
                            <asp:Label ID="Label7" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("rate").ToString()+" از 10" %>'></asp:Label>
                            <asp:Label ID="Label4" runat="server" CssClass="GridProductLabelTitle" Text="قيمت :"></asp:Label>
                            <asp:Label ID="Label3" runat="server" CssClass="GridProductLabelField" Style="width: 66px;"
                                Text='<%# BLL.PublicClass.numberToMoney(Eval("price").ToString()) %>'></asp:Label>
                            <asp:Image ID="Image3" runat="server" CssClass="BasketShopSmallRowPriceUnit" Style="margin-top: 13px;
                                margin-right: 1px;" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" />
                            <asp:Label ID="Label9" runat="server" CssClass="GridProductLabelTitle" Text="بازدید :"></asp:Label>
                            <asp:Label ID="Label10" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("number_view").ToString()+" بار" %>'></asp:Label>
                        </div>
                        <div class="GridProductDivLeft">
                            <asp:HyperLink ID="Label1" runat="server" CssClass="GridProductLink" Text='<%# Eval("title") %>'
                                NavigateUrl='<%# "~/index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'></asp:HyperLink>
                            <asp:Label ID="Label2" runat="server" CssClass="GridProductLabelLong" Text='<%# Eval("text_short") %>'></asp:Label>
                        </div>
                        <div style="float: right; width: 590px; margin-top: 20px;">
                            <asp:HyperLink ID="HyperLink1"
                                 runat="server" NavigateUrl='<%# "~/index.aspx?ID_Root="+Eval("id_group").ToString()+"&ID_Product="+Eval("id").ToString() %>'>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Administrator/files/Design/product_details.gif" /></asp:HyperLink>
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/Administrator/files/Design/add_basket.gif" CommandName="Edit" runat="server" />
                        </div>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label3" CssClass="EmptyGridBig" runat="server" Text="محصولی در این گروه به ثبت نرسیده است"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</div>
