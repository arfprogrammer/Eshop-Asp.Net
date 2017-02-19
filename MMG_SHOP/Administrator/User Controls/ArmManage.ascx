<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ArmManage.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<span class="SpanHelp">در این قسمت برای مدیریت آرم ها میتوانید اقدام نمایید . توجه داشته باشید که حداکثر 8 آرم در نمایش نشان داده میشوند
    </span>
<div class="DivFormTextBoxRight">
    <span class="SpanNormal">عنوان</span><asp:TextBox ID="TextTitle" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" CssClass="ValidationNormal" ControlToValidate="TextTitle" Font-Names="Tahoma"
            Font-Size="8pt" ErrorMessage="*" ValidationGroup="Register"></asp:RequiredFieldValidator>
        <span class="SpanNormal">لینک</span><asp:TextBox style="text-align:left;direction:ltr;" ID="TextBox1" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox>
         <span class="SpanNormal">تصویر آرم</span><asp:FileUpload ID="FileUpload1" runat="server"
        CssClass="TextBoxNormal" />
       
        
        
       
       
    <asp:Button ID="Button1" style="margin-right:150px;" CssClass="ButtonNormal" ValidationGroup="Register" runat="server"
        Text="ثبت" OnClick="Button1_Click" />
         <asp:Button ID="Button2"  CssClass="ButtonNormal" runat="server"
        Text="انصراف" OnClick="Button2_Click" />
</div>
<div class="DivFormTextBoxLeft">
   
</div>

<asp:GridView ID="GridView1" style="margin-top:20px;" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDeleting="GridView1_RowDeleting"
    OnRowEditing="GridView1_RowEditing" PageSize="50">
    <Columns>
        <asp:TemplateField HeaderText="عنوان">
            <ItemTemplate>
                <asp:Image CssClass="ImageMosbat" ID="Image1" ImageUrl="~/Administrator/Images/mosbat-abi.gif"
                    runat="server" />
                    <asp:HyperLink ID="Label2" NavigateUrl='<%# Eval("pic") %>' Target="_blank" runat="server" Text='<%# Eval("Title") %>'></asp:HyperLink>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' ToolTip='<%# Eval("pic") %>' Visible="False"></asp:Label>
              
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
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Edit" ImageUrl="~/Administrator/Images/edit.gif"
                    ToolTip="ویرایش" />
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
    <SelectedRowStyle CssClass="GridSelecting"/>
</asp:GridView>
<asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>