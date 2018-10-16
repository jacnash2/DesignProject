using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.ee206
{
	public partial class Ch1Quiz : System.Web.UI.Page
	{
		int correct=0;

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (RadioButtonList1.SelectedValue == "A") correct++;


			if (RadioButtonList1.SelectedValue == "A")
			{
				TextBox3.Text = "\u2713";
				TextBox3.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				TextBox3.Text = "x";
				TextBox3.ForeColor = System.Drawing.Color.DarkRed;
			}
			if (TextBox2.Text.Trim() == "B" || TextBox2.Text.Trim() == "b")
			{
				TextBox4.Text = "\u2713";
				TextBox4.ForeColor = System.Drawing.Color.Green;
				correct++;
			}
			else
			{
				TextBox4.Text = "x";
				TextBox4.ForeColor = System.Drawing.Color.DarkRed;
			}
			TextOutput.Text = correct + " correct out of " + 2 + " questions";
		}

		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff)
			{
				this.Theme = "DarkMode";
				Button4.Text = "Turn Dark Mode Off";
			}
			else
			{
				this.Theme = "LightMode";
				Button4.Text = "Turn Dark Mode On";

			}
		}

		protected void Button4_Click1(object sender, EventArgs e)
		{
			if (Styles.DarkModeIsOff) Styles.DarkModeIsOff = false;
			else Styles.DarkModeIsOff = true;
			Response.Redirect(Request.RawUrl);
		}
	}
}