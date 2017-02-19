<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserManage.ascx.cs" Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت برای مدیریت کاربران میتوانید اقدام نمایید . </span>

<div class="DivFormTextBoxRight">
    <asp:Label ID="Label6" runat="server" CssClass="SpanNormal" Text="آدرس الکترونیک : *"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Style="text-align: left; direction: ltr;"
        CssClass="TextBoxNormal" AutoCompleteType="Disabled"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label18" runat="server" Visible="false" CssClass="ValidationNormal"
        Style="width: 200px; margin-right: 100px; color: Red;" Text="کاربر وارد شده قبلا ثبت شده است"></asp:Label>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
        CssClass="ValidationNormal" Style="width: 200px; margin-right: 100px;" ErrorMessage="ايميل را صحيح وارد کنيد"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ok"></asp:RegularExpressionValidator>
    <asp:Label ID="Label4" runat="server" CssClass="SpanNormal" Text="رمز عبور : *"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBoxNormal" 
        AutoCompleteType="Disabled"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
        ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
    <asp:Label ID="Label5" runat="server" CssClass="SpanNormal" Text="تکرار رمز عبور : *"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="TextBoxNormal" 
        AutoCompleteType="Disabled"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
        ControlToValidate="TextBox3" Style="width: 200px; margin-right: 100px;" ErrorMessage="رمز عبور را صحيح وارد کنيد"
        ValidationGroup="ok" CssClass="ValidationNormal"></asp:CompareValidator>
    <asp:Label ID="Label20" runat="server" CssClass="SpanNormal" Text="نام : *"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label23" runat="server" CssClass="SpanNormal" Text="نام خانوادگی : *"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server" CssClass="SpanNormal" Text="نام شرکت : *"></asp:Label>
    <asp:TextBox ID="TextBox12" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label7" runat="server" CssClass="SpanNormal" Text="تلفن ثابت : *"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label8" runat="server" CssClass="SpanNormal" Text="تلفن همراه : *"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label9" runat="server" CssClass="SpanNormal" Text="کد پستي  : *"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label24" runat="server" CssClass="SpanNormal" Text="کشور : *"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server" CssClass="TextBoxNormal">ايران</asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label10" runat="server" CssClass="SpanNormal" Text="استان : *"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="TextBoxNormal">
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
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal" Operator="NotEqual"
        ValueToCompare="انتخاب کنيد..."></asp:CompareValidator>
    <asp:Label ID="Label11" runat="server" CssClass="SpanNormal" Text="شهر : *"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label12" runat="server" CssClass="SpanNormal" Text="آدرس پستي : *"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server" CssClass="TextBoxNormal" Height="56px"
        TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11"
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal"></asp:RequiredFieldValidator>
    <asp:Label ID="Label13" runat="server" CssClass="SpanNormal" Text="نحوه آشنايي با شرکت : *"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="TextBoxNormal">
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
        ErrorMessage="*" ValidationGroup="ok" CssClass="ValidationNormal" Operator="NotEqual"
        ValueToCompare="انتخاب کنيد..."></asp:CompareValidator>
    <asp:Label ID="Label14" runat="server" CssClass="SpanNormal" Text="دريافت خبرنامه :"></asp:Label>
    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="TextBoxNormal" />
    <asp:Label ID="Label3" runat="server" Visible="false" Style="color: Red; margin-right: 0px;
        float: right; margin-top: 12px; width: 370px; text-align: center;" Text="اطلاعات ثبت شد"></asp:Label>        
    <asp:Button ID="Button1" Style="margin-right: 40px;" CssClass="ButtonNormal" ValidationGroup="ok" runat="server" Text="ثبت" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
    <asp:Button ID="Button3" CssClass="ButtonNormal" runat="server" Text="جستجو" onclick="Button3_Click" />
    <asp:Button ID="btnClean" CssClass="ButtonNormal" runat="server"  Text="پاک شود" onclick="btnClean_Click" />          
    <asp:HyperLink ID="HyperLink1"  CssClass="ButtonNormal" runat=server NavigateUrl="~/Administrator/files/ExcelOut/ExcelOut.xls">اکسل</asp:HyperLink>    
</div>
<div class="DivFormTextBoxLeft">
</div>
<asp:GridView ID="GridView1" Style="margin-top: 20px;" runat="server" AllowPaging="True"
    AutoGenerateColumns="False" CssClass="Grid" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" PageSize="50"
    OnRowDataBound="GridView1_RowDataBound" onrowcommand="GridView1_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="نام کاربر">
            <ItemTemplate>
                <asp:Image CssClass="ImageMosbat" ID="Image1" ImageUrl="~/Administrator/Images/mosbat-abi.gif"
                    runat="server" />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name").ToString()+" "+ Eval("family").ToString()%>'></asp:Label>
                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Id") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <ItemStyle CssClass="GridItemNormal" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="سفارش پرداخت نشده" HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLinkn" runat="server" Text="" NavigateUrl='<%# "~/Administrator/index.aspx?Type=FactorManage&Kind=NoPayment&ID_User="+ Eval("id").ToString()%>'></asp:HyperLink>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle  HorizontalAlign=Center  />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="سفارش پرداخت شده" HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLinkp" runat="server" Text="" NavigateUrl='<%# "~/Administrator/index.aspx?Type=FactorManage&Kind=Payment&ID_User="+ Eval("id").ToString()%>'></asp:HyperLink>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle  HorizontalAlign=Center />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="سفارش ارسال شده" HeaderStyle-HorizontalAlign=Center>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLinks" runat="server" Text="" NavigateUrl='<%# "~/Administrator/index.aspx?Type=FactorManage&Kind=Sended&ID_User="+ Eval("id").ToString()%>'></asp:HyperLink>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle  HorizontalAlign=Center  />
        </asp:TemplateField>
         <asp:TemplateField HeaderText="تاریخ ثبت">
             <ItemTemplate>
                 <asp:Label ID="lbRegDate" runat="server" Text='<%# Eval("date_register") %>'></asp:Label>
             </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderStyle-HorizontalAlign="Center" 
            HeaderText="ارتباط با پشتیبانی">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLinksp" runat="server" 
                    NavigateUrl='<%# "~/Administrator/index.aspx?Type=UserSupportComment&ID_User="+ Eval("id").ToString()%>' 
                    Text=""></asp:HyperLink>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="imgComment" runat="server" 
                    CommandArgument='<%# Eval("id") %>' CommandName="Comment" 
                    ImageUrl="~/Administrator/Images/comments.png" ToolTip="پیامها" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/Administrator/Images/delete.gif"
                    OnClientClick="return confirm('آیا از این کار اطمینان دارید؟');" ToolTip="حذف" />
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Edit" ImageUrl="~/Administrator/Images/edit.gif"
                    ToolTip="ویرایش" />
            </ItemTemplate>
            <ItemStyle CssClass="GridItemButton" />
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <asp:Label ID="Label1" runat="server" Text="کاربری به ثبت نرسیده است"></asp:Label>
    </EmptyDataTemplate>
    <EmptyDataRowStyle CssClass="GridEmpty" />
    <AlternatingRowStyle CssClass="GridRowAlternating" />
    <RowStyle CssClass="GridRow" />
    <HeaderStyle CssClass="GridHeader" />
    <PagerStyle CssClass="GridPaging" />
    <EditRowStyle BorderWidth="0px" CssClass="GridEditing" />
    <SelectedRowStyle CssClass="GridSelecting" />
</asp:GridView>
<asp:Label ID="LblHidden" Visible="false" runat="server"></asp:Label>
<asp:HiddenField ID="HiddenField1" runat="server" />
<asp:HiddenField ID="HiddenField2" runat="server" />
</ContentTemplate>
</asp:UpdatePanel>