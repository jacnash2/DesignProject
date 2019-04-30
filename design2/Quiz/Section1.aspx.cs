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
		int Q3Vin, Q3R, RQ3scalar, Q6Volts, Q6mA, Q4Volts, Q4mA, Q5Ohms, Q5mA, Q7R;

		//Page_Load is executed between the PreInit and PostInit methods (I think)
		protected void Page_Load(object sender, EventArgs e)
		{
			//IsPostBack means "isRefreshed," so this stuff only happens the first time the page loads, not on each refresh.
			if (!IsPostBack)
			{
				//question 3 stuff
				//This is probably more complicated than it needs to be with the Rscalar and stuff like that.
				Q3Vin = rand.Next(50) + 1;//1 to 50
				RQ3scalar = rand.Next(2);//0 or 1
				if (RQ3scalar == 0)//Randomly generated scaler = 0 => resistor is going to have a large value
				{
					Q3R = (rand.Next(89) + 10) * 100;//1k to 10k
					lblRQ3.Text = Q3R + "Ω";//Put the resistance and Ω in the textbox
					Q3Vin = Q3Vin * 10;//Vin = 10 to 500 now, so the answer isn't under 1 mA.
				}
				else//RQ3scalar = 1
				{
					Q3R = (rand.Next(98) + 1) * 10;//10 to 990
					lblRQ3.Text = Q3R + "Ω";//Put the resistance and Ω in the textbox
				}
				lblVinQ3.Text = Q3Vin + "V";//Put the value of the voltage and a V in the textbox

				//question 4 stuff
				Q4Volts = rand.Next(46) + 5;//5 to 50
				Q4mA = rand.Next(991) + 10;//10 to 1000
				lblCurrentQ4.Text = Q4mA + "mA";//put the value of the current and "mA" in the textbox
				lblVinQ4.Text = Q4Volts + "V";//put the voltage and "V" in the textbox

				//question 5 stuff
				Q5Ohms = (rand.Next(10) + 1) * 100;//100 to 1000
				Q5mA = rand.Next(491) + 10;//10 to 500
				lblCurrentQ5.Text = Q5Ohms+ "Ω";
				lblRQ5.Text = Q5mA + "mA";
				
				//question 6 stuff
				Q6Volts = rand.Next(50) + 1;//1 to 50
				Q6mA = rand.Next(990) + 10;//10 mA to 1 A
				LblQ6Volts.Text = Q6Volts.ToString();//Put the volts on the label, need .ToString() or else + ""
				LblQ6Current.Text = Q6mA.ToString();

				//question 7 resistance
				Q7R = (rand.Next(196) + 5) * 10;//50 to 2000
				lblQ7R.Text=Q7R+ "Ω";

				//These have to be set down here rather than above for some reason..
				//You need to save these values on a different class, 
				//because variables on this class would be reset to 0 on each page refresh.
				Quiz1.Q6mA = Q6mA;
				Quiz1.Q6Volts = Q6Volts;
				Quiz1.Q3R = Q3R;
				Quiz1.Q3Vin = Q3Vin;
				Quiz1.Q7R = Q7R;
				Quiz1.Q4mA = Q4mA;
				Quiz1.Q4V = Q4Volts;
				Quiz1.Q5mA = Q5mA;
				Quiz1.Q5Ohms = Q5Ohms;
			}
		}

		//Figures out which styleshoot its using. Without this, there would be no dark mode or .css applied.
		//If you want to disable DarkMode for this page, replace this with the commented out version:
/*		public void Page_PreInit()
		{
			this.Theme = "LightMode";
		}*/
		public void Page_PreInit()//PreInit means this code is executed right before page is initialized
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}

		//InitComplete means this happens right after the page is initialized
		public void Page_InitComplete()
		{//default value set to mA
			Q3unit.SelectedValue = "mA";
		}

		int correct = 0;
		//round answer to 2 significant figures
		//currently only works for values from 0.0001 to 10
		//to allow for a greater range, add more lines of the same format
		public double RoundAnswer(double answer)
		{
			if (answer > 10) return Math.Round(answer, 0, MidpointRounding.AwayFromZero);
			if (answer > 1) return Math.Round(answer, 1, MidpointRounding.AwayFromZero);
			else if (answer > 0.1) return Math.Round(answer, 2, MidpointRounding.AwayFromZero);
			else if (answer > 0.01) return Math.Round(answer, 3, MidpointRounding.AwayFromZero);
			else if (answer > 0.001) return Math.Round(answer, 4, MidpointRounding.AwayFromZero);
			else return Math.Round(answer, 5, MidpointRounding.AwayFromZero);
		}

		//this is executed when Button1 is clicked (makes sense)
		protected void Button1_Click1(object sender, EventArgs e)
		{
			//question 1
			//you can set default values for RadioButtonLists and DropDownLists in PageInitComplete method
			//with RadioButtonList2.SelectedValue = *value I want to select*
			//It wouldn't make sense to select a default answer though.
			if (RadioButtonList1.SelectedValue == "The current will increase.")
			{//answer is correct
				Label1.Text = "\u2713";//output a green checkmark size 20
				Label1.ForeColor = System.Drawing.Color.Green;//changes the font color of label1
				Label1.Font.Size = 20;//changes the font size of label1
				correct++;//increment correctAnswer counter
			}
			else
			{
				Label1.Text = "x";//output a red x size 20
				Label1.ForeColor = System.Drawing.Color.DarkRed;//changes the font color of label1
				Label1.Font.Size = 20;//changes the font size of label1
			}//doesn't increment correctAnswer counter
			//question 2
			if (RadioButtonList2.SelectedValue == "The current will decrease.")
			{//answer is correct
				Label2.Text = "\u2713";//output a green checkmark size 20
				Label2.ForeColor = System.Drawing.Color.Green;
				Label2.Font.Size = 20;
				correct++;
			}
			else
			{
				Label2.Text = "x";//output a red x size 20
				Label2.ForeColor = System.Drawing.Color.DarkRed;
				Label2.Font.Size = 20;
			}
			//question 3 - this question needs to be correct to 2 decimal places
			//this makes sure the output is a value double
			//if it isn't and validation isn't done first, the page will crash. That's a bad thing. So we have validation.
			if (!Double.TryParse(TextBox3.Text, out double Q3ans))
			{//validation failed, user entered letters or special characters
				Label3.Text = "Error: answer isn't correctly formatted";
				Label3.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{//validation was successful
				if (Q3unit.SelectedValue == "A")//user gave the answer in Amps
				{
					Q3ans = RoundAnswer(Q3ans);//Rounds the users answer. So if they include 30 decimal places, they can still be right.
					if (Q3ans == Quiz1.Q3ansRounded)
					{ //answer is correct, to 2 decimal places
						Label3.Text = "\u2713";
						Label3.ForeColor = System.Drawing.Color.Green;
						Label3.Font.Size = 20;
						correct++;
					}
					else
					{
						Label3.Text = Quiz1.Q3ans.ToString();
						Label3.ForeColor = System.Drawing.Color.DarkRed;
						Label3.Font.Size = 20;
					}
				}
				else //selected value == "mA"
				{
					Q3ans = Q3ans / 1000;//convert mA to A
					Q3ans = RoundAnswer(Q3ans);
					if (Q3ans == Quiz1.Q3ansRounded)
					{ //answer is correct
						Label3.Text = "\u2713";//outputs a green checkmark size 20
						Label3.ForeColor = System.Drawing.Color.Green;
						Label3.Font.Size = 20;
						correct++;
					}
					else
					{
						Label3.Text = "x";//outputs a red x size 20
						Label3.ForeColor = System.Drawing.Color.DarkRed;
						Label3.Font.Size = 20;
					}
				}
			}
			//question 4
			//answer must be correct in integer form (doesn't care about decimal places)
			if (!Double.TryParse(TextBox4.Text, out double Q4ans))
			{//validation failed
				Label4.Text = "Error: answer isn't correctly formatted";
				Label4.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{//go from text to double, then round the double to nearest integer
				if (Math.Round(Q4ans) == Quiz1.Q4ans || Math.Round(Q4ans) == (Quiz1.Q4ans + 1))
				{//answer is correct within 1 integer value
					Label4.Text = "\u2713";//output green checkmark size 20
					Label4.ForeColor = System.Drawing.Color.Green;
					Label4.Font.Size = 20;
					correct++;
				}
				else
				{//outputs red x size 20
					Label4.Text = "x";
					Label4.ForeColor = System.Drawing.Color.DarkRed;
					Label4.Font.Size = 20;
				}
			}
			//question 5
			//answer must be correct in integer form (doesn't care about decimal places)
			if (!Double.TryParse(TextBox5.Text, out double Q5ans))
			{//validation failed
				Label5.Text = "Error: answer isn't correctly formatted";
				Label5.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{//same as above, from string to double and rounded to integer
				if (Math.Round(Q5ans) == Quiz1.Q5ans || Math.Round(Q5ans) == (Quiz1.Q5ans + 1))
				{//again, accepts rounded up or rounded down answers
					Label5.Text = "\u2713";//outputs green checkmark size 20
					Label5.ForeColor = System.Drawing.Color.Green;
					Label5.Font.Size = 20;
					correct++;
				}
				else
				{//outputs red x size 20
					Label5.Text = "x";
					Label5.ForeColor = System.Drawing.Color.DarkRed;
					Label5.Font.Size = 20;
				}
			}
			//question 6
			//answer must be correct in integer form (doesn't care about decimal places)
			if (!Double.TryParse(TextBox6.Text, out double Q6ans))
			{//validation failed,
				Label6.Text = "Error: answer isn't correctly formatted";
				Label6.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{//comparing double to integer, rounding for it to work
				if (Math.Round(Q6ans) == Quiz1.Q6ans || Math.Round(Q6ans) == (Quiz1.Q6ans + 1))
				{//(Quiz1.Q4ans + 1) allows answers to be correct if user rounded up, so there are two acceptable answers here
					Label6.Text = "\u2713";//outputs green checkmark size 20
					Label6.ForeColor = System.Drawing.Color.Green;
					Label6.Font.Size = 20;
					correct++;
				}
				else
				{//outputs red x size 20
					Label6.Text = "x";
					Label6.ForeColor = System.Drawing.Color.DarkRed;
					Label6.Font.Size = 20;
				}
			}
			//question 7
			if (!Double.TryParse(TextBox7.Text, out double Q7ans))
			{//validation failed, user entered a nonnumber character
				Label7.Text = "Error: answer isn't correctly formatted";
				Label7.ForeColor = System.Drawing.Color.DarkRed;
			}
			else
			{//conver to a double first, then convert to an integer. otherwise it'll crash when users use decimal places.
				/*
				 * Q7ansRounded[0] is the lowest acceptable answer
				 * it's found using the old resistance (rounded down), old current, and new resistance
				 * Q7ansRounded[1] is the highest acceptable answer
				 * Q7ansRounded[1] is found using the old resistance (rounded up), old current, and new resistance
				 * If the answer is found using the voltage from Q4 and the resistance from Q5, it should always lie between the two values.
				*/
				if (Q7ans >= Quiz1.Q7ans[0] && Q7ans <= Quiz1.Q7ans[1])
				{
					Label7.Text = "\u2713";//label shows checkmark with green font and 20 font size
					Label7.ForeColor = System.Drawing.Color.Green;
					Label7.Font.Size = 20;
					correct++;
				}
				else
				{
					Label7.Text = "x";//label shows an x with red font and 20 font size
					Label7.ForeColor = System.Drawing.Color.DarkRed;
					Label7.Font.Size = 20;
				}
			}
			LabelOutput.Text = correct + " correct out of " + 7;//the output label is updated with the results of the quiz
		}
	}
}