<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3bdDifferenceBetweenTwoCalendarDates.aspx.cs" Inherits="Practical3b._3bdDifferenceBetweenTwoCalendarDates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="No. of Days between two dates is: "></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
