<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductPicture.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<span class="SpanHelp">در این قسمت برای ثبت تصاویر بیشتر برای محصول میتوانید اقدام نمایید
    . </span>
<div class="DivFormTextBoxRight">

 <span class="SpanNormal">عکس محصول</span><asp:FileUpload ID="FileUpload1" runat="server"
        CssClass="TextBoxNormal" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" CssClass="ValidationNormal" ControlToValidate="FileUpload1" Font-Names="Tahoma"
            Font-Size="8pt" ErrorMessage="*" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <asp:Button ID="Button1" Style="margin-right: 150px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ثبت" OnClick="Button1_Click" />
</div>
<div class="DivFormTextBoxLeft">
</div>
<asp:GridView ID="GridView1" style="margin-top:20px;" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDeleting="GridView1_RowDeleting" PageSize="50">
    <Columns>
        <asp:TemplateField HeaderText="تصویر کوچک شده">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("Pic") %>' Target="_blank" runat="server">
                    <asp:Image Style="border: solid 1px gray; margin: 1px;" Height="100px" Width="100px"
                        ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=100"    %>' ID="Image4"
                        runat="server" />
                </asp:HyperLink>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
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
