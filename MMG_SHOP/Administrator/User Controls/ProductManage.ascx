<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductManage.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت محصولات میتوانید اقدام نمایید :</span>
<div class="DivFormTextBoxRight">
    <div style="float: right; width: 370px; margin-bottom: 20px;">
        <span class="SpanNormal">بخش اول</span><asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList1" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="ValidationNormal"
            ControlToValidate="DropDownList1" Font-Names="Tahoma" Font-Size="8pt" ErrorMessage="*"
            ValidationGroup="Register"></asp:RequiredFieldValidator>
        <span class="SpanNormal">بخش دوم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList2" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش سوم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList3" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش چهارم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList4" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش پنجم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList5" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش ششم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged"
            AutoPostBack="True" AppendDataBoundItems="True" ID="DropDownList6" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
    </div>
</div>
<div class="DivFormTextBoxLeft">
</div>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
    PageSize="50">
    <Columns>
        <asp:TemplateField HeaderText="نام محصول" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Image CssClass="ImageMosbat" ID="Image1" ImageUrl="~/Administrator/Images/mosbat-abi.gif"
                    runat="server" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~//Administrator//Index.aspx?Type=ProductEdit&ID_Product="+Eval("Id").ToString() %>'
                    Text='<%# Eval("Title") %>'></asp:HyperLink>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' ToolTip='<%# Eval("pic") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="تاريخ ثبت" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="Label12" runat="server" Text='<%# Eval("date_send") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="تعداد مشاهده" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="Label1222" runat="server" Text='<%# Eval("number_View") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="تعداد خرید" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:Label ID="Lab11el12" runat="server" Text='<%# Eval("number_Shop") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="رتبه" HeaderStyle-HorizontalAlign="Center">
            <ItemTemplate>
                <asp:TextBox Style="text-align: center; font-family: Tahoma; font-size: 8pt;" ID="txtrowview"
                    runat="server" Text='<%# Eval("row_view") %>' Width="30px"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <a href='<%# "index.aspx?Type=ProductComment&ID_Product="+Eval("id").ToString() %>'>
                    <asp:Image ID="Imag33eButton1" runat="server" ImageUrl="~/Administrator/Images/comments.png"
                        ToolTip="نظرات" /></a>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <a href='<%# "index.aspx?Type=ProductPicture&ID_Product="+Eval("id").ToString() %>'>
                    <asp:Image ID="ImageB22utton1" runat="server" ImageUrl="~/Administrator/Images/picture_add.png"
                        ToolTip="ثبت عکس" /></a>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
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
                <a href='<%# "index.aspx?Type=ProductEdit&ID_Product="+Eval("id").ToString() %>'>
                    <asp:Image ID="ImageButt21on2" runat="server" ImageUrl="~/Administrator/Images/edit.gif"
                        ToolTip="ویرایش" /></a>
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
        <asp:HyperLink ID="HyperLink2" runat="server" 
        CssClass="ButtonNormal"   NavigateUrl="~/Administrator/files/ExcelOut/ExcelOut.xls">اکسل</asp:HyperLink>
    <asp:Button ID="Button2" Style="margin-right: 740px" CssClass="ButtonNormal" runat="server"
        Text="ذخیره" OnClick="Button2_Click" />
    <asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
</div>
</ContentTemplate>
</asp:UpdatePanel>