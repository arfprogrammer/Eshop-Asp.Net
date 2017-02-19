<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserOrder.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/basket_put.png" />
    <span class="SpanHeaderBox">لیست سوابق خرید من</span>
</div>
<div class="DownBig">
    <asp:GridView Width="650" ID="GridView1" runat="server" AutoGenerateColumns="False" 
          GridLines="None"
        CellPadding="4" ForeColor="#333333"
        AllowPaging="false">
        <RowStyle BackColor="#F6F5F1" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="شماره فاکتور" ShowHeader="False">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text_input_bold_blue" NavigateUrl='<%# "~/index.aspx?Type=UserFactor&Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString() %>'
                        Text='<%# Eval("Id") %>'></asp:HyperLink>
                 
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" Width="70px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="تاريخ ثبت">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("date_register") %>' Height="18px"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" Width="70px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="مبلغ فاکتور ( <img src='./Administrator/files/Design/PriceUnit.gif'> )">
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("sum_price").ToString()) %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="آخرين وضعيت فاکتور">
                <ItemTemplate>
                    <asp:Label ID="HyperLink2" runat="server" CssClass="text_input_blue" Text='<%# Eval("factor_condition") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="نمايش">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/Administrator/files/Design/page_white_text.png"
                        NavigateUrl='<%# "~/index.aspx?Type=UserFactor&Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString() %>'>HyperLink</asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="رسيد بانک">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Administrator/files/Design/money_add.png" NavigateUrl='<%# "~/index.aspx?Type=UserPeymentEdit&Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString() %>'
                        ToolTip="دراین بخش اطلاعات مبلغ واریز شده برای فاکتور نمایش داده می شود"> 
						[HyperLink3]</asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="چاپ">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Administrator/files/Design/printer.png" ToolTip="فاکتور مورد نظر را می توانید چاپ کنید"
                        Target="_blank" NavigateUrl='<%# "~/forms/print_factor.aspx?Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString() %>'></asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ایمیل">
                <ItemTemplate>
                    <asp:HyperLink ID="ImageButton4" runat="server" ImageUrl="~/Administrator/files/Design/email_go.png" Target="_blank"
                        ToolTip="فاکتور مورد نظر را می توانید به آدرس ایمیل مورد نظر ارسال کنید"  NavigateUrl='<%# "~/forms/Email_factor.aspx?Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString()%>' > </asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Tahoma"
            Font-Size="8pt" BackColor="#ECE6DD" ForeColor="#4F4F4F" />
        <AlternatingRowStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" BackColor="White" />
         <EmptyDataTemplate>
            <asp:Label ID="Label3" CssClass="EmptyGridBig" runat="server" Text="مشتری گرامی ، هنوز سفارشی از جانب شما دریافت نشده است."></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</div>
