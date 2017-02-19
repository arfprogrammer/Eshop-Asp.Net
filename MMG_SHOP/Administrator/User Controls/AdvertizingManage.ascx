<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdvertizingManage.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت تبلیغات میتوانید اقدام نمایید .
    </span>
<div class="DivFormTextBoxRight">
    <span class="SpanNormal">عنوان</span><asp:TextBox ID="TextTitle" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" CssClass="ValidationNormal" ControlToValidate="TextTitle" Font-Names="Tahoma"
            Font-Size="8pt" ErrorMessage="*" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <br />
       <span class="SpanNormal">نمايش فعال گردد</span>
       <asp:CheckBox ID="CheckBox1" runat="server"  Checked="True" 
                                CssClass="SpanNormal" style="text-align:right;"  />
                                <br />
    <asp:Button ID="Button1" style="margin-right:150px;" CssClass="ButtonNormal" ValidationGroup="Register" runat="server"
        Text="ثبت" OnClick="Button1_Click" />
         <asp:Button ID="Button2"  CssClass="ButtonNormal" runat="server"
        Text="انصراف" OnClick="Button2_Click" />
</div>
<div class="DivFormTextBoxLeft">
   <span class="SpanNormalOneLine">توضیح کامل</span>
    <div class="EditorStyle">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
        </FCKeditorV2:FCKeditor>
    </div>
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
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
              
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
       
        <asp:TemplateField HeaderText="تاریخ ثبت">
            <ItemTemplate>
               
                    <asp:Label ID="Label32" runat="server" Text='<%# Eval("date_send") %>'></asp:Label>
              
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
       
       <asp:TemplateField HeaderText="رتبه" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:TextBox Style="text-align: center; font-family: Tahoma; font-size: 8pt;" ID="txtrowview"
                    runat="server" Text='<%# Eval("row_view") %>' Width="30px"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
       
        <asp:TemplateField HeaderText="نمایش" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox1" Enabled=false runat="server" Checked='<%# System.Convert.ToBoolean(Eval("show_Page")) %>' />
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
<div style="width: 900px; float: right; margin-bottom: 20px;">
    <asp:Button ID="Button3" Style="margin-right: 705px" CssClass="ButtonNormal" runat="server"
        Text="ذخیره" OnClick="Button3_Click" />
    <asp:Label ID="Label3" Visible="false" runat="server"></asp:Label>
</div>
<asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
</ContentTemplate></asp:UpdatePanel>