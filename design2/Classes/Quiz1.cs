using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public static class Quiz1
	{
		private static double _q3Vin, _q3R;
		public static double Q3Vin {
			get { return _q3Vin; }
			set { _q3Vin = value; }
		}
		public static double Q3R
		{
			get { return _q3R; }
			set { _q3R = value; }
		}
		public static double Q3ans
		{
			get { return _q3Vin / _q3R; }
		}
		public static double Q3ansFloor
		{
			get {
				if (Q3ans > 1) return Math.Floor(Q3ans);
				else if (Q3ans > 0.1) return (Math.Floor(Q3ans * 10) / 10);
				else if (Q3ans > 0.01) return (Math.Floor(Q3ans * 100) / 100);
				else return (Math.Floor(Q3ans * 1000) / 1000);
			}
		}
		public static double Q3ansCeiling
		{
			get
			{
				if (Q3ans > 1) return Math.Ceiling(Q3ans);
				else if (Q3ans > 0.1) return (Math.Ceiling(Q3ans * 10) / 10);
				else if (Q3ans > 0.01) return (Math.Ceiling(Q3ans * 100) / 100);
				else return (Math.Ceiling(Q3ans * 1000) / 1000);
			}
		}
	}
}