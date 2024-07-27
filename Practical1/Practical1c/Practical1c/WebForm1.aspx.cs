using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1c
{

    struct Student
    {
        public string id, name, cname, dob;
    }
    public partial class WebForm1 : System.Web.UI.Page
    {
        static Student[] students = new Student[2];
        static int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Student s = new Student();

            s.id = TextBox1.Text;
            TextBox1.Text = "";
            
            s.name = TextBox2.Text;
            TextBox2.Text = "";
            
            s.cname = TextBox3.Text;
            TextBox3.Text = "";
            
            s.dob = TextBox4.Text;
            TextBox4.Text = "";

            students[i] = s;
            i++;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int j = 0; j < i; j++)
            {
                Response.Write("Student: " + j + "<br>");
                Response.Write("Student ID: " + students[j].id + "<br>");
                Response.Write("Student Name: " + students[j].name + "<br>");
                Response.Write("Student Course Name: " + students[j].cname + "<br>");
                Response.Write("Student Date of Birth: " + students[j].dob + "<br>");
            }
        }
    }
}