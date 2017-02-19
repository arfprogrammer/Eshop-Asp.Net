<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FactorDetail.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<span class="SpanHelp">در این قسمت میتوانید ریز سفارش را مشاهده و مدیریت نمایید :</span>
<asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False"
    GridLines="None" EmptyDataText="شما مشتري گرامي هنوز محصولي به سبد خريد اضافه نکرديد!">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Image CssClass="FactorRegisterGridImage" Style="" ID="ImageButton3" runat="server"
                    ImageUrl='<%# "~/SmartPicture.aspx?f=" + Eval("Pic")  + "&w=70"  %>' />
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="center" />
            <ItemStyle HorizontalAlign="right" Width="80" VerticalAlign="Top" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText=" عنوان محصول">
            <ItemTemplate>
                <asp:HyperLink CssClass="FactorRegisterGridTitle" ID="HyperLink1" runat="server"
                    NavigateUrl='<%# "~/index.aspx?ID_Product="+Eval("id_product").ToString() +"&ID_Root="+Eval("ID_Group").ToString()%>'
                    Text='<%# Eval("title") %>' Style="width: 282px;"></asp:HyperLink>
                <asp:Label ID="lblid" runat="server" Text='<%# Eval("id_product") %>' Visible="False"></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="center" />
            <ItemStyle HorizontalAlign="right" VerticalAlign="Top" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="قيمت ( <img src='../Administrator/files/Design/PriceUnit.gif'> )">
            <ItemTemplate>
                <asp:Label CssClass="FactorRegisterGridPrice" ID="Label10" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("Price").ToString()) %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="تعداد">
            <ItemTemplate>
                <asp:Label CssClass="FactorRegisterGridPrice" Style="width: 20px;" ID="Labssel10"
                    runat="server" Text='<%# Eval("product_count") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="جمع ( <img src='../Administrator/files/Design/PriceUnit.gif'> )">
            <ItemTemplate>
                <asp:Label ID="Label14" CssClass="FactorRegisterGridPrice" runat="server" Text='<%# BLL.PublicClass.numberToMoney(Eval("fainalprice").ToString()) %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <asp:Label ID="Label1" runat="server" Text="محصولی به ثبت نرسیده است"></asp:Label>
    </EmptyDataTemplate>
    <EmptyDataRowStyle CssClass="GridEmpty" />
    <AlternatingRowStyle CssClass="GridRowAlternating" />
    <RowStyle CssClass="GridRow" />
    <HeaderStyle CssClass="GridHeader" />
    <PagerStyle CssClass="GridPaging" />
    <EditRowStyle BorderWidth="0px" CssClass="GridEditing" />
    <SelectedRowStyle CssClass="GridSelecting" />
</asp:GridView>
<span class="SpanHelp">ملاحظات</span>
<div style="text-align: center"><asp:TextBox ID="txtDescription" runat=server Height="56px" Width="589px"></asp:TextBox></div>
<div class="DivFormTextBoxRight" style="margin-top: 15px;">
    <asp:Label ID="Label37" runat="server" CssClass="SpanNormal" Text="شماره فاکتور:"></asp:Label>
    <asp:Label ID="Label38" runat="server" CssClass="TextBoxNormal" Style="color: Red;
        font-weight: bold;"></asp:Label>
    <asp:Label ID="Label1" runat="server" CssClass="SpanNormal" Text="تاریخ ثبت فاکتور:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="TextBoxNormal" Style="color: Red;
        font-weight: bold;"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="SpanNormal" Text="تاریخ ثبت رسید بانکی:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="TextBoxNormal" Style="color: Red;
        font-weight: bold;"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="SpanNormal" Text="تاریخ ارسال:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="TextBoxNormal" Style="color: Red;
        font-weight: bold;"></asp:Label>
    <asp:Label ID="Label39" runat="server" CssClass="SpanNormal" Text="آخرین وضعیت فاکتور:"></asp:Label>
    <asp:Label ID="Label40" runat="server" CssClass="TextBoxNormal" Style="color: Red;
        font-weight: bold;"></asp:Label>
</div>
<div class="DivFormTextBoxLeft" style="margin-top: 15px;">
    <asp:Image ID="Image4" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
        margin-top: 3px; margin-left: 60px;"></asp:Image>
    <asp:Label ID="Label15" runat="server" Text="Label" Style="float: left;" CssClass="FactorRegisterCalcField"></asp:Label>
    <asp:Label ID="Label16" runat="server" CssClass="FactorRegisterCalcTitle" Text="جمع خريد شما :"></asp:Label>
</div>
<div class="DivFormTextBoxLeft" style="margin-top: 5px;">
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
        margin-top: 3px; margin-left: 60px;"></asp:Image>
<asp:TextBox ID="TextBox10" runat="server"  style="font-family:Tahoma;font-size:8pt;width:60px;margin-right:18px;margin-left:19px;border:solid 1px gray;" Text="0" CssClass="FactorRegisterCalcField"></asp:TextBox>    <asp:Label ID="Label9" runat="server" CssClass="FactorRegisterCalcTitle" Text="3% مالیات :"></asp:Label>
</div>
<div class="DivFormTextBoxLeft" style="margin-top: 5px;">
    <asp:Image ID="Label5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
        margin-top: 3px; margin-left: 60px;"></asp:Image>
<asp:TextBox ID="TextBox11" runat="server"  style="font-family:Tahoma;font-size:8pt;width:60px;margin-right:18px;margin-left:19px;border:solid 1px gray;" Text="0" CssClass="FactorRegisterCalcField"></asp:TextBox>    <asp:Label ID="Label8" runat="server" CssClass="FactorRegisterCalcTitle" Text="هزينه ارسال :"></asp:Label>
</div>
<div class="DivFormTextBoxLeft" style="margin-top: 5px;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
        margin-top: 3px; margin-left: 60px;"></asp:Image>
    <asp:TextBox ID="TextBoxTakhfif" runat="server"  style="font-family:Tahoma;font-size:8pt;width:60px;margin-right:18px;margin-left:19px;border:solid 1px gray;" Text="0" CssClass="FactorRegisterCalcField"></asp:TextBox>
    <asp:Label ID="Label23" runat="server" CssClass="FactorRegisterCalcTitle" Text="تخفیف :"></asp:Label>
    
</div>

<div class="DivFormTextBoxLeft" style="margin-top: 5px;">
    <asp:Image ID="Image5" runat="server" ImageUrl="~/Administrator/files/Design/PriceUnit.gif" Style="float: left;
        margin-top: 3px; margin-left: 60px;"></asp:Image>
    <asp:Label ID="Label22" runat="server" Text="Label" CssClass="FactorRegisterCalcField"></asp:Label>
    <asp:Label ID="Label11" runat="server" CssClass="FactorRegisterCalcTitle" Text="مبلغ کل فاکتور :"></asp:Label>
</div>
<div class="DivFormTextBoxLeft"  style="margin-top: 5px;width:850px;">
 <asp:Button ID="Button4" Style="margin-top: 5px;float:left;margin-left:0px;" CssClass="ButtonNormal"
            ValidationGroup="takhfif" runat="server" Text="ویرایش" OnClick="Button4_Click" />
              <asp:Label ID="Label19" runat="server" Visible=false style="margin-top:10px;color:Red;" CssClass="FactorRegisterCalcTitle" Text="اطلاعات به روز شد"></asp:Label>

            </div>
<div style="float: right; width: 900px; margin-top: 20px;">
    <div class="DivFormTextBoxRight">
        <asp:Label ID="Label17" runat="server" CssClass="SpanNormal" Style="font-weight: bold;
            margin-top: 20px; margin-bottom: 20px; width: 400px; text-align: right;" Text="- اطلاعات پرداخت :"></asp:Label>
        <asp:Label ID="Label45" runat="server" Text="نحوه پرداخت" CssClass="SpanNormal"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="TextBoxNormal" Style="margin-top: 1px;"
            GroupName="a" Text="واریز به حساب" Checked="True" />
        <asp:Label ID="Label18" runat="server" Text="" CssClass="SpanNormal"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="TextBoxNormal" GroupName="a"
            Text="پرداخت اینترنتی" />
        <asp:Label ID="Label46" runat="server" Text="بانک" CssClass="SpanNormal"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="TextBoxNormal">
            <asp:ListItem Value="0">انتخاب کنید...</asp:ListItem>
            <asp:ListItem Value="1">بانک ملی</asp:ListItem>
            <asp:ListItem Value="2">بانک صادرات</asp:ListItem>
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DropDownList1"
            CssClass="ValidationNormal" ErrorMessage="*" MaximumValue="2" MinimumValue="1"
            ValidationGroup="ok"></asp:RangeValidator>
        <asp:Label ID="Label47" runat="server" Text="شماره رسید" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="ValidationNormal" ID="RequiredFieldValidator1"
            runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label43" runat="server" Text="کد شعبه" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9"
            ErrorMessage="*" CssClass="ValidationNormal" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label48" runat="server" Text="تاریخ " CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="*" CssClass="ValidationNormal" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label49" runat="server" Text="مبلغ" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="*" CssClass="ValidationNormal" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3"
            CssClass="ValidationNormal" ErrorMessage="عدد" MaximumValue="9" MinimumValue="0"></asp:RangeValidator>
            <asp:Button ID="Button3" Style="margin-right: 45px; margin-top: 20px;" CssClass="ButtonNormal"
            ValidationGroup="ok" runat="server" Text="لغو فاکتور" OnClick="Button3_Click" />
        <asp:Button ID="Button1" Style="margin-top: 20px;" CssClass="ButtonNormal"
            ValidationGroup="ok" runat="server" Text="ویرایش" OnClick="Button1_Click" />
        <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Style="margin-top: 20px;"
            ValidationGroup="ok" Text="ویرایش و تایید ارسال سفارش" OnClick="Button2_Click"
            Width="150" />
        <asp:Label ID="Label20" runat="server" CssClass="SpanNormal" Style="text-align: center;
            color: Red; margin-top: 20px; margin-bottom: 20px; width: 350px;" Visible=false Text="درخواست به ثبت رسید"></asp:Label>
    </div>
    <div class="DivFormTextBoxRightLeft">
        <asp:Label ID="Label41" runat="server" CssClass="SpanNormal" Style="font-weight: bold;
            margin-top: 20px; margin-bottom: 20px; width: 510px; text-align: right;" Text="- اطلاعات تحویل گیرنده :"></asp:Label>
        <asp:Label ID="Label50" runat="server" Text="نام تحویل گیرنده" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="TextBoxNormalLeft"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="*" CssClass="ValidationNormal" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label51" runat="server" Text="شماره تماس" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="TextBoxNormalLeft"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="ValidationNormal" ID="RequiredFieldValidator5"
            runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label12" runat="server" Text="زمان مناسب تحویل" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="TextBoxNormalLeft">*/*/*/*</asp:TextBox>
        <asp:Label ID="Label21" runat="server" Text="کدپستی" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="TextBoxNormalLeft"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="ValidationNormal" ID="RequiredFieldValidator6"
            runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label13" runat="server" Text="آدرس تحویل سفارش" CssClass="SpanNormal"></asp:Label>        
        <asp:TextBox ID="TextBox7" runat="server" CssClass="TextBoxNormalLeft" Height="86px"
            TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="ValidationNormal" ID="RequiredFieldValidator7"
            runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ValidationGroup="ok"></asp:RequiredFieldValidator>
        <asp:Label ID="Label42" runat="server" Text="توضیحات" CssClass="SpanNormal"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="TextBoxNormalLeft" Height="86px"
            TextMode="MultiLine"></asp:TextBox>
    </div>
</div>
</ContentTemplate>
</asp:UpdatePanel>