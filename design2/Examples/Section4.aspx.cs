using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace design2.Examples
{
	public partial class Section4 : System.Web.UI.Page
	{
		//i made these size 11 instead of size 10 because I wanted the index number to correspond to the number on the diagram
		//yes, that means index 0 is unused.
		//Inputted or calculated values for each voltage on the diagram.
		double[] V = new double[11];
		//Ival lets you know whether a value I[#] is valid.
		bool[] Vval = new bool[11];

		public void Page_PreInit()
		{
			this.Theme = "LightMode";
		}

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Double.TryParse(TextBox1.Text, out V[1])) Vval[1] = true;
			else Vval[1] = false;
			if (Double.TryParse(TextBox2.Text, out V[2])) Vval[2] = true;
			else Vval[2] = false;
			if (Double.TryParse(TextBox3.Text, out V[3])) Vval[3] = true;
			else Vval[3] = false;
			if (Double.TryParse(TextBox4.Text, out V[4])) Vval[4] = true;
			else Vval[4] = false;
			if (Double.TryParse(TextBox5.Text, out V[5])) Vval[5] = true;
			else Vval[5] = false;
			if (Double.TryParse(TextBox6.Text, out V[6])) Vval[6] = true;
			else Vval[6] = false;
			if (Double.TryParse(TextBox7.Text, out V[7])) Vval[7] = true;
			else Vval[7] = false;
			if (Double.TryParse(TextBox8.Text, out V[8])) Vval[8] = true;
			else Vval[8] = false;
			if (Double.TryParse(TextBox9.Text, out V[9])) Vval[9] = true;
			else Vval[9] = false;
			if (Double.TryParse(TextBox10.Text, out V[10])) Vval[10] = true;
			else Vval[10] = false;

			for (int i = 0; i < 7; i++)
			{
				if (!Vval[1])
				{
					Label1.Text = "Could not calculate a value for V1";
					//V1=V2+V3-V6
					if (Vval[2] && Vval[3] && Vval[6])
					{
						V[1] = V[2] + V[3] - V[6];
						Vval[1] = true;
						TextBox1.Text = V[1].ToString();
						Label1.Text = "Calculated from V1 = V2 + V3 - V6";
					}
				}
				if (!Vval[2])
				{
					Label2.Text = "Could not calculate a value for V2";
					if (Vval[1] && Vval[3] && Vval[6])
					{
						V[2] = V[1] - V[3] + V[6];
						Vval[2] = true;
						TextBox2.Text = V[2].ToString();
						Label2.Text = "Calculated from V2 = V1 - V3 + V6";
					}
				}
				if (!Vval[3])
				{
					Label3.Text = "Could not calculate a value for V3";
					if (Vval[1] && Vval[2] && Vval[6])
					{
						V[3] = V[1] - V[2] + V[6];
						Vval[3] = true;
						TextBox3.Text = V[3].ToString();
						Label3.Text = "Calculated from V3 = V1 - V2 + V6";
					}
					if (Vval[4] && Vval[5] && Vval[9])
					{
						//V3 = V4 + V5 - V9
						double temp = V[4] + V[5] - V[9];
						if (Vval[3] && temp != V[3]) Label3.Text = "Error calculating V3. (V4 + V5 - V9) should be equal to (V1 - V2 + V6). Using the value from (V4 + V5 - V9).";
						else
						{
							V[3] = temp;
							Label3.Text = "Calculated from V3 = V4 + V5 - V9";
							Vval[3] = true;
							TextBox3.Text = V[3].ToString();
						}
					}
				}
				if (!Vval[4])
				{
					Label4.Text = "Could not calculate a value for V4";
					if (Vval[3] && Vval[5] && Vval[9])
					{
						V[4] = V[3] - V[5] + V[9];
						Label4.Text = "Calculated from V4 = V3 - V5 + V9";
						TextBox4.Text = V[4].ToString();
						Vval[4] = true;
					}
				}
				if (!Vval[5])
				{
					Label5.Text = "Could not calculate a value for V5";
					if (Vval[3] && Vval[4] && Vval[9])
					{
						V[5] = V[3] - V[4] + V[9];
						Label5.Text = "Calculated from V5 = V3 + V9 - V4";
						TextBox5.Text = V[5].ToString();
						Vval[5] = true;
					}
				}
				if (!Vval[6])
				{
					Label6.Text = "Could not calculate a value for V6";
					if (Vval[1] && Vval[2] && Vval[3])
					{
						V[6] = V[2] + V[3] - V[1];
						Vval[6] = true;
						TextBox6.Text = V[6].ToString();
						Label6.Text = "Calculated from V6 = V2 + V3 - V1";
					}
					if (Vval[7] && Vval[8])
					{
						double temp = V[7] - V[8];
						if (Vval[6] && temp != V[6]) Label6.Text = "Error calculating V6. (V7 - V8) should be equal to (V2 + V3 - V1). Using the value from (V2 + V3 - V1).";
						else
						{
							V[6] = temp;
							Vval[6] = true;
							TextBox6.Text = V[6].ToString();
							Label6.Text = "Calculated from V6 = V7 - V8";
						}
					}
				}
				if (!Vval[7])
				{
					Label7.Text = "Could not calculate a value for V7";
					if (Vval[6] && Vval[8])
					{
						V[7] = V[6] + V[8];
						Label7.Text = "Calculated from V7 = V6 + V8";
						TextBox7.Text = V[7].ToString();
						Vval[7] = true;
					}
				}
				if (!Vval[8])
				{
					Label8.Text = "Could not calculate a value for V8";
					if (Vval[6] && Vval[7])
					{
						V[8] = V[7] - V[6];
						Label8.Text = "Calculated from V8 = V7 - V6";
						TextBox8.Text = V[8].ToString();
						Vval[8] = true;
					}
					if (Vval[9] && Vval[10])
					{
						double temp = V[9] + V[10];
						if (Vval[8] && temp != V[8]) Label8.Text = "Error calculating V8. (V7 - V6) should be equal to (V9 + V10). Using the value from (V7 - V6).";
						else
						{
							V[8] = temp;
							Label8.Text = "Calculated from V8 = V9 + V10";
							TextBox8.Text = V[8].ToString();
							Vval[8] = true;
						}
					}
				}
				if (!Vval[9])
				{
					Label9.Text = "Could not calculate a value for V9";
					if (Vval[3] && Vval[4] && Vval[5])
					{
						V[9] = V[4] + V[5] - V[3];
						Label9.Text = "Calculated from V9 = V4 + V5 - V3.";
						TextBox9.Text = V[9].ToString();
						Vval[9] = true;
					}
					if (Vval[8] && Vval[10])
					{
						double temp = V[8] - V[10];
						if (Vval[9] && temp != V[9]) Label9.Text = "Error calculating V9. (V4 + V5 - V3) should be equal to (V8 - V10). Using the value from (V4 + V5 - V3).";
						else
						{
							V[9] = temp;
							Label9.Text = "Calculated from V9 = V8 - V10";
							TextBox9.Text = V[9].ToString();
							Vval[9] = true;
						}
					}
				}
				if (!Vval[10])
				{
					Label10.Text = "Could not calculate a value for V10";
					if (Vval[8] && Vval[9])
					{
						V[10] = V[8] - V[9];
						Label10.Text = "Calculated from V10 = V8 - V9";
						TextBox10.Text = V[10].ToString();
						Vval[10] = true;
					}
				}
			}
		}
	}
}