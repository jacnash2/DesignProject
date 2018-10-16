using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.ee206
{
	public partial class Chapter7 : System.Web.UI.Page
	{
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

		protected void Button3_Click(object sender, EventArgs e)
		{
			if (Styles.DarkModeIsOff) Styles.DarkModeIsOff = false;
			else Styles.DarkModeIsOff = true;
			Response.Redirect(Request.RawUrl);
		}
	}
}