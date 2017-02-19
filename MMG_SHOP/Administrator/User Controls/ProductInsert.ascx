<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductInsert.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<span class="SpanHelp">در این قسمت میتوانید محصولی را اضافه نمایید : </span>
<div class="DivFormTextBoxRight">
    <span class="SpanNormal">عنوان</span><asp:TextBox ID="TextTitle" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" CssClass="ValidationNormal" ControlToValidate="TextTitle" Font-Names="Tahoma"
            Font-Size="8pt" ErrorMessage="*" ValidationGroup="Register"></asp:RequiredFieldValidator>
    <span class="SpanNormal">قیمت</span><asp:TextBox ID="TextBox4" CssClass="TextBoxNormal"
        runat="server" Style="text-align: center;" Text="0" Width="150px"></asp:TextBox><span
            class="SpanNormalLeft">ریال</span> <span class="SpanNormal">هزینه پست</span><asp:TextBox
                Text="0" Style="text-align: center;" Width="150px" ID="TextBox3" CssClass="TextBoxNormal"
                runat="server"></asp:TextBox>
    <span class="SpanNormalLeft">ریال</span> <span class="SpanNormal">وزن</span><asp:TextBox
        Text="0" Style="text-align: center;" Width="150px" ID="TextBox5" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox>
    <span class="SpanNormalLeft">گرم</span> <span class="SpanNormal">امتیاز</span><asp:TextBox
        Text="0" Style="text-align: center;" Width="150px" ID="TextBox6" CssClass="TextBoxNormal"
        runat="server"></asp:TextBox>
    <span class="SpanNormalLeft">از 1 تا 10</span> <span class="SpanNormal">آدرس دمو</span><asp:TextBox
        Style="text-align: left;" ID="TextBox7" CssClass="TextBoxNormal" runat="server"></asp:TextBox>
    <span class="SpanNormal">آدرس کاتالوگ</span><asp:TextBox Style="text-align: left;"
        ID="TextBox8" CssClass="TextBoxNormal" runat="server"></asp:TextBox>
    <span class="SpanNormal">عکس محصول</span><asp:FileUpload ID="FileUpload1" runat="server"
        CssClass="TextBoxNormal" />
        
    <span class="SpanNormal">وضعیت محصول</span><asp:DropDownList ID="DropDownListVaziat"
        CssClass="TextBoxNormal" runat="server">
    </asp:DropDownList>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div style="float: right; margin-top: 20px; width: 370px; margin-bottom: 20px;">
        <span class="SpanNormal">بخش اول</span><asp:DropDownList OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList1" CssClass="TextBoxNormal"
            runat="server">
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            runat="server" CssClass="ValidationNormal" ControlToValidate="DropDownList1" Font-Names="Tahoma"
            Font-Size="8pt" ErrorMessage="*" ValidationGroup="Register"></asp:RequiredFieldValidator>
        <span class="SpanNormal">بخش دوم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList2" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش سوم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList3" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش چهارم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList4" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش پنجم</span><asp:DropDownList OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"
            AppendDataBoundItems="True" AutoPostBack="True" ID="DropDownList5" CssClass="TextBoxNormal"
            runat="server">
        </asp:DropDownList>
        <span class="SpanNormal">بخش ششم</span><asp:DropDownList AppendDataBoundItems="True"
            ID="DropDownList6" CssClass="TextBoxNormal" runat="server">
        </asp:DropDownList>
    </div>
    </ContentTemplate></asp:UpdatePanel>
    <span class="SpanNormalOneLine">کلمات کلیدی</span>
    <asp:TextBox Height="50" TextMode="MultiLine" ID="TextBox1" CssClass="TextBoxNormalLeft"
        runat="server"></asp:TextBox>
    <span class="SpanNormalOneLine">توضیحات</span>
    <asp:TextBox Height="50" TextMode="MultiLine" ID="TextBox2" CssClass="TextBoxNormalLeft"
        runat="server"></asp:TextBox>
    <asp:Button ID="Button1" Style="margin-right: 150px;" CssClass="ButtonNormal" ValidationGroup="Register"
        runat="server" Text="ثبت" OnClick="Button1_Click" />
    <asp:Button ID="Button2" CssClass="ButtonNormal" runat="server" Text="انصراف" OnClick="Button2_Click" />
</div>
<div class="DivFormTextBoxLeft">
    <span class="SpanNormalOneLine">توضیح کامل</span>
    <div class="EditorStyle">
        <FCKeditorV2:FCKeditor ID="FCKeditor1" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
        </FCKeditorV2:FCKeditor>
    </div>
    <br />
    <span class="SpanNormalOneLine">توضیح مختصر</span>
    <div class="EditorStyle">
        <FCKeditorV2:FCKeditor ID="FCKeditor2" Width="530" Height="300" runat="server" BasePath="~/fckeditor/">
        </FCKeditorV2:FCKeditor>
    </div>
</div>
