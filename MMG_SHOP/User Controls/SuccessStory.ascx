<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SuccessStory.ascx.cs" Inherits="User_Controls_SuccessStory" %>

<div class="TopSmall">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page.png" />
    <span class="SpanHeaderBox">داستان موفقیت</span>
</div>
<div class="DownSmall">
    <asp:GridView ID="GridView1" runat="server" Style="margin-bottom: 10px;" AllowPaging="false"
        AutoGenerateColumns="False" GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="BasketShopSmallRow">
                        <asp:Image ID="Image2" runat="server" CssClass="BasketShopSmallRowArow" Style="margin-top: 4px;
                            margin-right: 5px;" ImageUrl="~/Administrator/files/Design/bullet_red.png" />
                        <asp:Label ID="lbCustomerName" runat="server" 
                             Style="margin-top: 0px;line-height:170%;
                            margin-right: 0px; width: 130px;" Text='<%# Eval("CustomerName") %>' 
                            ></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lbBody" runat="server" Text='<%# Eval("PartOfBody") %>'></asp:Label>                                                
                        <div id="Archive" runat="server" style="float: left; width: 82px; text-align: center; padding-top: 10px; font-weight: bold;">                            
                          <asp:HyperLink ID="hpContinue"   runat="server" 
                                NavigateUrl='<%# "~/index.aspx?ID_Story="+Eval("id").ToString() %>' 
                                Font-Size="XX-Small">ادامه</asp:HyperLink>        
                        </div>                        
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label4" runat="server" Text="صفحه ای ثبت نشده است" CssClass="EmptyGridSmall"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <div id="Archive" runat="server" style="float: left; width: 160px; text-align: right;
        height: 30px; padding-top: 10px; font-weight: bold;">
        <asp:Image ID="Image3" style="margin-right:10px" ImageUrl="~/Administrator/files/Design/mosbat-abi.gif" runat="server" />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/index.aspx?Type=StoryArchive"  runat="server">آرشیو...</asp:HyperLink>
    </div>
</div>

