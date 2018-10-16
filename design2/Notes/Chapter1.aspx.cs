using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using design2.Classes;

namespace design2.pages
{
	public partial class Chapter1 : System.Web.UI.Page
	{
		//search bar code: if(form1.InnerText.Contains("Hi"));

	  public void Page_PreInit()
		{
			if (Styles.DarkModeIsOff)
			{
				this.Theme = "DarkMode";
				Button3.Text = "Turn Dark Mode Off";
			}
			else
			{
				this.Theme = "LightMode";
				Button3.Text = "Turn Dark Mode On";
			}
		} 

		protected void Button3_Click(object sender, EventArgs e)
		{
			if (Styles.DarkModeIsOff) Styles.DarkModeIsOff = false;
			else Styles.DarkModeIsOff = true;
			//refresh page
			Response.Redirect(Request.RawUrl);
		}
	}
}