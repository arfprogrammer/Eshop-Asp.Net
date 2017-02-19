<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuccessStoryManage.ascx.cs" Inherits="Administrator_User_Controls_SuccessStoryManage" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت داستان موفقیت میتوانید اقدام نمایید . </span>


<div class="DivFormTextBoxLeft">
</div>
<asp:GridView ID="GridView1" Style="margin-top: 20px;" runat="server" AllowPaging="True"
    AutoGenerateColumns="False" CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
      PageSize="50" 
        onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
         >
    <Columns>
        <asp:TemplateField HeaderText="نام کاربر">
            <FooterTemplate>
                &nbsp;
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("CustomerName") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="عنوان" HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("title") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="متن" HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("PartOfBody") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Height="134px" ReadOnly="True" 
                    Text='<%# Eval("Body") %>' TextMode="MultiLine" Width="100%"></asp:TextBox>
                    <asp:Button ID="btnItemView" runat="server" CssClass="ButtonNormal" style="margin-right:60px"
        Text="برگشت" CommandName="ItemView" />
            </EditItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="نمایش پیام">
            <ItemTemplate>
                <asp:ImageButton ID="imgViewMessage" runat="server" 
                    CommandName="Edit" 
                    ImageUrl="~/Administrator/files/Design/folder_magnify.png" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="نشان داده شود" 
            HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:CheckBox ID="chkState" runat="server" 
                    Checked='<%# Eval("admin_active") %>' />
                <asp:Label ID="lbActiveState" runat="server" Text='<%# Eval("id") %>' 
                    Visible="False"></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/Administrator/Images/delete.gif"
                    OnClientClick="return confirm('آیا از این کار اطمینان دارید؟');" 
                    ToolTip="حذف" CommandArgument='<%# Eval("Id") %>' />
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <asp:Label ID="Label1" runat="server" Text="موردی به ثبت نرسیده است"></asp:Label>
    </EmptyDataTemplate>
    <EmptyDataRowStyle CssClass="GridEmpty" />
    <AlternatingRowStyle CssClass="GridRowAlternating" />
    <RowStyle CssClass="GridRow" />
    <HeaderStyle CssClass="GridHeader" />
    <PagerStyle CssClass="GridPaging" />
    <EditRowStyle BorderWidth="0px" CssClass="GridEditing" />
    <SelectedRowStyle CssClass="GridSelecting" />
</asp:GridView>
<div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="ButtonNormal" style="margin-right:60px"
        Text="ذخیره" />
</div>
<asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
<asp:HiddenField ID="HiddenField1" runat="server" />
<asp:HiddenField ID="HiddenField2" runat="server" />
</ContentTemplate>
</asp:UpdatePanel>