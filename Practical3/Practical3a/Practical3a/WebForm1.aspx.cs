using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s;

            if(RadioButton1.Checked == true)
            {
                s = RadioButton1.Text;
            }
            else if(RadioButton2.Checked == true)
            {
                s = RadioButton2.Text;
            }
            else
            {
                s = RadioButton3.Text;
            }

            Label2.Text += " in " + s;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = "You have been enrolled in " + DropDownList1.SelectedItem;
        }
    }
}