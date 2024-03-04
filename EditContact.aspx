<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditContact.aspx.cs" Inherits="portfolio_now.EditContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <h1>Edit Contact Information</h1>
            <div>
                <label for="txtOldEmail">Old Email:</label>
                <asp:TextBox ID="txtOldEmail" runat="server"  Width="520px" />
            </div>
            <div>
                <label for="txtNewEmail">New Email:</label>
                <asp:TextBox ID="txtNewEmail" runat="server" Width="520px" />
            </div>
            <div>
                <asp:Button ID="btnUpdateEmail" runat="server" Text="Update Email" OnClick="btnUpdateEmail_Click" CssClass="btn" />
            </div>
            <div>
                <label for="txtOldPhone">Old Phone:</label>
                <asp:TextBox ID="txtOldPhone" runat="server" Width="518px" />
            </div>
            <div>
                <label for="txtNewPhone">New Phone:</label>
                <asp:TextBox ID="txtNewPhone" runat="server" Width="518px" />
            </div>
            <div>
                <asp:Button ID="btnUpdatePhone" runat="server" Text="Update Phone" OnClick="btnUpdatePhone_Click" CssClass="btn" />
            </div>
            <div id="back">
                <asp:Button ID="btnBack" runat="server" Text="Back to Admin Page" OnClick="btnBack_Click" CssClass="btn btn-back" />
            </div>
        </div>
    </form>
</body>
</html>
