using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public class Quiz4
	{
		public static int _q1v1, _q1v2, _q1v4;
		public static double _q3v0, _q3r1, _q3r2, _q3r3, _q7vin, _q7r1, _q7r2;
		public static int Q1V1
		{
			get { return _q1v1; }
			set { _q1v1 = value; }
		}
		public static int Q1V2
		{
			get { return _q1v2; }
			set { _q1v2 = value; }
		}
		public static int Q1V4
		{
			get { return _q1v4; }
			set { _q1v4 = value; }
		}
		public static double Q3V0
		{
			get { return _q3v0; }
			set { _q3v0 = value; }
		}
		public static double Q3R1
		{
			get { return _q3r1; }
			set { _q3r1 = value; }
		}
		public static double Q3R2
		{
			get { return _q3r2; }
			set { _q3r2 = value; }
		}
		public static double Q3R3
		{
			get { return _q3r3; }
			set { _q3r3 = value; }
		}
		public static double Q7Vin
		{
			get { return _q7vin; }
			set { _q7vin = value; }
		}
		public static double Q7R1
		{
			get { return _q7r1; }
			set { _q7r1 = value; }
		}
		public static double Q7R2
		{
			get { return _q7r2; }
			set { _q7r2 = value; }
		}
		public static int Q1ans
		{
			get { return _q1v1 - _q1v2; }
		}
		public static int Q2ans
		{
			get { return Q1ans - _q1v4; }
		}
	}
}