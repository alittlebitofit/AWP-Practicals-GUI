using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(TextBox1.Text);
            int n2 = int.Parse(TextBox2.Text);
            int n3 = int.Parse(TextBox3.Text);
            int n4 = int.Parse(TextBox4.Text);

            int product = n1 * n2 * n3 * n4;

            Response.Write($"The product of {n1}, {n2}, {n3}, and {n4} is {product}");

        }
    }
}