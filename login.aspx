<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="portfolio_now.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
       body{
           width: 100%;
    min-height: 100vh;
    color: #080808;
    background-color: #fafafa;
       }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       <div style="width: 100%; margin: 0 auto 0 0px; text-align: center; height: 513px; background: aqua">
    <h2 style="height: 56px; width: 1354px">Login</h2>
    <div style="margin-bottom: 10px;">
        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail">Email:</asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
    </div>
    <div style="margin-bottom: 10px;">
        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Password:</asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
    </div>
    <div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
</div>

    </form>
</body>
</html>
