<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1188px;
        }
        .style2
        {
        }
        .style3
        {
            width: 544px;
            height: 26px;
        }
        .style4
        {
            width: 1188px;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="style2" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        BackColor="#CCCCCC" Font-Size="Large" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Student Name:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="638px" Height="28px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="#FF3300" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="637px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="ENter Email" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="invalid email" 
                        ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Re-Enter Email:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="639px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage=" Email" ForeColor="Red" 
                        SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid email" 
                        ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="Email did not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Class:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="639px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Class" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="1 to 12" 
                        ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" 
                        Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Fees:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server" Width="633px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Class" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBox5" Display="Dynamic" 
                        ErrorMessage="1000.00 to 5000.00" ForeColor="#FF3300" MaximumValue="5000.00" 
                        MinimumValue="1000.00" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Gender:</td>
                <td class="style4">
                    <asp:RadioButton ID="Male" runat="server" GroupName="Gender" 
                        oncheckedchanged="RadioButton1_CheckedChanged" Text="Male" />
                    <asp:RadioButton ID="Female" runat="server" GroupName="Gender" Text="Female" />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" 
                        EnableClientScript="False" ErrorMessage="enter gender" ForeColor="Red" 
                        onservervalidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style4" rowspan=1>
                    <asp:Button ID="Button1" runat="server" Height="68px" onclick="Button1_Click" 
                        Text="Submit" Width="133px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
