<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserSupportComment.ascx.cs"
    Inherits="Administrator_User_Controls_MainMenu" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="TopBig">
            <asp:Image ID="Image1" CssClass="ImageHeaderBox" runat="server" ImageUrl="~/Administrator/files/Design/user_edit.png" />
            <span class="SpanHeaderBox">ارتباط با پشتیبانی</span>
        </div>
        <div class="DownBig">
            <asp:Label ID="Label2" runat="server" CssClass="RegisterUserWarning" Style="font-weight: bold;"
                Text="چند تذکر :"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="RegisterUserWarning" Text="1- در صورت مشکل و یا سوال و یا پیشنهاد میتوانید از این قسمت اقدام نمایید."></asp:Label>
            <asp:Label ID="Label21" runat="server" CssClass="RegisterUserWarning" Text="2- لطفاً اطلاعات خود را به زبان فارسی وارد نمایید."></asp:Label>
            <asp:Label ID="Label22" runat="server" CssClass="RegisterUserWarning" Text="3- پاسخ مطلب شما در اسرع وقت در همین قسمت اعلام می شود."
                Style="margin-bottom: 20px;"></asp:Label>
            <div class="SepratorBig">
                <asp:Label ID="Label6" runat="server" Style="margin-right: 20px;" CssClass="RegisterUserFieldTitle"
                    Text="عنوان مطلب : *"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="RegisterUserField" Width="400"
                    AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            </div>
            <div class="SepratorBig">
                <asp:Label ID="Label12" runat="server" Style="margin-right: 20px;" CssClass="RegisterUserFieldTitle"
                    Text="متن مطلب : *"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="RegisterUserField" Height="86px"
                    TextMode="MultiLine" Width="400"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11"
                    ErrorMessage="*" ValidationGroup="ok" CssClass="RegisterUserFieldValidation"></asp:RequiredFieldValidator>
            </div>
            <div class="SepratorBig" style="margin-bottom: 20px; margin-top: 20px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت" Style="float: right; margin-right: 280px;"
                    CssClass="ButtonNormal" OnClick="Button1_Click" ValidationGroup="ok" />
                <asp:Button ID="Button2" runat="server" Text="انصراف" CssClass="ButtonNormal" OnClick="Button2_Click" />
            </div>
            <div class="SepratorBig" style="margin-bottom: 10px; margin-top: 20px;">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="RegisterUserFieldTitle"
                    OnClick="LinkButton1_Click" Width="150" Style="margin-right: 140px;">مشاهده پیام های دریافتی</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" Style="margin-right: 20px;" CssClass="RegisterUserFieldTitle"
                    OnClick="LinkButton2_Click" Width="150">مشاهده پیام های ارسالی</asp:LinkButton>
            </div>
            <asp:GridView ID="GridView2" Style="margin-top: 0px; margin-right: 0px; border: 0px;
                border-top: solid 1px blue; margin-bottom: 20px;" Width="648" runat="server"
                OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False"
                CssClass="Grid" GridLines="None" AllowPaging="true" PageSize="10" 
                ShowHeader="false" onrowdeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="GridProductDiv">
                                <div class="GridProductDivRight">                                
                                    <asp:Label ID="Label8" runat="server" CssClass="GridProductLabelTitle" Text="تاریخ :"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" CssClass="GridProductLabelField" Text='<%# Eval("Date_send") %>'></asp:Label>
                                </div>
                                <div class="GridProductDivLeft">
                                    <asp:Label ID="Label1" runat="server" CssClass="GridProductLink" Text='<%# Eval("title") %>'></asp:Label>
                                    <asp:Label ID="Label2" runat="server" CssClass="GridProductLabelLong" Text='<%# Eval("text").ToString().Replace("\r","<br />") %>'></asp:Label>
                                </div>
                                <asp:ImageButton ID="imgDelete"  runat="server"  CommandName="Delete" ImageUrl="~/Administrator/Images/delete.gif"
                    OnClientClick="return confirm('آیا جهت حذف پیام مطمئن هستید؟');" 
                    ToolTip="حذف"  style="margin-right:70px" CommandArgument='<%# Eval("Id") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Label ID="Label1" CssClass="EmptyGridBig" Style="margin-top: 10px;" runat="server"
                        Text="نظری به ثبت نرسیده است"></asp:Label>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </ContentTemplate>
</asp:UpdatePanel>
