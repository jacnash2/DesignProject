using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class Section1Quiz : System.Web.UI.Page
	{
		Random rand = new Random();
		int Q3Vin, Q3R, RQ3scalar, Q4Volts, Q4mA;

		protected void Page_Load(object sender, EventArgs e)
		{
			//IsPostBack means "isRefreshed," so this stuff only happens the first time the page loads, not on each refresh.
			if (!IsPostBack)
			{
				Q3Vin = rand.Next(50) + 1;//1 to 50
				RQ3scalar = rand.Next(2);//0 or 1
				if (RQ3scalar == 0)//resistor is going to have a large value
				{
					Q3R = (rand.Next(89) + 10) * 100;//1k to 10k
					lblRQ3.Text = Q3R + "Ω";
					Q3Vin = Q3Vin * 10;//Vin = 10 to 500 now, so the answer isn't under 1 mA.
				}
				else//RQ3scalar = 1
				{
					Q3R = (rand.Next(98) + 1) * 10;//10 to 990
					lblRQ3.Text = Q3R + "Ω";
				}
				lblVinQ3.Text = Q3Vin + "V";
				Q4Volts = rand.Next(50) + 1;//1 to 50
				Q4mA = rand.Next(990) + 10;//10 mA to 1 A
				LblQ4Volts.Text = Q4Volts.ToString();
				LblQ4Current.Text = Q4mA.ToString();

				//These have to be set down here rather than above. I have no idea why.
				Quiz1.Q4mA = Q4mA;
				Quiz1.Q4Volts = Q4Volts;
				Quiz1.Q3R = Q3R;
				Quiz1.Q3Vin = Q3Vin;
			}
		}

		public void Page_InitComplete()
		{//default value set to mA
			Q3unit.SelectedValue = "mA";
		}

		int correct = 0;
		//round answer to 2 significant figures
		//currently only works for values from 0.0001 to 10
		public double RoundAnswer(double answer)
		{
			if (answer > 10) return Math.Round(answer, 0, MidpointRounding.AwayFromZero);
			if (answer > 1) return Math.Round(answer, 1, MidpointRounding.AwayFromZero);
			else if (answer > 0.1) return Math.Round(answer, 2, MidpointRounding.AwayFromZero);
			else if (answer > 0.01) return Math.Round(answer, 3, MidpointRounding.AwayFromZero);
			else if (answer > 0.001) return Math.Round(answer, 4, MidpointRounding.AwayFromZero);
			else return Math.Round(answer, 5, MidpointRounding.AwayFromZero);
		}

		protected void Button1_Click1(object sender, EventArgs e)
		{
			//question 1
			if (RadioButtonList1.SelectedValue == "The current will increase.")
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
			//question 2
			if (RadioButtonList2.SelectedValue == "The current will decrease.")
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
			//question 3
			//answer needs to be correct to two significant digits
			double Q3ans = Convert.ToDouble(TextBox3.Text.Trim());
			if (Q3unit.SelectedValue == "A")//user gave the answer in Amps
			{
				Q3ans = RoundAnswer(Q3ans);
				if (Q3ans == Quiz1.Q3ansRounded)
				{ //answer is correct
					Label3.Text = "\u2713";
					Label3.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label3.Text = Quiz1.Q3ans.ToString();
					Label3.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			else //selected value == "mA"
			{
				Q3ans = Q3ans / 1000;//convert mA to A
				Q3ans = RoundAnswer(Q3ans);
				if (Q3ans == Quiz1.Q3ansRounded)
				{ //answer is correct
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
			//answer must be correct in integer form (doesn't care about decimal places)
			if (Convert.ToInt16(TextBox4.Text.Trim()) == Quiz1.Q4ans || Convert.ToInt16(TextBox4.Text.Trim()) == (Quiz1.Q4ans + 1))
			{//(Quiz1.Q4ans + 1) allows answers to be correct if user rounded up, so there are two acceptable answers here
				Label4.Text = "\u2713";
				Label4.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				Label4.Text = "x";
				Label4.ForeColor = System.Drawing.Color.DarkRed;
			}
			//question 5
			int Q5ans = Convert.ToInt16(TextBox5.Text.Trim());
			/*
			 * Q5ansRounded[0] is the lowest acceptable answer
			 * it's found using the old resistance (rounded down), old current, and new resistance
			 * Q5ansRounded[1] is the highest acceptable answer
			 * Q5ansRounded[1] is found using the old resistance (rounded up), old current, and new resistance
			 * If the answer is found using the voltage from Q4 and the resistance from Q5, it should always lie between the two values.
			*/
			if (Q5ans >= Quiz1.Q5ans[0] && Q5ans <= Quiz1.Q5ans[1])
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
			LabelOutput.Text = correct + " correct out of " + 5;
		}
	}
}