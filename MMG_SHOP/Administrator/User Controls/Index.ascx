<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Index.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>

<br />
<br />
<br />
<br />
<br />
<br />
برای استفاده از امکانات  مدیریت از منوی بالای صفحه استفاده کنید.

<br />
<br />
<br />
<br />
<br />
<br /><br />
<br />
<br />
<div>
<asp:HyperLink ID="lnkNotPay" runat=server NavigateUrl="~/Administrator/index.aspx?Type=FactorManage&Kind=NoPayment" >سفارش واریز نشده امروز(0)</asp:HyperLink>
<span><asp:HyperLink ID="lnkPayToday" runat=server 
        
        NavigateUrl="~/Administrator/index.aspx?Type=FactorManage&amp;Kind=Payment" >سفارش واریز شده امروز(0  </asp:HyperLink></span>
</div>
<div>
<asp:HyperLink ID="lnkNewUser" runat=server 
        NavigateUrl="~/Administrator/index.aspx?Type=UserManage" >کاربر جدید امروز(3)</asp:HyperLink>
<span>
    <asp:HyperLink ID="lnkMessage" runat=server 
        NavigateUrl="~/Administrator/index.aspx?Type=ProductComment" >نظرجدید(5)</asp:HyperLink></span>
</div>
<span>
    <asp:HyperLink ID="lnkSuccessStory" runat=server 
        NavigateUrl="~/Administrator/index.aspx?Type=CustomerStory" >داستان موفقیت(5)</asp:HyperLink></span>
</div>