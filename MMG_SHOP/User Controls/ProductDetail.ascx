<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductDetail.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page_white_text.png" />
    <span class="SpanHeaderBox">
        <asp:HyperLink ID="Label1" runat="server" Text="Label"></asp:HyperLink></span>
</div>
<div class="DownBig">
    <div class="ProductDetailDivRight">
        <asp:Image ID="Image2" runat="server" CssClass="ProductDetailDivRightPic" />
    </div>
    <div class="ProductDetailDivLeft">
        <asp:Label ID="Label4" runat="server" Text="نام محصول :" CssClass="ProductDetailFieldTitle"
            Style="margin-top: 20px;"></asp:Label>
        <asp:HyperLink ID="Label5" runat="server" Text="Label" CssClass="ProductDetailField"
            Style="margin-top: 20px; margin-bottom: 20px;" Width="300"></asp:HyperLink>
        <asp:Label ID="Label2" runat="server" Text="وضعيت :" CssClass="ProductDetailFieldTitle"></asp:Label>
        <asp:Label ID="Label8" runat="server" Text="" CssClass="ProductDetailField" Width="300"></asp:Label>
        
        <asp:Label ID="Label6" runat="server" Text="امتياز :" CssClass="ProductDetailFieldTitle"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="ProductDetailField" Width="300"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="بازدید :" CssClass="ProductDetailFieldTitle"></asp:Label>
        <asp:Label ID="Label14" runat="server" CssClass="ProductDetailField" Width="300"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="فروش :" CssClass="ProductDetailFieldTitle"></asp:Label>
        <asp:Label ID="Label16" runat="server" CssClass="ProductDetailField" Width="300"></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="دموی محصول :" CssClass="ProductDetailFieldTitle"
            Style="margin-top: 30px;"></asp:Label>
        <asp:HyperLink ID="HyperLink1" Target="_blank" runat="server" CssClass="ProductDetailField"
            Style="margin-top: 30px;"  Width="300" >دانلود</asp:HyperLink>
        <asp:Label ID="Label17" runat="server" Text="کاتالوگ :" CssClass="ProductDetailFieldTitle"
            ></asp:Label>
        <asp:HyperLink ID="HyperLink2" Target="_blank" runat="server" CssClass="ProductDetailField"
              Width="300">دانلود</asp:HyperLink>
        <asp:Label ID="Label9" runat="server" Text="قيمت :" CssClass="ProductDetailFieldTitle"
            Style="margin-top: 40px;"></asp:Label>
        <asp:Label ID="Label21" runat="server" CssClass="ProductDetailField" Style="margin-top: 40px;"></asp:Label>
        <asp:Image ID="Image7" runat="server" CssClass="BasketShopSmallRowPriceUnit" Style="margin-top: 43px;
            margin-right: 2px;" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Administrator/files/Design/add_basket.gif"
            OnClick="ImageButton3_Click" CssClass="ProductDetailButton" />
    </div>
</div>
<div class="TopBig">
    <asp:Image ID="Image3" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/page_word.png" />
    <span class="SpanHeaderBox">مشخصات کامل</span>
</div>
<div class="DownBig">
    <div class="ProductDetailDivBig">
        <asp:Label ID="Label12" runat="server"></asp:Label>
    </div>
</div>
<asp:Panel ID="otherpic" runat=server >
<div class="TopBig">
    <asp:Image ID="Image5" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/camera.png" />
    <span class="SpanHeaderBox">تصاوير بيشتر محصول</span>
</div>
<div class="DownBig">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" CssClass="ProductPicturesGrid" runat="server" AutoGenerateColumns="False"
                GridLines="None" ShowHeader="false" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton CssClass="ProductPicturesGridImageButton" ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=100"    %>'
                                ID="Image4" runat="server" CommandName="Edit" />
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("Pic") %>' Visible="False"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="Label1" CssClass="EmptyGridBig" runat="server" Text="تصویری به ثبت نرسیده است"></asp:Label>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:Image ID="Image6" CssClass="ProductDetailImageBig" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
</asp:Panel>
<div class="TopBig">
    <asp:Image ID="Image4" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/comments.png" />
    <span class="SpanHeaderBox">نظرات این محصول</span>
</div>
<div class="DownBig">
    <asp:GridView ID="GridView2" Style="margin-top: 0px; margin-right: 0px; border: 0px;"
        Width="648" runat="server" AutoGenerateColumns="False" CssClass="Grid" GridLines="None"
        ShowHeader="false">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="GridProductDiv">
                        <div class="GridProductDivRight">
                           
                            <asp:Label ID="Label8" runat="server" CssClass="GridProductLabelTitle" Text="توسط :"></asp:Label>
                            <asp:Label ID="Label7" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("NameUser") %>'></asp:Label>
       <asp:Label ID="Label15" runat="server" CssClass="GridProductLabelTitle" Text="در تاریخ :"></asp:Label>
                            <asp:Label ID="Label18" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("date_send") %>'></asp:Label>
                        </div>
                        <div class="GridProductDivLeft">
                            <asp:Label ID="Label1" runat="server" CssClass="GridProductLink" Text='<%# Eval("title") %>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" CssClass="GridProductLabelLong" Text='<%# Eval("text").ToString().Replace("\r","<br />") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label1" CssClass="EmptyGridBig" style="margin-top:10px;" runat="server" Text="نظری به ثبت نرسیده است"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <span class="ProductDetailCommentLabelBold">شما هم می توانید در مورد این کالا نظر دهید
                : </span><span class="ProductDetailCommentLabelGray">توجه داشته باشید که نظرات بعد از
                    تایید توسط مدیریت نمایش داده می شوند. </span><span class="ProductDetailCommentLabel">
                        نام : </span>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBoxNormal" Style="width: 220px;
                margin-top: 20px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="*" ValidationGroup="okComment" Style="margin-top: 20px;" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            <span class="ProductDetailCommentLabel">ایمیل : </span>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="TextBoxNormal" Style="width: 220px;
                margin-top: 20px; text-align: left; direction: ltr;"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3"
                CssClass="RegisterUserFieldLeft" Style="margin-right: 440px;" Display="Dynamic"
                ErrorMessage="ايميل را صحيح وارد کنيد" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ValidationGroup="okComment"></asp:RegularExpressionValidator>
            <span class="ProductDetailCommentLabel">عنوان نظر : </span>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="TextBoxNormal" Style="width: 530px;
                margin-top: 20px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4"
                ErrorMessage="*" ValidationGroup="okComment" Style="margin-top: 20px;" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            <span class="ProductDetailCommentLabel">نظر شما : </span>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxNormal" TextMode="MultiLine"
                Style="width: 530px; margin-top: 20px; height: 100px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="*" ValidationGroup="okComment" Style="margin-top: 20px;" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Administrator/files/Design/Write-Comment.gif"
                OnClick="ImageButton4_Click" ValidationGroup="okComment" Style="float: right;
                margin-top: 5px; margin-right: 65px; margin-bottom: 20px;" />
            <asp:Label ID="Label11" Visible="false" Style="float: right; color: Green; margin-top: 15px;
                margin-right: 20px; font-weight: bold;" runat="server" Text="نظر شما به ثبت رسید . پس از تایید مدیریت نمایش داده میشود."></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
<asp:HiddenField ID="HiddenField1" runat="server" />
<asp:HiddenField ID="HiddenField2" runat="server" />
