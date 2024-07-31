<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2biFunctionOverloading.aspx.cs" Inherits="Practical2b.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <br />
            <asp:Button ID="Button1" runat="server" Text="Function Overloading" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Single Inheritance" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="MultiLevel Inheritance" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Hierarchical Inheritance" />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Constructor Overloading" />
        </div>
    </form>
</body>
</html>
