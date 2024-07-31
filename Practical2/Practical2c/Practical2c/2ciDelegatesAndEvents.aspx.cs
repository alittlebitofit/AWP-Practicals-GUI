using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical2c
{
    public partial class DelegatesAndEvents : System.Web.UI.Page
    {

        public delegate void SimpleDelegate();
        public void CallingFunction()
        {
            Response.Write("First Function Called...<br>");
        }

        public void SecondFunction()
        {
            Response.Write("Second Function Called...<br>");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SimpleDelegate sd = new SimpleDelegate(CallingFunction);
            sd();

            sd += new SimpleDelegate(SecondFunction);
            sd();
        }
    }
}