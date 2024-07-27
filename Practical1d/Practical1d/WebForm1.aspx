<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical1d.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Enter a number" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Fibonacci Series" />
        <br />
        <asp:Label ID="FiboResultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter a number"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check Prime" />
        <br />
        <asp:Label ID="PrimeResultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter a character"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Is vowel?" OnClick="Button3_Click" />
        <br />
        <asp:Label ID="VowelResultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Enter a sentence"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button4" runat="server" Text="Split" OnClick="Button4_Click" />
        <br />
        <asp:Label ID="SplitSentenceResultLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Enter a number"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button5" runat="server" Text="Reverse" OnClick="Button5_Click" />
        <br />
        <asp:Label ID="ReverseResultLabel" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
