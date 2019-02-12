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
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		int correct = 0;

		protected void Button1_Click1(object sender, EventArgs e)
		{
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
			LabelOutput.Text = correct + " correct out of " + 4;
		}
	}
}