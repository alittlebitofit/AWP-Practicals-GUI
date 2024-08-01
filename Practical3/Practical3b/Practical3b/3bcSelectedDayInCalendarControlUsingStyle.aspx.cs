using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3b
{
    public partial class _3bcSelectedDayInCalendarControlUsingStyle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsSelected)
            {
                e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#4CAF50");
                e.Cell.ForeColor = System.Drawing.Color.White;
                e.Cell.Font.Bold = true;
            }

            if (e.Day.IsToday)
            {
                e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF9800");
                e.Cell.ForeColor = System.Drawing.Color.White;
                e.Cell.Font.Bold = true;
            }
        }
    }
}