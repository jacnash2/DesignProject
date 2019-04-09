using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.Quiz
{
	public partial class Section3 : System.Web.UI.Page
	{
		Random rand = new Random();
		double q1is, q4i2, q4i3, q4i4, q4i6, q2is, q2r1, q2r2, q2r3;
		int q1vo, q1r1, q1r2;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				//default values for drop down lists
				DropDownList1.SelectedValue = "mA";
				DropDownList2.SelectedValue = "mA";

				//for questions 1-3
				q1vo = rand.Next(20) + 1;//1 to 20 V
				q1r1 = (rand.Next(10) + 1) * 10;//10 to 100 Ohms
				double q1i2 = 0.02 * (rand.Next(25) + 1);//0.02 to 0.5 A
				q1is = (Convert.ToDouble((100 * q1vo / q1r1)) / 100) + q1i2;//0.03 to 2.5 A, i1 + i2
				q1r2 = rand.Next(Convert.ToInt16(q1vo/q1i2)) + 1;//1 to (V/I2) Ohms - makes sure R3 can't be negative
				lblQ1Is.Text = (q1is * 1000).ToString();
				lblQ1R1.Text = q1r1.ToString();
				lblQ1R2.Text = q1r2.ToString();
				lblQ1V0.Text = q1vo.ToString();

				//for questions 4 and 5
				q2is = Convert.ToDouble((rand.Next(1000) + 1)) / 1000;//1 to 1000 mA
				q2r1 = (rand.Next(100) + 1) * 10;//10 to 1000 Ohms
				q2r2 = (rand.Next(100) + 1) * 10;//10 to 1000 Ohms
				q2r3 = (rand.Next(100) + 1) * 10;//10 to 1000 Ohms
				lblQ2Is.Text = (q2is * 1000).ToString();
				lblQ2R1.Text = q2r1.ToString();
				lblQ2R2.Text = q2r2.ToString();
				lblQ2R3.Text = q2r3.ToString();

				//for questions 6-9
				q4i2 = Convert.ToDouble((rand.Next(100) + 1)) / 10;//0.1 to 10 A
				q4i3 = Convert.ToDouble((rand.Next(100) + 1)) / 10;//0.1 to 10 A
				q4i4 = Convert.ToDouble((rand.Next(100) + 1)) / 10;//0.1 to 10 A
				q4i6 = Convert.ToDouble((rand.Next(100) + 1)) / 10;//0.1 to 10 A
				lblQ4I2.Text = q4i2.ToString();
				lblQ4I3.Text = q4i3.ToString();
				lblQ4I4.Text = q4i4.ToString();
				lblQ4I6.Text = q4i6.ToString();

				Quiz3.Q1IS = q1is;
				Quiz3.Q1R1 = q1r1;
				Quiz3.Q1R2 = q1r2;
				Quiz3.Q1VO = q1vo;
				Quiz3.Q4I2 = q4i2;
				Quiz3.Q4I3 = q4i3;
				Quiz3.Q4I4 = q4i4;
				Quiz3.Q4I6 = q4i6;
				Quiz3.Q2IS = q2is;
				Quiz3.Q2R1 = q2r1;
				Quiz3.Q2R2 = q2r2;
				Quiz3.Q2R3 = q2r3;
			}
		}
		int correct = 0;

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			//question 1
			if (!Double.TryParse(TextBox1.Text, out double Q1ans))
			{
				Label1.Text = "Error: answer isn't correctly formatted";
				Label1.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList1.SelectedValue == "A") Q1ans = Q1ans * 1000;
				//answer is within 10 mA of correct answer
				if (Q1ans < (Quiz3.Q1ans + 10) && Q1ans > (Quiz3.Q1ans - 10))
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
			if (!Double.TryParse(TextBox2.Text, out double Q2ans))
			{
				Label2.Text = "Error: answer isn't correctly formatted";
				Label2.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList2.SelectedValue == "A") Q2ans = Q2ans * 1000;
				//answer is within 10 mA of correct answer
				if (Q2ans < (Quiz3.Q2ans + 10) && Q2ans > (Quiz3.Q2ans - 10))
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
			if (!Double.TryParse(TextBox3.Text, out double Q3ans))
			{
				Label3.Text = "Error: answer isn't correctly formatted";
				Label3.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList3.SelectedValue == "kΩ") Q3ans = Q3ans * 1000;
				//rounded answer is within 1 Ohm of correct answer
				if (Math.Round(Q3ans) >= (Quiz3.Q3ans - 1) && Math.Round(Q3ans) <= (Quiz3.Q3ans + 1))
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
			}
			//question 4
			if (!Double.TryParse(TextBox4.Text, out double Q4ans)){
				Label4.Text = "Error: answer isn't correctly formatted";
				Label4.ForeColor = System.Drawing.Color.DarkRed;
			}
			else {
				if (DropDownList4.SelectedValue == "mA") Q4ans = Q4ans / 1000;
				if (Q4ans <= (Quiz3.Q4ans + 10) && Q4ans >= (Quiz3.Q4ans - 10))
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
			if (!Double.TryParse(TextBox5.Text, out double Q5ans))
			{
				Label5.Text = "Error: answer isn't correctly formatted";
				Label5.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList5.SelectedValue == "mA") Q5ans = Q5ans / 1000;
				if (Q5ans <= (Quiz3.Q5ans + 10) && Q5ans >= (Quiz3.Q5ans - 10))
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
			if (!Double.TryParse(TextBox6.Text, out double Q6ans))
			{
				Label6.Text = "Error: answer isn't correctly formatted";
				Label6.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList6.SelectedValue == "mA") Q6ans = Q6ans / 1000;
				if (Q6ans == Quiz3.Q6ans)
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
			if (!Double.TryParse(TextBox7.Text, out double Q7ans))
			{
				Label7.Text = "Error: answer isn't correctly formatted";
				Label7.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList7.SelectedValue == "mA") Q7ans = Q7ans / 1000;
				if (Q7ans == Quiz3.Q7ans)
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
			}
			//question 8
			if (!Double.TryParse(TextBox8.Text, out double Q8ans))
			{
				Label8.Text = "Error: answer isn't correctly formatted";
				Label8.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList8.SelectedValue == "mA") Q8ans = Q8ans / 1000;
				if (Q8ans == Quiz3.Q8ans)
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
			}
			//question 9
			if (!Double.TryParse(TextBox9.Text, out double Q9ans))
			{
				Label9.Text = "Error: answer isn't correctly formatted";
				Label9.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList9.SelectedValue == "mA") Q9ans = Q9ans / 1000;
				if (Q9ans == Quiz3.Q9ans)
				{
					Label9.Text = "\u2713";
					Label9.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label9.Text = "x";
					Label9.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 10
			if (RadioButtonList1.SelectedValue == "Their value is doubled.")
			{
				Label10.Text = "\u2713";
				Label10.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				Label10.Text = "x";
				Label10.ForeColor = System.Drawing.Color.DarkRed;
			}

			lblOutput.Text = correct + " questions correct out of " + 8;
		}
	}
}