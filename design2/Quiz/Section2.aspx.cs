using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.Quiz
{
	public partial class Section2 : System.Web.UI.Page
	{
		Random rand = new Random();
		int q1r1, q1r2, q1r3, q2r1, q2r2, q2r3, q4r1, q4r2, q4r3, q4r4, q4r5, q4r6;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				//question 1
				q1r1 = 10 * (rand.Next(100) + 1);//10 to 1000
				q1r2 = 10 * (rand.Next(100) + 1);//10 to 1000
				q1r3 = 10 * (rand.Next(100) + 1);//10 to 1000
				lblQ1R1.Text = q1r1.ToString();
				lblQ1R2.Text = q1r2.ToString();
				lblQ1R3.Text = q1r3.ToString();
				//question 2
				q2r1 = 10 * (rand.Next(100) + 1);//10 to 1000
				q2r2 = 10 * (rand.Next(100) + 1);//10 to 1000
				q2r3 = 10 * (rand.Next(100) + 1);//10 to 1000
				lblQ2R1.Text = q2r1.ToString();
				lblQ2R2.Text = q2r2.ToString();
				lblQ2R3.Text = q2r3.ToString();
				//questions 4 through 6
				q4r1 = 10 * (rand.Next(10) + 1);//10 to 100
				q4r2 = 10 * (rand.Next(10) + 1);//10 to 100
				q4r3 = 10 * (rand.Next(10) + 1);//10 to 100
				q4r4 = 10 * (rand.Next(10) + 1);//10 to 100
				q4r5 = 10 * (rand.Next(10) + 1);//10 to 100
				q4r6 = 10 * (rand.Next(10) + 1);//10 to 100
				lblQ4R1.Text = q4r1.ToString();
				lblQ4R2.Text = q4r2.ToString();
				lblQ4R3.Text = q4r3.ToString();
				lblQ4R4.Text = q4r4.ToString();
				lblQ4R5.Text = q4r5.ToString();
				lblQ4R6.Text = q4r6.ToString();

				Quiz2.Q1R1 = q1r1;
				Quiz2.Q1R2 = q1r2;
				Quiz2.Q1R3 = q1r3;
				Quiz2.Q2R1 = q2r1;
				Quiz2.Q2R2 = q2r2;
				Quiz2.Q2R3 = q2r3;
				Quiz2.Q4R1 = q4r1;
				Quiz2.Q4R2 = q4r2;
				Quiz2.Q4R3 = q4r3;
				Quiz2.Q4R4 = q4r4;
				Quiz2.Q4R5 = q4r5;
				Quiz2.Q4R6 = q4r6;
			}
		}

		int correct = 0;

		protected void Button1_Click(object sender, EventArgs e)
		{
			//question 1
			if (!Double.TryParse(TextBox1.Text, out double validate))
			{//even though the answer is an integer, this accepts answers with decimal places, but they'll be counted as wrong
				Label1.Text = "Error: answer isn't correctly formatted";
				Label1.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				double Q1ans = Convert.ToDouble(TextBox1.Text);
				if (DropDownList1.SelectedValue == "kΩ") Q1ans = Q1ans * 1000;
				if (Q1ans == Quiz2.Q1ans)
				{
					Label1.Text = "\u2713";
					Label1.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label1.Text = "x";
					Label1.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 2
			if (!Double.TryParse(TextBox2.Text, out validate))
			{
				Label2.Text = "Error: answer isn't correctly formatted";
				Label2.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				double Q2ans = Convert.ToDouble(TextBox2.Text);
				if (DropDownList2.SelectedValue == "kΩ") Q2ans = Q2ans * 1000;
				if (Q2ans >= (Quiz2.Q2ans - 1) && Q2ans <= (Quiz2.Q2ans + 1))
				{
					Label2.Text = "\u2713";
					Label2.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label2.Text = "x";
					Label2.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 3
			if (RadioButtonList3.SelectedValue == "The equivalent resistance is higher when they're placed in series.")
			{
				Label3.Text = "\u2713";
				Label3.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				Label3.Text = "x";
				Label3.ForeColor = System.Drawing.Color.DarkRed;
			}
			//question 4
			if (!Double.TryParse(TextBox4.Text, out validate))
			{
				Label4.Text = "Error: answer isn't correctly formatted";
				Label4.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				double Q4ans = Convert.ToDouble(TextBox4.Text);
				if (DropDownList4.SelectedValue == "kΩ") Q4ans = Q4ans * 1000;
				if (Q4ans >= (Quiz2.Q4ans - 1) && Q4ans <= (Quiz2.Q4ans + 1))
				{
					Label4.Text = "\u2713";
					Label4.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label4.Text = "x";
					Label4.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 5
			if (!Double.TryParse(TextBox5.Text, out validate))
			{
				Label5.Text = "Error: answer isn't correctly formatted";
				Label5.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				double Q5ans = Convert.ToDouble(TextBox5.Text);
				if (DropDownList5.SelectedValue == "kΩ") Q5ans = Q5ans * 1000;
				if (Q5ans >= (Quiz2.Q5ans - 1) && Q5ans <= (Quiz2.Q5ans + 1))
				{
					Label5.Text = "\u2713";
					Label5.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label5.Text = "x";
					Label5.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 6
			if (!Double.TryParse(TextBox6.Text, out validate))
			{
				Label6.Text = "Error: answer isn't correctly formatted";
				Label6.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				double Q6ans = Convert.ToDouble(TextBox6.Text);
				if (DropDownList6.SelectedValue == "kΩ") Q6ans = Q6ans * 1000;
				if (Q6ans >= (Quiz2.Q6ans - 2) && Q6ans <= (Quiz2.Q6ans + 2))
				{
					Label6.Text = "\u2713";
					Label6.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label6.Text = "x";
					Label6.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 7
			if (RadioButtonList7.SelectedValue == "The equivalent resistance is always larger than the value of the largest resistor.")
			{
				Label7.Text = "\u2713";
				Label7.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				Label7.Text = "x";
				Label7.ForeColor = System.Drawing.Color.DarkRed;
			}
			//question 8
			if (RadioButtonList8.SelectedValue == "The equivalent resistance is always smaller than the value of the smallest resistor.")
			{
				Label8.Text = "\u2713";
				Label8.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				Label8.Text = "x";
				Label8.ForeColor = System.Drawing.Color.DarkRed;
			}
			LabelOutput.Text = correct + " questions correct out of " + 8;
		}
	}
}