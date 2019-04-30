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
		//code executed before page is initialized. chooses the .css that's used for the page.
		//to disable DarkMode, use the following commented out code instead:
/*		public void Page_PreInit()
		{
			this.Theme = "LightMode";
		}*/
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}

		//code executed after page is initialized. This is a good place to set default values of things.
		public void Page_InitComplete()
		{
			//default value for the dropdownlist
			listDecimalPlaces.SelectedValue = "3";
		}

		//method for calculating the volts, using user inputted values in the text boxes
		protected void calculateVolts()
		{
			//first parses this to make sure the textbox can be converted to a double
			//converts the textbox's value to a double and saves it to variable "amps"
			//it if fails validation, it outputs an error message
			Double.TryParse(txtLine1Amps.Text, out double amps);
			//converts the textbox's value to a double and saves it to variable "ohms"
			Double.TryParse(txtLine1Ohms.Text, out double ohms);
			double volts = amps * ohms;//calculates the answer
			//now, decide if the answer should be displayed as mV or V
			if (volts < 1) lblVolts.Text = Math.Round((volts * 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " mV";
			else lblVolts.Text = Math.Round(volts, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " V";
		}

		protected void calculateAmps()
		{
			Double.TryParse(txtLine2Ohms.Text, out double ohms);
			Double.TryParse(txtLine2Volts.Text, out double volts);
			double amps = volts / ohms;
			if (amps < 1) lblAmps.Text = Math.Round((amps * 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " mA";
			else lblAmps.Text = Math.Round(amps, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " A";
		}

		protected void calculateOhms()
		{
			//parse first, save the values as doubles
			Double.TryParse(txtLine3Amps.Text, out double amps);
			Double.TryParse(txtLine3Volts.Text, out double volts);
			//calculate answer
			double ohms = volts / amps;
			//decide if it should be displayed as Ohms or KOhms
			//then displays the answer
			if (ohms > 10000) lblOhms.Text = Math.Round((ohms / 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " kΩ";
			else lblOhms.Text = Math.Round(ohms, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " Ω";
		}

		//this code is executed with the submit button is clicked
		protected void Button4_Click(object sender, EventArgs e)
		{
			//if either of the values are empty, it doesn't bother with calculation
			//calculateVolts() calls the method above
			if (!txtLine1Amps.Text.Equals("")&& (!txtLine1Ohms.Text.Equals(""))) calculateVolts();
			if (!txtLine2Volts.Text.Equals("") && (!txtLine2Ohms.Text.Equals(""))) calculateAmps();
			if (!txtLine3Volts.Text.Equals("") && (!txtLine3Amps.Text.Equals(""))) calculateOhms();
		}
	}
}