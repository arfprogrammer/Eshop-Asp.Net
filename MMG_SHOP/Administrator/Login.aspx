<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Administrator_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>صفحه ورود به مدیریت</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="../CSS/AdminSheet.css">
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div align="center">
            <br />
            <br />
            <div id="Login">
                <div class="Top">
                    <h2>
                        ورود به مدیریت</h2>
                </div>
                <div class="Down">
                    <br />
                    <span class="SpanNormal">نام کاربری :</span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxNormal"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" CssClass="ValidationNormal" ValidationGroup="Login"
                        runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator><br />
                    <span class="SpanNormal">رمز عبور : </span>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="TextBoxNormal">></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" ValidationGroup="Login" CssClass="ValidationNormal"
                        runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                         <div style="float:right;width:380px;margin-top:10px;">
                        
                        <img src="../Captcha.aspx" />
                        
                        </div>
                        <div style="float:right;width:380px;">
                        <span class="SpanNormal">کد امنیتی :</span>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="TextBoxNormal"></asp:TextBox>
                        <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" CssClass="ValidationNormal" ValidationGroup="Login"
                        runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                       
                                
                                
                            <asp:Button ID="Button1" runat="server" Text="ورود " Style="margin-right: 150px;margin-top:20px;"
                                ValidationGroup="Login" CssClass="ButtonNormal" OnClick="Button1_Click" />
                                
                                 <div style="float:right;width:360px;margin-top:20px;">
                            <asp:Label ID="Label1" runat="server"  Visible="false" Style="color: Red;"
                                Text="نام کاربری یا رمز اشتباه است"></asp:Label>
                                </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
