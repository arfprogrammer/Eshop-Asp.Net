<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserTopPanelLoged.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<asp:Image ID="Image2" runat="server" Style="margin-right: 15px;" ImageUrl="~/Administrator/files/Design/user.png"
    CssClass="PanelTopLogedImage" />
<asp:HyperLink ID="HyperLink1" runat="server" CssClass="PanelTopLogedLink"></asp:HyperLink>
<span class="PanelTopLogedLinkSep">|</span>
<asp:Image ID="Image4" runat="server" ImageUrl="~/Administrator/files/Design/user_edit.png" CssClass="PanelTopLogedImage" />
<asp:HyperLink ID="HyperLink3" runat="server" CssClass="PanelTopLogedLink" NavigateUrl="~/index.aspx?Type=UserEdit">ویرایش مشخصات</asp:HyperLink>
<span class="PanelTopLogedLinkSep">|</span>
<asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/vcard.png" CssClass="PanelTopLogedImage" />
<asp:HyperLink ID="HyperLink2" NavigateUrl="~/index.aspx?Type=UserOrder&Kind=All" runat="server"
    CssClass="PanelTopLogedLink">سوابق خرید من</asp:HyperLink>
<span class="PanelTopLogedLinkSep">|</span>
<asp:Image ID="Image1" runat="server" ImageUrl="~/Administrator/files/Design/comment.png" CssClass="PanelTopLogedImage" />
<asp:HyperLink ID="HyperLink6" runat="server" CssClass="PanelTopLogedLink" NavigateUrl="~/index.aspx?Type=UserSupportComment">ارتباط با پشتیبانی</asp:HyperLink>

<asp:LinkButton ID="HyperLink4" runat="server" CssClass="PanelTopLogedLinkLeft" OnClick="HyperLink4_Click">خروج از پروفایل </asp:LinkButton>
<asp:Image ID="Image3" runat="server" ImageUrl="~/Administrator/files/Design/delete.gif" CssClass="PanelTopLogedLinkLeftImage" />
<asp:HyperLink ID="HyperLink5" runat="server" CssClass="PanelTopLogedLinkLeft" NavigateUrl="~/index.aspx?Type=ShopFactorRegister">مشاهده سبد خرید </asp:HyperLink>
<asp:Image ID="Image6" runat="server" CssClass="PanelTopLogedLinkLeftImage" ImageUrl="~/Administrator/files/Design/basket.png"
    Style="margin-right: 5px; margin-top: 8px;" />
