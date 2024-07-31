using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

class NegativeException : Exception
{
    public NegativeException(string msg) : base(msg)
    {

    }
}

namespace Practical2c
{
    public partial class _2ciiExceptionHandling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num;

            try
            {
                num = int.Parse(TextBox1.Text);
                if (num < 0) throw new NegativeException("Negative number");
                else Response.Write("Positive number");
            }
            catch(NegativeException ne)
            {
                Response.Write(ne.Message);
            }
        }
    }
}