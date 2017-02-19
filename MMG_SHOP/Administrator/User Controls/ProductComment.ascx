<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductComment.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت نظرات محصولات میتوانید اقدام نمایید :</span>
<div class="DivFormTextBoxRight">
</div>
<div class="DivFormTextBoxLeft">
</div>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
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
                <asp:Label ID="Label5" runat="server"  Text='<%# Eval("text").ToString().Replace("\r","<br />")  %>'></asp:Label>
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
        <asp:TemplateField HeaderText="نام ثبت کننده" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
            
                <asp:HyperLink ID="Label1222" runat="server" Text='<%# Eval("NameUser") %>' Target=_blank NavigateUrl='<%# "Email:" +Eval("Email").ToString() %>'></asp:HyperLink>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
       
        <asp:TemplateField HeaderText="نام محصول" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="Label221222" runat="server" Text='<%# Eval("NameProduct") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="نمایش" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# System.Convert.ToBoolean(Eval("show_comment")) %>' />
            </ItemTemplate>
            <ItemStyle Width="40" HorizontalAlign="Center" />
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
<div style="width: 900px; float: right; margin-bottom: 20px;">
    <asp:Button ID="Button2" Style="margin-right: 835px" CssClass="ButtonNormal" runat="server"
        Text="ذخیره" OnClick="Button2_Click" />
    <asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
</div>
</ContentTemplate>
</asp:UpdatePanel>