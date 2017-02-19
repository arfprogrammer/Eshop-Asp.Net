<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageDetail.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>

<div class="TopBig">
    <asp:Image ID="Image3" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page_word.png" />
   <span class="SpanHeaderBox">
        <asp:HyperLink ID="Label1" runat="server" Text="Label"></asp:HyperLink></span>
        
        <asp:Label ID="Label3" style="float:left;color:Red;margin-left:20px;margin-top:5px;" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label2" style="float:left;margin-left:10px;margin-top:5px;" runat="server" Text="تعداد بازدید :"></asp:Label>
        <asp:Label ID="Label4" style="float:left;color:Red;margin-left:20px;margin-top:5px;" runat="server" Text="0"></asp:Label>
    <asp:Label ID="Label5" style="float:left;margin-left:10px;margin-top:5px;" runat="server" Text="ثبت شده در تاریخ :"></asp:Label>

</div>
<div class="DownBig">
    <div class="ProductDetailDivBig">
        <asp:Label ID="Label12" runat="server"></asp:Label>
    </div>
</div>
