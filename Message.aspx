<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="portfolio_now.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
     body {
         font-family: Arial, sans-serif;
         background-color: #f0f0f0;
         padding: 20px;
     }

     .container {
         max-width: 600px;
         margin: 0 auto;
         background-color: #fff;
         padding: 20px;
         border-radius: 8px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
     }

     h1 {
         margin-bottom: 20px;
     }

     label {
         display: block;
         margin-bottom: 8px;
     }

     input[type="text"] {
         padding: 8px;
         margin-bottom: 16px;
         border: 1px solid #ccc;
         border-radius: 4px;
         box-sizing: border-box;
     }

     .btn,.btn-back{
         padding: 10px 20px;
         background-color: #007bff;
         color: #fff;
         border: none;
         border-radius: 4px;
         cursor: pointer;
         margin-bottom: 30px;
     }

     .btn:hover {
         background-color: #0056b3;
     }

     .btn-back {
         background-color: #6c757d;
         margin-top: 20px;
     }
    
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
     <h1>Message Information</h1>
     <div>
         <label for="txtOldEmail">Finding Email:</label>
         <asp:TextBox ID="txtEmail" runat="server"  Width="520px"  />
     </div>
            <div>
    <asp:Button ID="ShowMessage" runat="server" Text="Show Message" OnClick="btnShowEmail_Click" CssClass="btn" />
</div>
                        <div>
    <asp:Button ID="DeleteMessage" runat="server" Text="Delete Message" OnClick="btnDeleteEmail_Click" CssClass="btn" />
</div>
              <div id="back">
      <asp:Button ID="btnBack" runat="server" Text="Back to Admin Page" OnClick="btnBack_Click" CssClass="btn btn-back" />
  </div>
     <div>
        <asp:Label ID="lblShowMessage" runat="server" Text=""></asp:Label>
     </div>
   
 </div>
    </form>
</body>
</html>
