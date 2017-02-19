<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Search.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="TopBig">
            <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/sabad.gif" />
            <span class="SpanHeaderBox">جستجو پیشرفته</span>
        </div>
        <div class="DownBig">
            <div class="SepratorBig" style="margin-top: 10px;">
                <asp:Label ID="Label20" runat="server" CssClass="RegisterUserFieldTitle" Text="عنوان محصول :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="RegisterUserField"></asp:TextBox>
            </div>
            <div class="SepratorBig" style="margin-top: 10px;">
                <asp:Label ID="Label1" runat="server" CssClass="RegisterUserFieldTitle" Text="وضعیت محصول :"></asp:Label>
                <asp:DropDownList CssClass="RegisterUserField" AppendDataBoundItems=true  ID="DropDownList1" runat="server" >
                <asp:ListItem Text="همه" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="SepratorBig" style="margin-top: 10px;">
                <asp:Label ID="Label2" runat="server" CssClass="RegisterUserFieldTitle" Text="قیمت بین :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="RegisterUserField" Style="width: 70px;"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" CssClass="RegisterUserFieldTitle" Style="width: 20px;
                    margin-right: 0px;" Text="تا"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="RegisterUserField" Style="width: 70px;"></asp:TextBox>
            </div>
                                 <div class="SepratorBig" style="margin-top: 10px;">
                                   <asp:Button ID="Button1" runat="server" Text="جستجو" Style="float: right; margin-right: 200px;"
            CssClass="ButtonNormal" OnClick="Button1_Click" ValidationGroup="ok" />
</div>
            
            <div class="FactorRegisterRow">
                <div class="FactorRegisterDivGrid">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                        CellPadding="4" ForeColor="#333333" EmptyDataText="نتیجه ای یافت نشد">
                        <Columns>
                            <asp:TemplateField HeaderText=" عنوان محصول">
                                <ItemTemplate>
                                    <asp:Image CssClass="FactorRegisterGridImage" Style="" ID="ImageButton3" runat="server"
                                        ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=70"  %>' />
                                    <asp:HyperLink CssClass="FactorRegisterGridTitle"  ID="HyperLink1" runat="server"
                                        NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id").ToString() +"&ID_Root="+Eval("id_group").ToString()%>'
                                        Text='<%# Eval("title") %>' Style="width:315px;"></asp:HyperLink>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("ID") %>' Visible="False"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="center" VerticalAlign="Top" />
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="وضعیت">
                                <ItemTemplate>
                                    <asp:Label CssClass="FactorRegisterGridPrice" ID="Labssel10" runat="server" Text='<%#Eval("Titlestate").ToString() %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="قيمت ( <img src='./Administrator/files/Design/PriceUnit.gif'> )">
                                <ItemTemplate>
                                    <asp:Label CssClass="FactorRegisterGridPrice" ID="Label10" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("Price").ToString()) %>'></asp:Label>
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
                        <div class="SepratorBig" style="margin-top: 10px;">
</div>
            
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
