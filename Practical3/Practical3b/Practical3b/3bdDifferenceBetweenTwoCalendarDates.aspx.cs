using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3b
{
    public partial class _3bdDifferenceBetweenTwoCalendarDates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TimeSpan ts = Calendar1.SelectedDate - Calendar2.SelectedDate;
            Label1.Text = "No. of Days between two dates is: " + Math.Abs(ts.Days);
        }
    }
}