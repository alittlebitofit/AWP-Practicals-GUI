<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="n1"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="n2"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="n3"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="n4"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Product" />
        </div>
    </form>
</body>
</html>
