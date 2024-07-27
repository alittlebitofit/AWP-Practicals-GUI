using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1b
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str1 = TextBox1.Text;

            string[] words = str1.Split(' ');

            foreach(string word in words)
            {
                TextBox2.Text += word + "\n";
            }
        }
    }
}