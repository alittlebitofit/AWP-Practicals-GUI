<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3bcSelectedDayInCalendarControlUsingStyle.aspx.cs" Inherits="Practical3b._3bcSelectedDayInCalendarControlUsingStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .selectedDate
        {
            background-color: #4CAF50 !important;
            color: white !important;
            font-weight: bold !important;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender">
                <SelectedDayStyle CssClass="selectedDate" />
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
