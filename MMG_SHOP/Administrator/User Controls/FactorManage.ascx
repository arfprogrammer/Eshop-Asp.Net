<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FactorManage.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <span class="SpanHelp">در این قسمت برای مدیریت سفارشات محصولات میتوانید اقدام نمایید
            . توجه داشته باشید در جستجو هر قسمت را خالی بگذارید در نظر گرفته نمیشوند :</span>
        <div class="DivFormTextBoxRight">
            <span class="SpanNormal" style="width: 40px; margin-right: 20px;">روز</span><asp:TextBox
                ID="TextTitle" Width="30" CssClass="TextBoxNormal" runat="server"></asp:TextBox>
            <span class="SpanNormal" style="width: 30px;">ماه</span><asp:TextBox ID="TextBox1"
                Width="30" CssClass="TextBoxNormal" runat="server"></asp:TextBox>
            <span class="SpanNormal" style="width: 30px;">سال</span><asp:TextBox ID="TextBox2"
                Width="30" CssClass="TextBoxNormal" runat="server"></asp:TextBox>
            <div style="float: right; width: 350px; margin-top: 10px;">
                <span style="float: right; margin-right: 10px;">کد رهگیری</span><asp:TextBox ID="TextBox3"
                    CssClass="TextBoxNormal" Style="margin-top: 0px; width: 170px; margin-right: 5px;"
                    runat="server"></asp:TextBox>
                    </div>
                     <div style="float: right; width: 350px; margin-top: 10px;">
                     <span style="float: right; margin-right: 2px;">شماره فاکتور</span><asp:TextBox ID="TextBox4"
                    CssClass="TextBoxNormal" Style="margin-top: 0px; width: 170px; margin-right: 5px;"
                    runat="server"></asp:TextBox>                    
                    </div>
                    <div style="float: right; width: 350px; margin-top: 10px;">
                <span style="float: right; margin-right: 10px;">شهر</span><asp:TextBox ID="txtCity"
                    CssClass="TextBoxNormal" Style="margin-top: 0px; width: 170px; margin-right: 5px;"
                    runat="server"></asp:TextBox>
                    </div>
                    <div style="float: right; width: 350px; margin-top: 10px;">
                <span style="float: right; margin-right: 10px;">کشور</span><asp:TextBox ID="txtCountry"
                    CssClass="TextBoxNormal" Style="margin-top: 0px; width: 170px; margin-right: 5px;"
                    runat="server"></asp:TextBox>
                    </div>                 
                 <div style="float: right; width: 350px; margin-top: 10px;"><span style="float: right; margin-right: 10px;"><asp:HyperLink ID="HyperLink6" runat="server" CssClass="ButtonNormal" NavigateUrl="~/Administrator/files/ExcelOut/ExcelOut.xls">اکسل</asp:HyperLink></span><asp:Button ID="Button1" runat="server" CssClass="ButtonNormal" onclick="Button1_Click" Text="نمایش" /></div>     
        </div>                              
        <asp:GridView Style="margin-top: 20px;" ID="GridView1" runat="server" AllowPaging="True"
            AutoGenerateColumns="False" CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
            PageSize="50" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="شماره فاکتور">
                    <ItemTemplate>
                        <asp:Image CssClass="ImageMosbat" ID="Image1" ImageUrl="~/Administrator/Images/mosbat-abi.gif"
                            runat="server" />
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        <asp:Label ID="Lblid" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle CssClass="GridItemNormal" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="تاريخ فاکتور">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("date_register") %>'></asp:Label>
                        &nbsp;&nbsp;
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="مبلغ فاکتور">
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("sum_price").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="آخرين وضعيت فاکتور">
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("factor_condition") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="سفارش دهنده">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/administrator/index.aspx?Type=UserManage&ID_User="+ Eval("ID_User").ToString() %>'
                            Text='<%# Eval("customer_name") %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="چاپ آدرس">
                <ItemTemplate>
                    <asp:HyperLink ID="Hy32perLink5" runat="server" ImageUrl="~/Administrator/files/Design/printer.png"
                        Target="_blank" NavigateUrl='<%# "~/forms/print_Address.aspx?Id_Factor="+Eval("id").ToString() %>'></asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
             <asp:TemplateField HeaderText="چاپ فاکتور">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Administrator/files/Design/printer.png" ToolTip="فاکتور مورد نظر را می توانید چاپ کنید"
                        Target="_blank" NavigateUrl='<%# "~/forms/print_factor_admin.aspx?Id_Factor="+Eval("id").ToString()+"&Factor_Code="+Eval("factor_code").ToString()+"&Id_User="+Eval("id_user").ToString() %>'></asp:HyperLink>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href='<%# "index.aspx?Type=FactorDetail&ID_Factor="+Eval("id").ToString() %>'>
                            <asp:Image ID="Imag33eButton1" runat="server" ImageUrl="~/Administrator/Images/page_white_text.png"
                                ToolTip="مشاهده" /></a>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/Administrator/Images/delete.gif"
                            OnClientClick="return confirm('آیا از این کار اطمینان دارید؟');" ToolTip="حذف" />
                    </ItemTemplate>
                    <ItemStyle CssClass="GridItemButton" />
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" Text="مطلبی به ثبت نرسیده است"></asp:Label>
            </EmptyDataTemplate>
            <EmptyDataRowStyle CssClass="GridEmpty" />
            <AlternatingRowStyle CssClass="GridRowAlternating" />
            <RowStyle CssClass="GridRow" />
            <HeaderStyle CssClass="GridHeader" />
            <PagerStyle CssClass="GridPaging" />
            <EditRowStyle BorderWidth="0px" CssClass="GridEditing" />
            <SelectedRowStyle CssClass="GridSelecting" />
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
