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
		int Q3Vin, Q3R, RQ3scalar;

		protected void Page_Load(object sender, EventArgs e)
		{
			//This is needed so it doesn't generate new random numbers each time a button is pressed.
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
				Quiz1.Q3R = Q3R;
				Quiz1.Q3Vin = Q3Vin;
			}
		}

		public void Page_InitComplete()
		{//default value set to mA
			Q3unit.SelectedValue = "mA";
		}

		int correct = 0;

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
			if (Q3unit.SelectedValue == "A")
			{
				if (Convert.ToDouble(TextBox3.Text.Trim()) <= Quiz1.Q3ansCeiling && Convert.ToDouble(TextBox3.Text.Trim()) >= Quiz1.Q3ansFloor)
				{ //answer is correct
					Label5.Text = "\u2713";
					Label5.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label5.Text = Quiz1.Q3ans.ToString();
					Label5.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			else //selected value == "mA"
			{
				if ((Convert.ToDouble(TextBox3.Text.Trim()) / 1000) <= Quiz1.Q3ansCeiling && (Convert.ToDouble(TextBox3.Text.Trim()) / 1000) >= Quiz1.Q3ansFloor)
				{ //answer is correct
					Label5.Text = "\u2713";
					Label5.ForeColor = System.Drawing.Color.Green;
					correct++;
				}
				else
				{
					Label5.Text = Quiz1.Q3ans.ToString();
					Label5.ForeColor = System.Drawing.Color.DarkRed;
				}
			}
			//question 4
			if (TextBox1.Text.Trim() == "50")
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
			//question 5
			if (TextBox2.Text.Trim() == "25")
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
			LabelOutput.Text = correct + " correct out of " + 5;
		}
	}
}