<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShopFactorRegister.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="TopBig">
            <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/sabad.gif" />
            <span class="SpanHeaderBox">سبد خرید شما</span>
        </div>
        <div class="DownBig">
            <div class="FactorRegisterRow">
                <a class="FactorRegisterRowButton" href="./index.aspx">
                    <asp:Image ID="ImageButton2" runat="server" ImageUrl="~/Administrator/files/Design/Cart_Continue.gif" />
                </a>
            </div>
            <div class="FactorRegisterRow">
                <div class="FactorRegisterDivGrid">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting"
                        GridLines="None" CellPadding="4" ForeColor="#333333" EmptyDataText="شما مشتري گرامي هنوز محصولي به سبد خريد اضافه نکرديد!">
                        <Columns>
                            <asp:TemplateField HeaderText=" عنوان محصول">
                                <ItemTemplate>
                                    <asp:Image CssClass="FactorRegisterGridImage" Style="" ID="ImageButton3" runat="server"
                                        ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=70"  %>' />
                                    <asp:HyperLink CssClass="FactorRegisterGridTitle" ID="HyperLink1" runat="server"
                                        NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id").ToString() +"&ID_Root="+Eval("id_group").ToString()%>'
                                        Text='<%# Eval("ProductName") %>' Style=""></asp:HyperLink>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
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
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="FactorRegisterGridCount"
                                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Selected="True">1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="جمع ( <img src='./Administrator/files/Design/PriceUnit.gif'> )">
                                <ItemTemplate>
                                    <asp:Label ID="Label14" CssClass="FactorRegisterGridPrice" runat="server" Text="Label"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="حذف">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" Style="float: right; margin-top: 10px;" runat="server"
                                        CommandName="Delete" ImageUrl="~/Administrator/files/Design/Delete.gif" />
                                </ItemTemplate>
                                <ItemStyle VerticalAlign="Top" />
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
                    <div class="FactorRegisterCalcRow" runat=server id="lblHazineErsal">
                        <asp:Image ID="Label5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                            margin-top: 3px;"></asp:Image>
                        <asp:Label ID="Label19" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                        <asp:Label ID="Label8" runat="server" CssClass="FactorRegisterCalcTitle" Text="هزينه ارسال :"></asp:Label>
                    </div>
                   
                    <div class="FactorRegisterCalcRow">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
                            margin-top: 3px;"></asp:Image>
                        <asp:Label ID="Label22" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
                        <asp:Label ID="Label11" runat="server" CssClass="FactorRegisterCalcTitle" Text="مبلغ کل فاکتور :"></asp:Label>
                    </div>
                    <div class="FactorRegisterCalcRow" style="margin-bottom: 20px;">
                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Administrator/files/Design/Cart_Finish.gif"
                            Style="float: left;" OnClick="ImageButton5_Click" />
                        <asp:Image ID="Image6" ImageUrl="~/Administrator/files/Design/error.png" runat="server" Style="float: right;
                            margin-right: 20px; margin-top: 3px; margin-left: 5px;" />
                        <asp:Label ID="Label30" CssClass="FactorRegisterWarning" Style="color: Red;" runat="server"
                            Text="براي اتمام خريد ابتدا بايد وارد کاربريتان شويد تا فاکتور به نام شما ثبت شود :"
                            Visible="False"></asp:Label>
                        <asp:Label ID="Label1" CssClass="FactorRegisterWarning" Style="color: Green;" runat="server"
                            Text="در صورتی که خرید شما به اتمام رسیده است میتوانید روی این دکمه کلیک کنید :"
                            Visible="False"></asp:Label>
                    </div>
                    <div runat="server" id="Login1" visible="false" class="FactorRegisterCalcRow" style="margin-bottom: 20px;">
                        <span style="float: right; margin-right: 20px; margin-top: 8px; margin-left: 5px;">پست
                            الکترونیکی :</span><asp:TextBox ID="TextTitle" CssClass="TextBoxNormal" Style="text-align: left;
                                width: 120px; direction: ltr;" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextTitle"
                            ErrorMessage="*" ValidationGroup="Login2" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
                        <span style="float: right; margin-right: 5px; margin-top: 8px; margin-left: 5px;">رمز
                            عبور :</span><asp:TextBox ID="TextBox1" CssClass="TextBoxNormal" Style="text-align: left;
                                width: 120px;" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="*" ValidationGroup="Login2" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
                        <asp:Button ID="Button1" runat="server" Text="ورود" CssClass="ButtonNormal" Style="float: right;
                            margin-right: 5px; margin-left: 5px; width: 50px; margin-top: 4px;" ValidationGroup="Login2"
                            OnClick="Button1_Click" />
                        <div style="float: right; width: 550px;">
                            <asp:Image ID="Image7" ImageUrl="~/Administrator/files/Design/user_edit.png" runat="server" Style="float: right;
                                margin-right: 20px; margin-top: 33px; margin-left: 5px;" />
                            <asp:HyperLink ID="HyperLink2" CssClass="FactorRegisterWarning" NavigateUrl="~/index.aspx?Type=UserRegister&Kind=Shop"
                                Style="margin-top: 35px; font-weight: bold;" runat="server">در صورتی که هنوز ثبت نام نکرده اید اینجا کلیک کنید ...</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="TopBig">
            <asp:Image ID="Image2" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/help.png" />
            <span class="SpanHeaderBox">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
        </div>
        <div class="DownBig">
            <asp:Label ID="Label12" runat="server"></asp:Label>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
