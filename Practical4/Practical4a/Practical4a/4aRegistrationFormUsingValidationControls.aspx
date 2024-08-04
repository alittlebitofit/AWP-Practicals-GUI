<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4aRegistrationFormUsingValidationControls.aspx.cs" Inherits="Practical4a._4aRegistrationFormUsingValidationControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 120px;
            margin-right: 0px;
        }
        .auto-style4 {
            height: 26px;
            width: 243px;
        }
        .auto-style6 {
            height: 30px;
            width: 243px;
        }
        .auto-style8 {
            height: 49px;
            width: 243px;
        }
        .auto-style9 {
            width: 139px;
        }
        .auto-style10 {
            height: 49px;
            width: 139px;
        }
        .auto-style11 {
            height: 26px;
            width: 139px;
        }
        .auto-style12 {
            height: 30px;
            width: 139px;
        }
        .auto-style17 {
            width: 602px;
        }
        .auto-style18 {
            width: 157px;
        }
        .auto-style19 {
            height: 49px;
            width: 157px;
        }
        .auto-style20 {
            height: 26px;
            width: 157px;
        }
        .auto-style21 {
            height: 30px;
            width: 157px;
        }
        .auto-style22 {
            width: 243px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="Enter Name :"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label2" runat="server" Text="Enter Password :"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password :"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;</td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Repeat Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*Repeat same password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label4" runat="server" Text="Enter Your Age :"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Age is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Age must be between 21 and 30" ForeColor="Red" MaximumValue="30" MinimumValue="21"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="Label5" runat="server" Text="Enter Your Email Id :"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Invalid Email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label6" runat="server" Text="User Id :"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style22">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*User ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style12">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;
            <br />
&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
&nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>
