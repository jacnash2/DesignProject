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
		double q1vo, q1is, q1r1, q1r2, q4i2, q4i3, q4i4, q4i6;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				//for questions 1-3
				q1vo = rand.Next(100) + 100;//100 to 200 V
				q1is = Convert.ToDouble((rand.Next(50) + 10)) / 10;//1 to 6 A
				q1r1 = rand.Next(50) + 50;//50 to 100 Ohms
				q1r2 = rand.Next(50) + 1;//1 to 50 Ohms
				lblQ1Is.Text = q1is.ToString();
				lblQ1R1.Text = q1r1.ToString();
				lblQ1R2.Text = q1r2.ToString();
				lblQ1V0.Text = q1vo.ToString();
				//for questions 4-7
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
				if (Q1ans == Quiz3.Q1ans)
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
				if (Q2ans == Quiz3.Q2ans)
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
				if (Q3ans == Quiz3.Q3ans)
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
			if (!Double.TryParse(TextBox4.Text, out double Q4ans))
			{
				Label4.Text = "Error: answer isn't correctly formatted";
				Label4.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{
				if (DropDownList4.SelectedValue == "mA") Q4ans = Q4ans / 1000;
				if (Q4ans == Quiz3.Q4ans)
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
				if (Q5ans == Quiz3.Q5ans)
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
			if (RadioButtonList1.SelectedValue == "Their value is doubled.")
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

			lblOutput.Text = correct + " questions correct out of " + 8;
		}
	}
}