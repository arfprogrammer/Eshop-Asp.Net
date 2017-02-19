<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageArchive.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/basket_put.png" />
    <span class="SpanHeaderBox">آرشیو صفحات</span>
</div>
<div class="DownBig">
    <asp:GridView Width="650" ID="GridView1" runat="server" AutoGenerateColumns="False" 
          GridLines="None"
        CellPadding="4" ForeColor="#333333"
        AllowPaging="false">
        <RowStyle BackColor="#F6F5F1" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="عنوان صفحه" ShowHeader="False">
                <ItemTemplate>
                    <asp:Image ID="Image2" ImageUrl="~/Administrator/files/Design/mosbat-abi.gif" style="margin-right:5px;margin-left:5px;" runat="server" /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/index.aspx?ID_Page="+Eval("id").ToString() %>'
                        Text='<%# Eval("title") %>'></asp:HyperLink>
                 
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="right" />
                <ItemStyle HorizontalAlign="right" Width="300px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="تاريخ ثبت">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("date_send") %>' Height="18px"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center"  />
            </asp:TemplateField>
               <asp:TemplateField HeaderText="تعداد بازدید">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("page_view") %>' Height="18px"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center"  />
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
