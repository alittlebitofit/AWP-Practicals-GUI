<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical3a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 147px;
        }
        .auto-style3 {
            width: 147px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Roll No."></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Class</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="CourseName" Text="FY" Checked="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="CourseName" Text="SY" />
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="CourseName" Text="TY" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Course</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>BCom</asp:ListItem>
                            <asp:ListItem>BScIT</asp:ListItem>
                            <asp:ListItem>BMS</asp:ListItem>
                            <asp:ListItem>BAF</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>
