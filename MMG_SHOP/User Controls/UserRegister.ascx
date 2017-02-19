<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserRegister.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<div class="TopBig">
    <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/user_edit.png" />
    <span class="SpanHeaderBox">فرم ثبت نام کاربر</span>
</div>
<div class="DownBig">
    <asp:Label ID="Label2" runat="server" CssClass="RegisterUserWarning" Style="font-weight: bold;"
        Text="چند تذکر مهم :"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="RegisterUserWarning" Text="1- پر کردن اطلاعات ستاره دار الزامی می باشد، توجه داشته باشید که با دقت فرم زیر را تکمیل فرمائید."></asp:Label>
    <asp:Label ID="Label21" runat="server" CssClass="RegisterUserWarning" Text="2- لطفاً اطلاعات خود را به زبان فارسی وارد نمایید."></asp:Label>
    <asp:Label ID="Label22" runat="server" CssClass="RegisterUserWarning" Text="3- لطفاً نام شرکت  یا نام خانوادگی را  در قسمت  نام شرکت وارد کنید چون تمام فاکتور های که برای شما ارسال می گردد با این نام می باشد."
        Style="margin-bottom: 20px;"></asp:Label>
    <div class="SepratorBig">
        <asp:Label ID="Label6" runat="server" CssClass="RegisterUserFieldTitle" Text="آدرس الکترونیک : *"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="text-align: left; direction: ltr;"
            CssClass="RegisterUserField" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
        <asp:Label ID="Label18" runat="server" Visible="false" CssClass="RegisterUserFieldLeft"
            Text="کاربر وارد شده قبلا ثبت شده است"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
            CssClass="RegisterUserFieldLeft" Style="width: 360px; margin-right: 240px;" ErrorMessage="ايميل را صحيح وارد کنيد"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ok"></asp:RegularExpressionValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label4" runat="server" CssClass="RegisterUserFieldTitle" Text="رمز عبور : *"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="RegisterUserField" AutoCompleteType="Disabled"
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="RegisterUserFieldValidation"
            runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label5" runat="server" CssClass="RegisterUserFieldTitle" Text="تکرار رمز عبور : *"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="RegisterUserField" AutoCompleteType="Disabled"
            TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
            ControlToValidate="TextBox3" ErrorMessage="رمز عبور را صحيح وارد کنيد" ValidationGroup="ok"
            CssClass="RegisterUserFieldValidation"></asp:CompareValidator>
    </div>
    <div class="SepratorBig" style="margin-top: 10px;">
        <asp:Label ID="Label20" runat="server" CssClass="RegisterUserFieldTitle" Text="نام : *"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label23" runat="server" CssClass="RegisterUserFieldTitle" Text="نام خانوادگی : *"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label1" runat="server" CssClass="RegisterUserFieldTitle" Text="نام شرکت : *"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label7" runat="server" CssClass="RegisterUserFieldTitle" Text="تلفن ثابت : *"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label8" runat="server" CssClass="RegisterUserFieldTitle" Text="تلفن همراه : *"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig" style=" margin-top: 10px;">
        <asp:Label ID="Label9" runat="server" CssClass="RegisterUserFieldTitle" Text="کد پستي  : *"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label24" runat="server" CssClass="RegisterUserFieldTitle" Text="کشور : *"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="RegisterUserField">ايران</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label10" runat="server" CssClass="RegisterUserFieldTitle" Text="استان : *"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="RegisterUserField">
            <asp:ListItem>انتخاب کنيد...</asp:ListItem>
            <asp:ListItem>آذربايجان شرقي</asp:ListItem>
            <asp:ListItem>آذربايجان غربي</asp:ListItem>
            <asp:ListItem>اردبيل</asp:ListItem>
            <asp:ListItem>اصفهان</asp:ListItem>
            <asp:ListItem>ايلام</asp:ListItem>
            <asp:ListItem>بوشهر</asp:ListItem>
            <asp:ListItem>تهران</asp:ListItem>
            <asp:ListItem>چهارمحال و بختياري</asp:ListItem>
            <asp:ListItem>خراسان جنوبي</asp:ListItem>
            <asp:ListItem>خراسان رضوي</asp:ListItem>
            <asp:ListItem>خراسان شمالي</asp:ListItem>
            <asp:ListItem>خوزستان</asp:ListItem>
            <asp:ListItem>زنجان</asp:ListItem>
            <asp:ListItem>سمنان</asp:ListItem>
            <asp:ListItem>سيستان و بلوچستان</asp:ListItem>
            <asp:ListItem>فارس</asp:ListItem>
            <asp:ListItem>قزوين</asp:ListItem>
            <asp:ListItem>قم</asp:ListItem>
            <asp:ListItem>کردستان</asp:ListItem>
            <asp:ListItem>کرمان</asp:ListItem>
            <asp:ListItem>کرمانشاه</asp:ListItem>
            <asp:ListItem>کهگيلويه و بويراحمد</asp:ListItem>
            <asp:ListItem>گلستان</asp:ListItem>
            <asp:ListItem>گيلان</asp:ListItem>
            <asp:ListItem>لرستان</asp:ListItem>
            <asp:ListItem>مازندران</asp:ListItem>
            <asp:ListItem>مرکزي</asp:ListItem>
            <asp:ListItem>هرمزگان</asp:ListItem>
            <asp:ListItem>همدان</asp:ListItem>
            <asp:ListItem>يزد</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList1"
            ErrorMessage="استان را وارد کنيد" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"
            Operator="NotEqual" ValueToCompare="انتخاب کنيد..."></asp:CompareValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label11" runat="server" CssClass="RegisterUserFieldTitle" Text="شهر : *"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" CssClass="RegisterUserField"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label12" runat="server" CssClass="RegisterUserFieldTitle" Text="آدرس پستي : *"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" CssClass="RegisterUserField" Height="86px"
            TextMode="MultiLine" Width="300"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11"
            ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    </div>
    <div class="SepratorBig" style="margin-top: 10px;">
        <asp:Label ID="Label13" runat="server" CssClass="RegisterUserFieldTitle" Text="نحوه آشنايي با شرکت : *"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="RegisterUserField">
            <asp:ListItem>انتخاب کنيد...</asp:ListItem>
            <asp:ListItem>جستجو در موتور هاي جستجو</asp:ListItem>
            <asp:ListItem>تبليغ در وب سايت هاي ديگر</asp:ListItem>
            <asp:ListItem>معرفي مشتريان سابق</asp:ListItem>
            <asp:ListItem>دريافت خبرنامه شرکت</asp:ListItem>
            <asp:ListItem>دريافت اس ام اس تبليغاتي</asp:ListItem>
            <asp:ListItem>مشاهده تبليغات در نشريات</asp:ListItem>
            <asp:ListItem>دريافت فاکس تبليغاتي</asp:ListItem>
            <asp:ListItem>شنيدن پيام صوتي تبيلغاتي</asp:ListItem>
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DropDownList2"
            ErrorMessage="نحوه آشنايي را وارد کنيد" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"
            Operator="NotEqual" ValueToCompare="انتخاب کنيد..."></asp:CompareValidator>
    </div>
    <div class="SepratorBig">
        <asp:Label ID="Label14" runat="server" CssClass="RegisterUserFieldTitle" Text="دريافت خبرنامه :"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="RegisterUserField" />
    </div>
    <div class="SepratorBig" style="margin-bottom: 20px; margin-top: 20px;">
        <asp:Button ID="Button1" runat="server" Text="ثبت کاربر" Style="float: right; margin-right: 200px;"
            CssClass="ButtonNormal" OnClick="Button1_Click" ValidationGroup="ok" />
        <asp:Button ID="Button2" runat="server" Text="انصراف" CssClass="ButtonNormal" OnClick="Button2_Click" />
    </div>
</div>
