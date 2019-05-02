using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{		
			Label2.ForeColor = System.Drawing.Color.Black;
			Label3.ForeColor = System.Drawing.Color.Black;
		}
		public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff) this.Theme = "DarkMode";
			else this.Theme = "LightMode";
		}
	}
}