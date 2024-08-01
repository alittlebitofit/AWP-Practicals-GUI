<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3bbDisplayVacationInCalendarControl.aspx.cs" Inherits="Practical3b._3bbDisplayVacationInCalendarControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>
        </div>
    </form>
</body>
</html>
