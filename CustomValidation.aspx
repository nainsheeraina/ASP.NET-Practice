<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomValidation.aspx.cs" Inherits="CustomValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 184px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="style1">
            <tr>
                <td class="style2">
                    Enter Even Number:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="CustomValidator" 
                        ForeColor="Red" onservervalidate="CustomValidator1_ServerValidate" 
                        SetFocusOnError="True"></asp:CustomValidator>
                </td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
