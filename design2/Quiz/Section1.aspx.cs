using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Styles.DarkModeIsOff) LabelDarkMode.Text = "Dark mode does not apply to quiz pages.";
		}

		int correct = 0;

		protected void Button1_Click1(object sender, EventArgs e)
		{
			if (RadioButtonList1.SelectedValue == "A")
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
			if (TextBox1.Text.Trim() == "B" || TextBox1.Text.Trim() == "b")
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
			LabelOutput.Text = correct + " correct out of " + 2 + " questions";
		}
	}
}