using design2.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace design2
{

    public partial class VIRCalculator : System.Web.UI.Page

    {
        public void Page_PreInit()
        {
            if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
            else this.Theme = "LightMode";
        }

        public void Page_InitComplete()
        {
            listDecimalPlaces.SelectedValue = "3";
        }

        protected void calculateVolts()
        {
            double amps = Convert.ToDouble(txtLine1Amps.Text);
            double ohms = Convert.ToDouble(txtLine1Ohms.Text);
            double volts = amps * ohms;
            if (volts < 1) lblVolts.Text = Math.Round((volts * 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " mV";
            else lblVolts.Text = Math.Round(volts, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " V";
        }

        protected void calculateAmps()
        {
            double ohms = Convert.ToDouble(txtLine2Ohms.Text);
            double volts = Convert.ToDouble(txtLine2Volts.Text);
            double amps = volts / ohms;
            if (amps < 1) lblAmps.Text = Math.Round((amps * 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " mA";
            else lblAmps.Text = Math.Round(amps, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " A";
        }

        protected void calculateOhms()
        {
            double amps = Convert.ToDouble(txtLine3Amps.Text);
            double volts = Convert.ToDouble(txtLine3Volts.Text);
            double ohms = volts / amps;
            if (ohms > 10000) lblOhms.Text = Math.Round((ohms / 1000), Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " kΩ";
            else lblOhms.Text = Math.Round(ohms, Convert.ToInt16(listDecimalPlaces.SelectedValue), MidpointRounding.AwayFromZero).ToString() + " Ω";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (!txtLine1Amps.Text.Equals("") && (!txtLine1Ohms.Text.Equals(""))) calculateVolts();
            if (!txtLine2Volts.Text.Equals("") && (!txtLine2Ohms.Text.Equals(""))) calculateAmps();
            if (!txtLine3Volts.Text.Equals("") && (!txtLine3Amps.Text.Equals(""))) calculateOhms();
        }
    }

}