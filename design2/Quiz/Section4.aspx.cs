using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace design2.Quiz
{
	public partial class Section4 : System.Web.UI.Page
	{
		Random rand = new Random();
		int q1v1, q1v2, q1v4;
		double q3v0, q3r1, q3r2, q3r3, q7vin, q7r1, q7r2;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				//questions 1 and 2
				q1v1 = rand.Next(20);//0 to 20 V
				q1v2 = rand.Next(20);//0 to 20 V
				q1v4 = rand.Next(20);//0 to 20 V
				lblQ1V1.Text = q1v1.ToString();
				lblQ1V2.Text = q1v2.ToString();
				lblQ1V4.Text = q1v4.ToString();

				//questions 4 through 6
				q3v0 = rand.Next(20) + 1;//1 to 20 V
				q3r1 = (rand.Next(20) + 1) * 10;//10 to 200 Ohms
				q3r1 = (rand.Next(20) + 1) * 10;//10 to 200 Ohms
				q3r2 = (rand.Next(20) + 1) * 10;//10 to 200 Ohms
				lblQ3Vo.Text = q3v0.ToString();
				lblQ3R1.Text = q3r1.ToString();
				lblQ3R2.Text = q3r2.ToString();
				lblQ3R3.Text = q3r3.ToString();

				//questions 7 and 8
				q7vin = rand.Next(20) + 1;//1 to 20 V
				q7r1 = (rand.Next(20) + 1) * 10;//10 to 200 Ohms
				q7r2 = (rand.Next(20) + 1) * 10;//10 to 200 Ohms
				lblQ7Vin.Text = q7vin.ToString();
				lblQ7R1.Text = q7r1.ToString();
				lblQ7R2.Text = q7r2.ToString();
			}
		}
	}
}