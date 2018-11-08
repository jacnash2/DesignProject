using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}
	}
}