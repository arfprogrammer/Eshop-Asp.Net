<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShopPeymentRegister.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    
    
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/accept.png" />
    <span class="SpanHeaderBox">تایید ثبت فاکتور</span>
</div>
<div class="DownBig" style="min-height: 20px;">
    <div style="float: right; width: 645px; margin-top: 20px; margin-bottom: 20px;">
        <asp:Label ID="Label35" runat="server" Text="سفارش شما با شماره فاکتور " CssClass="PeymentRegisterFactorTitle"></asp:Label>
        <asp:Label ID="Label34" runat="server" Text="Label" CssClass="PeymentRegisterFactorField"></asp:Label>
        <asp:Label ID="Label36" runat="server" Text=" و کد رهگيري " CssClass="PeymentRegisterFactorTitle"></asp:Label>
        <asp:Label ID="Label37" runat="server" Text="Label" CssClass="PeymentRegisterFactorField"></asp:Label>
        <asp:Label ID="Label54" runat="server" Text="و با مبلغ کل" CssClass="PeymentRegisterFactorTitle"></asp:Label>
        <asp:Label ID="Label55" runat="server" Text="Label"  CssClass="PeymentRegisterFactorField"></asp:Label>
        <asp:Image ID="Image5" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" CssClass="PeymentRegisterFactorTitle" style="margin-top:5px;" runat="server" />
        <asp:Label ID="Label38" runat="server" Text="ثبت شده است." CssClass="PeymentRegisterFactorTitle"></asp:Label>
    </div>
</div>
<div class="TopBig">
    <asp:Image ID="Image2" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/help.png" />
    <span class="SpanHeaderBox"> <asp:Label ID="Label4" runat="server" Text=""></asp:Label></span>
</div>
<div class="DownBig" style="min-height: 20px;">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
<div class="TopBig">
    <asp:Image ID="Image4" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/money_add.png" />
    <span class="SpanHeaderBox">فرم پرداخت وجه</span>
</div>
<div class="DownBig">
    <div class="SepratorBig">
        <asp:Label ID="Label2" runat="server" Style="float: right; margin-right: 30px; font-weight: bold;
            margin-top: 20px; margin-bottom: 20px;" Text="- اطلاعات پرداخت :"></asp:Label>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label45" runat="server" Text="نحوه پرداخت" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="RegisterUserField" Style="margin-top: 1px;"
            GroupName="a" Text="واریز به حساب" Checked="True" />
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label3" runat="server" Text="" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="RegisterUserField" GroupName="a"
            Text="پرداخت اینترنتی" />
    </div>
    <div class="SepratorBig" style="margin-top: 10px;">
        <asp:Label ID="Label46" runat="server" Text="بانک" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="RegisterUserField">
            <asp:ListItem Value="0">انتخاب کنید...</asp:ListItem>
            <asp:ListItem Value="1">بانک ملی</asp:ListItem>
            <asp:ListItem Value="2">بانک صادرات</asp:ListItem>
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DropDownList1"
            CssClass="RegisterUserFieldValidation" ErrorMessage="یک بانک را انتخاب کنید"
            MaximumValue="2" MinimumValue="1" ValidationGroup="ok"></asp:RangeValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label47" runat="server" Text="شماره رسید" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RegisterUserFieldValidation" ID="RequiredFieldValidator1"
            runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label43" runat="server" Text="کد شعبه" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9"
            ErrorMessage="*" CssClass="RegisterUserFieldValidation" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label48" runat="server" Text="تاریخ " CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*" CssClass="RegisterUserFieldValidation" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label49" runat="server" Text="مبلغ" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="*" CssClass="RegisterUserFieldValidation" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3"
            CssClass="RegisterUserFieldValidation" ErrorMessage="مقدار عدد وارد کنید" MaximumValue="9"
            MinimumValue="0"></asp:RangeValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label41" runat="server" Style="float: right; margin-right: 30px; font-weight: bold;
            margin-top: 20px; margin-bottom: 20px;" Text="- اطلاعات تحویل گیرنده :"></asp:Label>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label50" runat="server" Text="نام تحویل گیرنده" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="*" CssClass="RegisterUserFieldValidation" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label51" runat="server" Text="شماره تماس" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RegisterUserFieldValidation" ID="RequiredFieldValidator5"
            runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label39" runat="server" Text="زمان مناسب تحویل" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RegisterUserFieldValidation" ID="RequiredFieldValidator6"
            runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label40" runat="server" Text="آدرس تحویل سفارش" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="RegisterUserField" Height="86px"
            TextMode="MultiLine" Width="300"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="RegisterUserFieldValidation" ID="RequiredFieldValidator7"
            runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label42" runat="server" Text="توضیحات" CssClass="RegisterUserFieldTitle"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="RegisterUserField" Height="86px"
            TextMode="MultiLine" Width="300"></asp:TextBox>
    </div>
    <div class="SepratorBig" style="margin-bottom: 20px; margin-top: 20px;">
        <asp:ImageButton ID="ImageButton1" runat="server" Style="float: right; margin-right: 200px;"
            ImageUrl="~/Administrator/files/Design/Submit.gif" ValidationGroup="ok" OnClick="ImageButton1_Click" />
    </div>
</div>
<div class="TopBig" >
    <asp:Image ID="Image3" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/help.png" />
    <span class="SpanHeaderBox">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span>
</div>
<div class="DownBig" style="min-height: 20px;">
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</div>
