using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace design2.Quiz
{
	public partial class Section2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		int correct = 0;

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (RadioButtonList1.SelectedValue == "54.545Ω")
			{
				Label1.Text = "\u2713";
				Label1.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else if (TextBox1.Text.Trim() == "54.545" || TextBox1.Text.Trim() == "54.55" || TextBox1.Text.Trim() == "54.5" || TextBox1.Text.Trim() == "55")
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
			if (RadioButtonList3.SelectedValue == "600Ω")
			{
				Label2.Text = "\u2713";
				Label2.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else if (TextBox3.Text.Trim() == "600")
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
			LabelOutput.Text = correct + " questions correct out of " + 2;
		}
	}
}