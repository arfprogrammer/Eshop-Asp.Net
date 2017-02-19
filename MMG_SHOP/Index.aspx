<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Home_Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="./CSS/UserSheet.css" />
    <link rel="stylesheet" type="text/css" href="./CSS/UserMenu.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div align="center" style="height:0px;">
            <div id="Body">
                <div id="LoginPanel">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </div>
                <div id="Header">
                </div>
                <div id="Content">
                    <div id="Path">
                        <asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
                    </div>
                    <div id="Right">
                        <asp:PlaceHolder ID="PlaceHolder8" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                         <asp:PlaceHolder ID="PlaceHolder7" runat="server"></asp:PlaceHolder>
                       <asp:PlaceHolder ID="PlaceHolder13" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="PlaceHolder10" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="PlaceHolder15" runat="server"></asp:PlaceHolder>
                       <asp:PlaceHolder ID="PlaceHolder14" runat="server"></asp:PlaceHolder>

                    </div>
                    <div id="Center">
                        <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
                    </div>
                    <div id="Left">
                        <asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="PlaceHolder9" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
                <div id="Arm" runat=server>
                <asp:PlaceHolder ID="PlaceHolder11" runat="server"></asp:PlaceHolder>
                </div>
            </div>
            
            <div id="Footer">
                <asp:PlaceHolder ID="PlaceHolder12" runat="server"></asp:PlaceHolder>
            </div>
        </div>
    </form>
</body>
</html>
