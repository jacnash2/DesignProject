using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace design2.Examples
{
	public partial class Section3 : System.Web.UI.Page
	{
		//Inputted or calculated values for each current on the diagram.
		double[] I = new double[8];
		//Ival lets you know whether a value I[#] is valid.
		bool[] Ival = new bool[8];
		public void Page_PreInit()
		{
			this.Theme = "LightMode";
		}

		protected void Page_Load(object sender, EventArgs e)
		{
		}
		protected void ButtonSubmit_Click(object sender, EventArgs e)
		{
			if (Double.TryParse(TextBox1.Text, out I[1])) Ival[1] = true;
			else Ival[1] = false;
			if (Double.TryParse(TextBox2.Text, out I[2])) Ival[2] = true;
			else Ival[2] = false;
			if (Double.TryParse(TextBox3.Text, out I[3])) Ival[3] = true;
			else Ival[3] = false;
			if (Double.TryParse(TextBox4.Text, out I[4])) Ival[4] = true;
			else Ival[4] = false;
			if (Double.TryParse(TextBox5.Text, out I[5])) Ival[5] = true;
			else Ival[5] = false;
			if (Double.TryParse(TextBox6.Text, out I[6])) Ival[6] = true;
			else Ival[6] = false;
			if (Double.TryParse(TextBox7.Text, out I[7])) Ival[7] = true;
			else Ival[7] = false;
			if (Double.TryParse(TextBoxS.Text, out I[0])) Ival[0] = true;//Is
			else Ival[0] = false;

			for (int i = 0; i < 6; i++)
			{
				if (!Ival[1])
				{
					Label1.Text = "Could not calculate a value for I1";//if it can calculate I1, this will be overwritten by something else
					//I1 = Is - I4 = I2 + I3
					if (Ival[0] && Ival[4])
					{
						I[1] = I[0] - I[4];
						Ival[1] = true;
						TextBox1.Text = I[1].ToString();
						Label1.Text = "Calulated from Is - I4";
					}
					if (Ival[2] && Ival[3])
					{
						double temp = I[2] + I[3];
						if (Ival[1] && temp != I[1]) Label1.Text = "Error calculating I1. (Is - I4) should be equal to (I2 + I3). Using the value from (Is - I4).";
						else
						{
							Label1.Text = "Calculated from I2 + I3";
							I[1] = temp;
							Ival[1] = true;
							TextBox1.Text = I[1].ToString();
						}
					}
				}
				if (!Ival[2])
				{
					Label2.Text = "Could not calculate a value for I2";//if it can calculate I1, this will be overwritten by something else
					//I2 = I1 - I3 = I7 - I5
					if (Ival[1] && Ival[3])
					{
						I[2] = I[1] - I[3];
						Ival[2] = true;
						TextBox2.Text = I[2].ToString();
						Label2.Text = "Calculated from I1 - I3";
					}
					if (Ival[7] && Ival[5])
					{
						double temp = I[7] - I[5];
						if (Ival[2] && temp != I[2]) Label2.Text = "Error calculating I2. (I1 - I3) should be equal to (I7 - I5). Using the result from (I1 - I3).";
						else
						{
							Label2.Text = "Calculated from I7 - I5";
							I[2] = temp;
							Ival[2] = true;
							TextBox2.Text = I[2].ToString();
						}
					}
				}
				if (!Ival[3])
				{
					Label3.Text = "Could not calculate a value for I3";//if it can calculate I1, this will be overwritten by something else
					//I3 = I1 - I2 = I5 + I6 - I4
					if (Ival[1] && Ival[2])
					{
						I[3] = I[1] - I[2];
						Ival[3] = true;
						TextBox3.Text = I[3].ToString();
						Label3.Text = "Calculated from I1 - I2";
					}
					if (Ival[5] && Ival[6] && Ival[4])
					{
						double temp = I[5] + I[6] - I[4];
						if (Ival[3] && temp != I[3]) Label3.Text = "Error calculating I3. (I1 - I2) should be equal to (I5 + I6 - I4). Using the value from (I1 - I2).";
						else
						{
							I[3] = temp;
							Label3.Text = "Calculated from I5 + I6 - I4";
							Ival[3] = true;
							TextBox3.Text = I[3].ToString();
						}
					}
				}
				if (!Ival[4])
				{
					Label4.Text = "Could not calculate a value for I4";//if it can calculate I1, this will be overwritten by something else
					//I4 = Is - I1 = I5 + I6 - I3
					if (Ival[0] && Ival[1])
					{
						I[4] = I[0] - I[1];
						Ival[4] = true;
						TextBox4.Text = I[4].ToString();
						Label4.Text = "Calculated from Is - I1";
					}
					if (Ival[5] && Ival[6] && Ival[3])
					{
						double temp = I[5] + I[6] - I[3];
						if (Ival[4] && temp != I[4]) Label4.Text = "Error calculating I4. (Is - I1) should be equal to (I5 + I6 - I3). Using the value from (Is - I1).";
						else
						{
							I[4] = temp;
							Label4.Text = "Calculated from I5 + I6 - I3";
							Ival[4] = true;
							TextBox4.Text = I[4].ToString();
						}
					}
				}
				if (!Ival[5])
				{
					Label5.Text = "Could not calculate a value for I5";//if it can calculate I1, this will be overwritten by something else
					//I5 = I3 + I4 - I6 = I7 - I2
					if (Ival[3] && Ival[4] && Ival[6])
					{
						I[5] = I[3] + I[4] - I[6];
						Ival[5] = true;
						TextBox5.Text = I[5].ToString();
						Label5.Text = "Calculated from (I3 + I4 - I6)";
					}
					if (Ival[7] && Ival[2])
					{
						double temp = I[7] - I[2];
						if (Ival[5] && temp != I[5]) Label5.Text = "Error calculating I5. (I3 + I4 - I6) should be equal to (I7 - I2). Using the value from (I3 + I4 - I6).";
						else
						{
							I[5] = temp;
							Label5.Text = "Calculated from (I7 - I2)";
							Ival[5] = true;
							TextBox5.Text = I[5].ToString();
						}
					}
				}
				if (!Ival[6])
				{
					Label6.Text = "Could not calculate a value for I6";//if it can calculate I1, this will be overwritten by something else
					//I6 = I3 + I4 - I5
					if (Ival[3] && Ival[4] && Ival[5])
					{
						I[6] = I[3] + I[4] - I[5];
						Ival[6] = true;
						TextBox6.Text = I[6].ToString();
						Label6.Text = "Calculated from (I3 + I4 - I5)";
					}
				}
				if (!Ival[7])
				{
					Label7.Text = "Could not calculate a value for I7";//if it can calculate I1, this will be overwritten by something else
					//I7 = I2 + I5
					if (Ival[2] && Ival[5])
					{
						I[7] = I[2] + I[5];
						Ival[7] = true;
						TextBox7.Text = I[7].ToString();
						Label7.Text = "Calculated from (I2 + I5)";
					}
				}
				if (!Ival[0])//Is
				{
					LabelS.Text = "Could not calculate a value for Is";//if it can calculate I1, this will be overwritten by something else
					//Is = I1 + I4
					if (Ival[1] && Ival[4])
					{
						I[0] = I[1] + I[4];
						Ival[0] = true;
						TextBoxS.Text = I[0].ToString();
						LabelS.Text = "Calculated from (I1 + I4)";
					}
				}
			}
		}
	}
}