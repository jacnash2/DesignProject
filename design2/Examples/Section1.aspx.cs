using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class Section1 : System.Web.UI.Page
	{
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}
		protected void btnLine1_Click(object sender, EventArgs e)
		{
			double amps = Convert.ToDouble(txtLine1Amps.Text);
			double ohms = Convert.ToDouble(txtLine1Ohms.Text);
			double volts = amps * ohms;
			if (volts < 1) lblVolts.Text = (volts * 1000).ToString() + " mV";
			else lblVolts.Text = volts.ToString() + " V";
		}

		protected void btnLine2_Click(object sender, EventArgs e)
		{
			double ohms = Convert.ToDouble(txtLine2Ohms.Text);
			double volts = Convert.ToDouble(txtLine2Volts.Text);
			double amps = volts / ohms;
			if (amps < 1) lblAmps.Text = (amps * 1000).ToString() + " mA";
			else lblAmps.Text = amps.ToString() + " A";
		}

		protected void btnLine3_Click(object sender, EventArgs e)
		{
			double amps = Convert.ToDouble(txtLine3Amps.Text);
			double volts = Convert.ToDouble(txtLine3Volts.Text);
			double ohms = volts / amps;
			if (ohms > 10000) lblOhms.Text = (ohms / 1000).ToString() + " kΩ";
			else lblOhms.Text = ohms.ToString() + " Ω";
		}
	}
}