using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class Section2 : System.Web.UI.Page
	{
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}

		public void Page_InitComplete()
		{
			DropDownList1.SelectedValue = "3";
		}

		double Req;//equivalent resistance
		double Req2;

		protected void Button3_Click(object sender, EventArgs e)
		{
			Req = Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox2.Text) + Convert.ToDouble(TextBox3.Text);
			Req = Math.Round(Req, Convert.ToInt16(DropDownList1.SelectedValue), MidpointRounding.AwayFromZero);
			Label1.Text = "Req = " + TextBox1.Text + " + " + TextBox2.Text + " + " + TextBox3.Text + " = " + Req.ToString() + "Ω";
		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			Req2 = 1 / (1 / Convert.ToDouble(TextBox4.Text) + (1 / Convert.ToDouble(TextBox5.Text)) + (1 / Convert.ToDouble(TextBox6.Text)));
			Req2 = Math.Round(Req2, Convert.ToInt16(DropDownList1.SelectedValue), MidpointRounding.AwayFromZero);
			Label2.Text = "Req = 1 / (" + TextBox4.Text + " + " + TextBox5.Text + " + " + TextBox6.Text + ") = " + Req2.ToString() + "Ω";
		}
	}
}