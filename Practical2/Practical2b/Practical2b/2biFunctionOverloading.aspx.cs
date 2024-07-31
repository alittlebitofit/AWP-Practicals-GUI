using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




// Single Inheritance - START
class Parent
{
    internal int d;
    internal string BaseMethod()
    {
        return "This is BaseMethod.";
    }
}

class Child : Parent
{
    internal string DerivedMethod()
    {
        return "This is DerivedMethod.";
    }
}
// Single Inheritance - END


// Multilevel Inheritance - START
class A
{
    internal string GrandParentShow()
    {
        return "Grandparent class";
    }
}

class B : A
{
    internal string ParentShow()
    {
        return "Parent class";
    }
}

class C : B
{
    internal string ChildShow()
    {
        return "Child class";
    }
}
// Multilevel Inheritance - END



// Hierarchical Inheritance - START
class OneParent
{
    internal string ShowParent()
    {
        return "Parent";
    }
}

class FirstChild : OneParent
{
    internal string ShowFirstChild()
    {
        return "First Child";
    }
}
class SecondChild : OneParent
{
    internal string ShowSecondChild()
    {
        return "Second Child";
    }
}
// Hierarchical Inheritance - END



class ConstructorOverloading
{
    internal ConstructorOverloading()
    {
        Console.Write("Default Constructor called");
    }

    internal ConstructorOverloading(string s)
    {
        Console.Write("Parameterized Constructor called with the parameter: " + s);
    }
}



class FunctionOverloading
{
    internal int Sum(int a, int b)
    {
        return a + b;
    }
    internal int Sum(int a, int b, int c)
    {
        return a + b + c;
    }
    internal float Sum(float a, float b)
    {
        return a + b;
    }
    internal float Sum(float a, float b, float c)
    {
        return a + b + c;
    }

}


namespace Practical2b
{


    public partial class WebForm1 : System.Web.UI.Page
    {

        FunctionOverloading mo;
        protected void Page_Load(object sender, EventArgs e)
        {
            mo = new FunctionOverloading();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write($"{mo.Sum(10, 20)}<br>");
            Response.Write($"{mo.Sum(10, 20, 30)}<br>");
            Response.Write($"{mo.Sum(23.1f, 3.0f)}<br>");
            Response.Write($"{mo.Sum(10.34f, 20.8f, 4.6f)}<br>");

            //Response.Redirect("WebForm2.aspx");
            //Server.Transfer("WebForm2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Parent p = new Parent();
            Child c = new Child();

            Response.Write("Calling from Parent class' object: " + p.BaseMethod());
            Response.Write($"<br>Calling from Child class' object: {c.BaseMethod()}, {c.DerivedMethod()}<br>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            C c = new C();
            Response.Write(c.GrandParentShow() + "<br>");
            Response.Write(c.ParentShow() + "<br>");
            Response.Write(c.ChildShow() + "<br>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            OneParent oneP = new OneParent();
            FirstChild fc = new FirstChild();
            SecondChild sc = new SecondChild();

            Response.Write($"Calling Parent from Parent object: {oneP.ShowParent()}<br>");
            Response.Write($"Calling Parent from FirstChild object: {fc.ShowParent()}<br>");
            Response.Write($"Calling FirstChild from FirstChild object: {fc.ShowFirstChild()}<br>");
            Response.Write($"Calling Parent from SecondChild object: {sc.ShowParent()}<br>");
            Response.Write($"Calling SecondChild from SecondChild object: {sc.ShowSecondChild()}<br>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            new ConstructorOverloading();
            new ConstructorOverloading("Hello");
        }
    }
}