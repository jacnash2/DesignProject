using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	//This class only exists right now for the dark/light mode toggle. 
	//We needed a static variable on an extra class for it to work.
	public class Styles
	{
		//This boolean keeps track of which mode is on (dark or light).
		public static bool DarkModeIsOff { get; set; }
	}
}