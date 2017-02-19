<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewStoryl.ascx.cs" Inherits="User_Controls_NewStoryl" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="TopBig">
            <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" 
                ImageUrl="~/Administrator/files/Design/user_edit.png" Height="16px" Width="17px" />
            <span class="SpanHeaderBox">درج داستان موفقیت</span>
        </div>
        <div class="DownBig">
            <div class="SepratorBig">
                <asp:Label ID="Label6" runat="server" Style="margin-right: 20px;" CssClass="RegisterUserFieldTitle"
                    Text="عنوان  : *"></asp:Label>
                <asp:TextBox ID="txttitle" runat="server" CssClass="RegisterUserField" Width="400"
                    AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttitle"
                    ErrorMessage="*" ValidationGroup="ok" 
                    CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            </div>
            <div class="SepratorBig">
                <asp:Label ID="Label12" runat="server" Style="margin-right: 20px;" CssClass="RegisterUserFieldTitle"
                    Text="متن  : *"></asp:Label>
                <asp:TextBox ID="txtBody" runat="server" CssClass="RegisterUserField" Height="86px"
                    TextMode="MultiLine" Width="400"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBody"
                    ErrorMessage="*" ValidationGroup="ok" 
                    CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            </div>
            <div class="SepratorBig" style="margin-bottom: 20px; margin-top: 20px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت" Style="float: right; margin-right: 280px; height: 26px;"
                    CssClass="ButtonNormal" OnClick="Button1_Click" ValidationGroup="ok" />
                <asp:Button ID="Button2" runat="server" Text="انصراف" CssClass="ButtonNormal" OnClick="Button2_Click" />
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>