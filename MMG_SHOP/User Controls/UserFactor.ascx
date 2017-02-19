<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserFactor.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page_white_text.png" />
    <span class="SpanHeaderBox">نمایش وضعیت سفارش شما</span>
</div>
<div class="DownBig">
    <div class="FactorRegisterRow">
        <asp:Label ID="Label37" runat="server" Style="float: right; margin-right: 20px; width: 130px;"
            Text="شماره فاکتور:"></asp:Label>
        <asp:Label ID="Label38" runat="server" Style="float: right; margin-right: 10px; color: Red;
            font-weight: bold;"></asp:Label>
    </div>
    <div class="FactorRegisterRow">
        <asp:Label ID="Label1" runat="server" Style="float: right; margin-right: 20px; width: 130px;"
            Text="تاریخ ثبت فاکتور:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="float: right; margin-right: 10px; color: Red;
            font-weight: bold;"></asp:Label>
    </div>
    <div class="FactorRegisterRow" runat="server" id="PayDiv">
        <asp:Label ID="Label3" runat="server" Style="float: right; margin-right: 20px; width: 130px;"
            Text="تاریخ ثبت رسید بانکی:"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="float: right; margin-right: 10px; color: Red;
            font-weight: bold;"></asp:Label>
    </div>
    <div class="FactorRegisterRow" runat="server" id="SendDiv">
        <asp:Label ID="Label6" runat="server" Style="float: right; margin-right: 20px; width: 130px;"
            Text="تاریخ ارسال:"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="float: right; margin-right: 10px; color: Red;
            font-weight: bold;"></asp:Label>
    </div>
    <div class="FactorRegisterRow">
        <asp:Label ID="Label39" runat="server" Style="float: right; margin-right: 20px; width: 130px;"
            Text="آخرین وضعیت فاکتور:"></asp:Label>
        <asp:Label ID="Label40" runat="server" Style="float: right; margin-right: 10px; color: Red;
            font-weight: bold;"></asp:Label>
    </div>
    <div class="FactorRegisterRow">
        <div class="FactorRegisterDivGrid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                CellPadding="4" ForeColor="#333333" EmptyDataText="شما مشتري گرامي هنوز محصولي به سبد خريد اضافه نکرديد!">
                <Columns>
                    <asp:TemplateField HeaderText=" عنوان محصول">
                        <ItemTemplate>
                            <asp:Image CssClass="FactorRegisterGridImage" Style="" ID="ImageButton3" runat="server"
                                ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=70"  %>' />
                            <asp:HyperLink CssClass="FactorRegisterGridTitle" ID="HyperLink1" runat="server"
                                NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id_product").ToString() +"&ID_Root="+Eval("ID_Group").ToString()%>'
                                Text='<%# Eval("title") %>' Style="width: 282px;"></asp:HyperLink>
                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("id_product") %>' Visible="False"></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="center" VerticalAlign="Top" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="قيمت ( <img src='./Administrator/files/Design/PriceUnit.gif'> )">
                        <ItemTemplate>
                            <asp:Label CssClass="FactorRegisterGridPrice" ID="Label10" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("Price").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="تعداد">
                        <ItemTemplate>
                            <asp:Label CssClass="FactorRegisterGridPrice" Style="width: 20px;" ID="Labssel10"
                                runat="server" Text='<%# Eval("product_count") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="جمع ( <img src='./Administrator/files/Design/PriceUnit.gif'> )">
                        <ItemTemplate>
                            <asp:Label ID="Label14" CssClass="FactorRegisterGridPrice" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("fainalprice").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle Font-Bold="True" BackColor="#ECE6DD" ForeColor="#4F4F4F" />
                <AlternatingRowStyle BorderColor="White" BackColor="White" />
            </asp:GridView>
        </div>
    </div>
    <div class="FactorRegisterRow" style="margin-top: 0px; margin-bottom: 20px;">
        <div class="FactorRegisterCalc">
            <div class="FactorRegisterCalcRow">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                    margin-top: 3px;"></asp:Image>
                <asp:Label ID="Label15" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                <asp:Label ID="Label16" runat="server" CssClass="FactorRegisterCalcTitle" Text="جمع خريد شما :"></asp:Label>
            </div> 
             <div class="FactorRegisterCalcRow" runat=server id="lblTasx">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                    margin-top: 3px;"></asp:Image>
                <asp:Label ID="Label33" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                <asp:Label ID="Label9" runat="server" CssClass="FactorRegisterCalcTitle" Text="3% مالیات :"></asp:Label>
            </div>
            <div class="FactorRegisterCalcRow">
                <asp:Image ID="Label5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                    margin-top: 3px;"></asp:Image>
                <asp:Label ID="Label19" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                <asp:Label ID="Label8" runat="server" CssClass="FactorRegisterCalcTitle" Text="هزينه ارسال :"></asp:Label>
            </div>
            <div runat="server" id="DivTakhfif" class="FactorRegisterCalcRow">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                    margin-top: 3px;"></asp:Image>
                <asp:Label ID="Label12" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                <asp:Label ID="Label13" runat="server" CssClass="FactorRegisterCalcTitle" Text="تخفیف :"></asp:Label>
            </div>
           
            <div class="FactorRegisterCalcRow" style="margin-bottom: 20px;">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                    margin-top: 3px;"></asp:Image>
                <asp:Label ID="Label22" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                <asp:Label ID="Label11" runat="server" CssClass="FactorRegisterCalcTitle" Text="مبلغ کل فاکتور :"></asp:Label>
            </div>
        </div>
    </div>
</div>
