<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Home_Admin"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../CSS/AdminSheet.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/AdminMenu.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div align="center" style="height:0px;">
            <div id="Body">
                <div id="Header">
                  
                    <h1>
                        سیستم مدیریت وب سایت</h1>
                    <h6>
                        فروشگاه اینترنتی فراجهش شمال</h6>
                      
                </div>
                <div id="Left">
                </div>
                <div id="Right">
                </div>
                <div id="Content">
                    <div class="TopMenu">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                    <div class="Top">
                        <h2>
                         

                            <%= Title %>
                        </h2>
                    </div>
                    <div class="Down">
                        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
                <div id="Footer">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
