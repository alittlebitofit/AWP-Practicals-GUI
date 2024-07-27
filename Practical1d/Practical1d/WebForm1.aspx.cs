using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical1d
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = int.Parse(TextBox1.Text);

            if (n == 1)
            {
                FiboResultLabel.Text = "0";
            }
            else if (n == 2)
            {
                FiboResultLabel.Text = "0 1";
            }
            else if (n > 2)
            {
                FiboResultLabel.Text = "0 1 ";
                int a = 0;
                int b = 1;

                for (int i = 2; i < n; i++)
                {
                    int c = a + b;
                    FiboResultLabel.Text += c + " ";
                    a = b;
                    b = c;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int n = int.Parse(TextBox2.Text);
            bool isPrime = true;
            for (int i = 2; i < n / 2; i++)
            {
                if (n % i == 0)
                {
                    isPrime = false;
                    break;
                }
            }

            if (isPrime) PrimeResultLabel.Text = $"{n} is a Prime number";
            else PrimeResultLabel.Text = $"{n} is not a Prime number";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            char c = TextBox5.Text[0];
            char[] vowels = { 'a', 'e', 'i', 'o', 'u' };

            if (vowels.Contains(c.ToString().ToLower()[0]))
                VowelResultLabel.Text = $"{c} is a vowel";
            else
                VowelResultLabel.Text = $"{c} is not a vowel";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string sentence = TextBox7.Text;

            string[] words = sentence.Split(' ');

            foreach (string word in words)
            {
                SplitSentenceResultLabel.Text += word + "<br>";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int og_num = int.Parse(TextBox8.Text);
            int num = og_num;
            int reversed = 0;

            int sum = 0;

            while (num > 0)
            {
                int remainder = num % 10;
                reversed = reversed * 10 + remainder;
                num = num / 10;

                sum += remainder;
            }

            ReverseResultLabel.Text = $"Reverse of {og_num} is {reversed}";
            SumOfDigitsResultLabel.Text = $"Sum of digits in {og_num} is {sum}";
        }
    }
}