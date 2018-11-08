using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.Notes
{
	public partial class Section1 : System.Web.UI.Page
	{
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Styles.DarkModeIsOff) Styles.DarkModeIsOff = false;
			else Styles.DarkModeIsOff = true;
			//refresh page
			Response.Redirect(Request.RawUrl);
		}
	}
}