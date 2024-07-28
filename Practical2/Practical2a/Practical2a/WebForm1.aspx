<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical2a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="FactorialLabel" runat="server" Text="Number"></asp:Label>
            <asp:TextBox ID="FactorialInput" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Factorial" />
            <br />
            <asp:Label ID="FactorialOutput" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="MoneyLabel" runat="server" Text="Enter Money"></asp:Label>
            <asp:TextBox ID="MoneyInput" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="USDINR" Selected="True">USD to INR</asp:ListItem>
                <asp:ListItem Value="INRUSD">INR to USD</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Convert" />
            <br />
            <asp:Label ID="MoneyOutput" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Coefficients"></asp:Label>
            <br />
            <asp:TextBox ID="aTerm" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="x^2 + "></asp:Label>
            <asp:TextBox ID="bTerm" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="x +"></asp:Label>
            <asp:TextBox ID="cTerm" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Solve" />
            <br />
            <asp:Label ID="QuadraticSolution" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Enter Temperature"></asp:Label>
&nbsp;<asp:TextBox ID="TemperatureInput" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <asp:RadioButtonList ID="TemperaturRadioList" runat="server">
                <asp:ListItem Selected="True" Value="CtoF">C to F</asp:ListItem>
                <asp:ListItem Value="FtoC">F to C</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Convert" />
            <br />
            <asp:Label ID="TemperatureOutput" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
