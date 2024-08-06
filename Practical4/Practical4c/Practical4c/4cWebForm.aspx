<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4cWebForm.aspx.cs" Inherits="Practical4c._4cWebForm" %>

<%@Register Src="4cUserControl.ascx" TagName="c4UserControlTag" TagPrefix="usercontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="WebForm TextBox1"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="WebForm Button" OnClick="Button1_Click" />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="WebForm TextBox2"></asp:TextBox>

            <br />
            <br />

            <usercontrol:c4UserControlTag ID="c4UserControlID" runat="server"></usercontrol:c4UserControlTag>
        </div>
    </form>
</body>
</html>
