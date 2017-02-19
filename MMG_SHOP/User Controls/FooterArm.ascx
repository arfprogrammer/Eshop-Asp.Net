<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FooterArm.ascx.cs" Inherits="user_controls_product_show" %>
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="8">
    <ItemTemplate>
        <div style="height: 118px; width: 120px;">
            <a target="_blank" href='<%# Eval("link").ToString() %>'>
                <asp:Image Style="height: 118px; width: 120px;" ID="Image2" ToolTip='<%# Eval("title").ToString() %>'
                    runat="server" ImageUrl='<%#Eval("Pic") %>' />
            </a>
        </div>
    </ItemTemplate>
</asp:DataList>
