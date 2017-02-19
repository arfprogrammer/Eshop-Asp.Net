<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuccessStoryArchive.ascx.cs" Inherits="User_Controls_SuccessStoryArchive" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/basket_put.png" />
    <span class="SpanHeaderBox">آرشیو داستان موفقیت مشتریان</span>
</div>
<div class="DownBig">
    <asp:GridView Width="650px" ID="GridView1" runat="server" AutoGenerateColumns="False" 
          GridLines="None"
        CellPadding="4" ForeColor="#333333" style="direction: ltr">
        <RowStyle BackColor="#F6F5F1" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="عنوان" ShowHeader="False">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("title") %>' 
                        NavigateUrl='<%# "~/index.aspx?ID_Story="+Eval("id").ToString() %>'  ></asp:HyperLink>                    
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="right" />
                <ItemStyle HorizontalAlign="right" Width="300px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="مشتری">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="تاريخ ثبت">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("date_register") %>' 
                        Height="18px"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center"  />
            </asp:TemplateField>
               <asp:TemplateField HeaderText="تعداد بازدید">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("visit_count") %>' 
                        Height="18px"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center"  />
            </asp:TemplateField>
            
          
               
        </Columns>
        <HeaderStyle BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Tahoma"
            Font-Size="8pt" BackColor="#ECE6DD" ForeColor="#4F4F4F" />
        <AlternatingRowStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" BackColor="White" />
         <EmptyDataTemplate>
            <asp:Label ID="Label3" CssClass="EmptyGridBig" runat="server" Text=" موردی برای نمایش وجود ندارد"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</div>

