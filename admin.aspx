<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="portfolio_now.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <style>
      *{
    margin: 0;
    padding: 0;
    font-family: 'Poppins',sans-serif;
    box-sizing: border-box;
}
html{
    scroll-behavior: smooth;
}
body{
    width: 50%;
    align-items: center;
    background: #080808;;
    color: #fff;
    text-align: center;
}

  .contact{
     
      margin: 10px;
       padding: 14px 60px;
    font-size: 18px;
    margin-top: 20px;
    cursor: pointer;
    display: inline-block;
    background: #ff004f;
    border-radius: 4px;
    font-weight:300;
  }
      
      </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome, Admin!</h1>
            
            <div class="btn">
                <asp:Button ID="btnEditContact" runat="server" Text="Edit Contact" CssClass="contact" OnClick="btnEditContact_Click" />
                 <asp:Button ID="Button1" runat="server" Text="Show Message" CssClass="contact"  OnClick="btnEditMessage_Click" Width="259px" />
            </div>
            <div>
    <asp:Button ID="btnEditHome" runat="server" Text="Back to Home" CssClass="contact" OnClick="btnEditHome_Click" />
</div>
        </div>
    </form>
</body>
</html>
