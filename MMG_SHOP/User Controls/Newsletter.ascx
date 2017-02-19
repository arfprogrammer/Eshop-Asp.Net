<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Newsletter.ascx.cs" Inherits="User_Controls_Newsletter" %>
<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page.png" />
    <span class="SpanHeaderBox">خبرنامه</span>
</div>
<div class="DownSmall" style="height:75px">    
    <div >
    <asp:Label ID="Label1"  runat="server" Text="ایمیل"  style="margin-right:5px"></asp:Label>    
    <asp:TextBox ID="txtEmail" runat="server" style="margin-top:5px;margin-right:5px"></asp:TextBox>    
    </div>
    <asp:Button ID="btnSave" CssClass="ButtonNormal" runat="server" Text="ذخیره"  style="margin-right:100px"
        onclick="btnSave_Click" />
        <asp:Label ID="lbMessage" runat=server ></asp:Label>    
</div>
