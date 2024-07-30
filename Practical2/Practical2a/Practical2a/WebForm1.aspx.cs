using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical2a
{

    class Factorial
    {
        ulong num;
        internal Factorial(ulong n)
        {
            num = n;
        }

        internal ulong ComputeFactorial()
        {
            ulong factorial = 1;

            for (ulong i = num; i > 1; i--)
            {
                factorial *= i;
            }

            return factorial;
        }
    }

    class MoneyConverter
    {
        double money;
        internal MoneyConverter(double money)
        {
            this.money = money;
        }
        internal double ConvertUSDToINR()
        {
            return money * 83.72;
        }

        internal double ConvertINRToUSD()
        {
            return money / 83.72;
        }
    }

    class QuadraticEquation
    {
        double a, b, c;
        internal QuadraticEquation(double a, double b, double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }

        internal string ComputeSolution()
        {
            double sqrtTerm = (b * b) - (4 * a * c);
            double sqrt = Math.Sqrt(sqrtTerm);

            if (double.IsNaN(sqrt))
            {
                return "Given quadratic equation has complex roots";
            }
            else
            {
                double root1 = (b + sqrt) / (2 * a);
                double root2 = (b - sqrt) / (2 * a);

                if (root1 == root2)
                {
                    return $"Given quadratic quation has real and equal roots: {root1}";
                }
                else
                {
                    return $"Given quadratic quation has real and different roots: {root1} and {root2}";
                }

            }

        }
    }

    class TemperatureConverter
    {

        double temperature;
        internal TemperatureConverter(double temperature)
        {
            this.temperature = temperature;
        }

        internal double ConvertFtoC()
        {
            return (temperature - 32) * (5.0 / 9.0);
        }

        internal double ConvertCtoF()
        {
            return (9.0 / 5.0) * temperature + 32;
        }
    }

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
                Factorial f = new Factorial(num.Value);
                FactorialOutput.Text = $"Factorial of {num} is {f.ComputeFactorial()}";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double money = double.Parse(MoneyInput.Text);
            MoneyConverter moneyConverter = new MoneyConverter(money);

            if (RadioButtonList1.SelectedValue == "USDINR")
            {
                MoneyOutput.Text = $"{money} USD = {moneyConverter.ConvertUSDToINR()} INR";
            }
            else
            {
                MoneyOutput.Text = $"{money} INR = {moneyConverter.ConvertINRToUSD()} USD";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double a = double.Parse(aTerm.Text);

            if (a != 0)
            {

                double b = double.Parse(bTerm.Text);
                double c = double.Parse(cTerm.Text);

                QuadraticEquation qe = new QuadraticEquation(a,b,c);

                QuadraticSolution.Text = qe.ComputeSolution();


            }
            else
            {
                QuadraticSolution.Text = "Invalid value for coefficient of x^2";
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double temperature = double.Parse(TemperatureInput.Text);
            TemperatureConverter tc = new TemperatureConverter(temperature);
            //F = (9/5)C + 32
            //°C = (°F - 32) × 5/9
            
            if (TemperaturRadioList.SelectedValue == "CtoF")
            {
                TemperatureOutput.Text = $"{temperature} °C = {tc.ConvertCtoF()} °F";
            }
            else
            {
                TemperatureOutput.Text = $"{temperature} °F = {tc.ConvertFtoC()} °C";
            }

        }
    }
}