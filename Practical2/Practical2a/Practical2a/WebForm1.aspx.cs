using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical2a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ulong? num = null;
            try
            {
                num = uint.Parse(FactorialInput.Text);
            }
            catch (Exception)
            {
                FactorialOutput.Text = "Invalid Output";
            }

            if (num.HasValue)
            {
                ulong? factorial = 1;

                for (ulong? i = num; i > 1; i--)
                {
                    factorial *= i;
                }

                FactorialOutput.Text = $"Factorial of {num} is {factorial}";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double money = double.Parse(MoneyInput.Text);
            double result;


            if (RadioButtonList1.SelectedValue == "USDINR")
            {
                result = money * 83.72;
                MoneyOutput.Text = $"{money} USD = {result} INR";
            }
            else
            {
                result = money / 83.72;
                MoneyOutput.Text = $"{money} INR = {result} USD";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double a = double.Parse(aTerm.Text);

            if (a != 0)
            {

                double b = double.Parse(bTerm.Text);
                double c = double.Parse(cTerm.Text);

                double sqrtTerm = (b * b) - (4 * a * c);
                double sqrt = Math.Sqrt(sqrtTerm);

                if (double.IsNaN(sqrt))
                {
                    QuadraticSolution.Text = "Given quadratic equation has complex roots";
                }
                else
                {
                    double root1 = (b + sqrt) / (2 * a);
                    double root2 = (b - sqrt) / (2 * a);

                    if (root1 == root2)
                    {
                        QuadraticSolution.Text = $"Given quadratic quation has real and equal roots: {root1}";
                    }
                    else
                    {
                        QuadraticSolution.Text = $"Given quadratic quation has real and different roots: {root1} and {root2}";
                    }

                }
            }
            else
            {
                QuadraticSolution.Text = "Invalid value for coefficient of x^2";
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double temperature = double.Parse(TemperatureInput.Text);

            //F = (9/5)C + 32
            //°C = (°F - 32) × 5/9
            
            if (TemperaturRadioList.SelectedValue == "CtoF")
            {
                double fahrenheit = (9.0 / 5.0) * temperature + 32;
                TemperatureOutput.Text = $"{temperature} °C = {fahrenheit} °F";
            }
            else
            {
                double celsius = (temperature - 32) * (5.0 / 9.0);
                TemperatureOutput.Text = $"{temperature} °F = {celsius} °C";
            }

        }
    }
}