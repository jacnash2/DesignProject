﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public static class Quiz1
	{
		private static double _q3Vin, _q3R;
		public static int _q4Volts, _q4mA;
		public static int Q4Volts
		{
			get { return _q4Volts; }
			set { _q4Volts = value; }
		}
		public static int Q4mA
		{
			get { return _q4mA; }
			set { _q4mA = value; }
		}
		public static int Q4ans
		{
			get { return _q4Volts * 1000 / _q4mA; }
		}
		//returns an array of acceptable answers (size 2)
		public static int[] Q5ans
		{
			get
			{
				int[] Q5ans = new int[2];
				Q5ans[0] = Q4mA * Q4ans / 200;//smallest acceptable answer
				Q5ans[1] = Q4mA * (Q4ans + 1) / 200;//largest acceptable answer
				return Q5ans;
			}
		}
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
		//This is currently not used. Finds the greatest integer less than or equal to the answer. Could be useful for finding a range of correct answers.
		public static double Q3ansFloor
		{
			get {
				if (Q3ans > 1) return Math.Floor(Q3ans);
				else if (Q3ans > 0.1) return (Math.Floor(Q3ans * 10) / 10);
				else if (Q3ans > 0.01) return (Math.Floor(Q3ans * 100) / 100);
				else return (Math.Floor(Q3ans * 1000) / 1000);
			}
		}
		//This is currently not used. Finds the lowest integer greater than or equal to the answer. Could be useful for finding a range of correct answers.
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
		//This rounds the answer to 2 significant figures. Currently only works for values from 0.0001 to 10
		public static double Q3ansRounded
		{
			get
			{
				if (Q3ans > 1) return Math.Round(Q3ans, 1, MidpointRounding.AwayFromZero);
				else if (Q3ans > 0.1) return Math.Round(Q3ans, 2, MidpointRounding.AwayFromZero);
				else if (Q3ans > 0.01) return Math.Round(Q3ans, 3, MidpointRounding.AwayFromZero);
				else if (Q3ans > 0.001) return Math.Round(Q3ans, 4, MidpointRounding.AwayFromZero);
				else return Math.Round(Q3ans, 5, MidpointRounding.AwayFromZero);
			}
		}
	}
}