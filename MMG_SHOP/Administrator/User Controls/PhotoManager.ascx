<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PhotoManager.ascx.cs" Inherits="Administrator_User_Controls_PhotoManager" %>
<span class="SpanHelp" style="margin-top: 50px;" id="spTitle" runat =server>در این قسمت برای تنظیم عکس {0} میتوانید اقدام نمایید : </span>

<div >
    <span class="SpanNormal" style="margin-right: 50;">آدرس</span>        
    <asp:FileUpload ID="iFileUpload" CssClass="TextBoxNormal"  runat="server" />  
    <asp:Button ID="btnSaveFile" CssClass="TextBoxNormal" style="width:70px" runat=server onclick="btnSaveFile_Click" Text="ذخیره شود" />                
    <asp:Image ID="Image1" CssClass="TextBoxNormal" Style="margin-right: 20px; width: 16px;" ImageUrl="~/Administrator/Images/undo.gif" runat="server" />        
    <div><asp:Label ID="lbErr" runat="server" CssClass="TextBoxNormal" Text="سایز عکس صحیح نمیباشد" Visible="False"></asp:Label></div>
    <asp:LinkButton Style="margin-right: 5px; width: 120px; height: 19px;"  ID="lnkDefault" runat="server" OnClick="LinkButton1_Click">بازگشت به پیش فرض</asp:LinkButton>                        
    <br /><br /><br />
 <div style="text-align:center; width:100px; "> <asp:HyperLink ID="hpl" Target="_blank" style="text-align:center; width:500px; "   NavigateUrl="~/Administrator/files/Design/header.gif" runat="server">مشاهده</asp:HyperLink>
 </div>
</div>
  










