<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserSupportComment.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت نظرات در قسمت پشتیانی میتوانید اقدام
    نمایید :</span>
<div class="DivFormTextBoxRight">
    <asp:Label ID="Label6" runat="server" CssClass="SpanNormal" Text="عنوان مطلب : *"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxNormal" AutoCompleteType="Disabled"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label12" runat="server" CssClass="SpanNormal" Text="متن مطلب : *"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server" CssClass="TextBoxNormal" Height="86px"
        TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Button ID="Button1" Style="margin-right: 150px;" CssClass="ButtonNormal" ValidationGroup="ok"
        runat="server" Text="ثبت" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>
<div class="DivFormTextBoxLeft">


    <asp:LinkButton ID="LinkButton2" runat="server" Style="margin-right: 200px;width:130px;" CssClass="TextBoxNormalLeft"
        OnClick="LinkButton2_Click" >مشاهده پیام های دریافتی</asp:LinkButton>
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="TextBoxNormalLeft" OnClick="LinkButton1_Click"
         Style="width: 130px;margin-right:20px;">مشاهده پیام های ارسالی</asp:LinkButton>
</div>
<asp:GridView ID="GridView1" Style="margin-top: 20px;" runat="server" AllowPaging="True"
    AutoGenerateColumns="False" CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
    OnRowEditing="GridView1_RowEditing" PageSize="50">
    <Columns>
        <asp:TemplateField HeaderText="عنوان نظر" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Image CssClass="ImageMosbat" ID="Image1" ImageUrl="~/Administrator/Images/mosbat-abi.gif"
                    runat="server" />
                <asp:LinkButton CommandName="Edit" Text='<%# Eval("Title") %>' ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("text").ToString().Replace("\r","<br />")  %>'></asp:Label>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
            </EditItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="تاريخ ثبت" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="Label12" runat="server" Text='<%# Eval("date_send") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="100" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="نام کاربر" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:HyperLink ID="Label1222" runat="server" Text='<%# Eval("Name").ToString() + " " + Eval("Family").ToString()%>'
                    NavigateUrl='<%# "~/administrator/index.aspx?Type=UserManage&ID_User="+ Eval("ID_User").ToString() %>'></asp:HyperLink>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
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
<asp:HiddenField ID="HiddenField1" runat="server" />
</ContentTemplate>
</asp:UpdatePanel>