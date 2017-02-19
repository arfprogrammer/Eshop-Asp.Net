<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminManage.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت مدیران میتوانید اقدام نمایید . </span>
<div class="DivFormTextBoxRight">
    <span class="SpanNormal">نام مدیر</span>
    <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3"
        CssClass="ValidationNormal" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    <span class="SpanNormal">نام کاربری</span>
    <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <span class="SpanNormal">رمز عبور</span>
    <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" CssClass="TextBoxNormal"
        TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
        ErrorMessage="*" CssClass="ValidationNormal" ValidationGroup="ok"></asp:RequiredFieldValidator>
    <asp:Button ID="Button3" Style="margin-right: 150px;" CssClass="ButtonNormal" ValidationGroup="ok"
        runat="server" Text="ثبت" OnClick="Button1_Click" />
    <asp:Button ID="Button4" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>
<div class="DivFormTextBoxLeft">
    <asp:Label ID="Label2" Style="float: right; color: Red;" Visible="false" runat="server"
        Text="نام کاربری تکراری می باشد"></asp:Label>
</div>
<asp:GridView ID="GridView1" Style="margin-top: 20px;" runat="server" AllowPaging="True"
    AutoGenerateColumns="False" CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" PageSize="50">
    <Columns>
        <asp:TemplateField HeaderText="نام مدير">
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" CssClass="text_input" Text='<%# Eval("name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="نام کاربري">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("username") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <a href='<%# "index.aspx?Type=AdminSecurity&ID_Admin="+Eval("id").ToString() %>'>
                    <asp:Image ID="ImageButton4" runat="server" ImageUrl="~/Administrator/Images/manag.png" /></a>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Administrator/Images/delete.gif"
                    CommandName="Delete" OnClientClick="return confirm('آیا از این کار اطمینان دارید؟');" />
                <asp:Label ID="Lblid" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Edit" ImageUrl="~/Administrator/Images/edit.gif" />
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <asp:Label ID="Label1" runat="server" Text="مدیری به ثبت نرسیده است"></asp:Label>
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
<asp:HiddenField ID="HiddenField2" runat="server" />
<asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
</ContentTemplate>
</asp:UpdatePanel>