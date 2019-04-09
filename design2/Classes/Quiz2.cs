using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public class Quiz2
	{
		public static int _q1r1, _q1r2, _q1r3;
		public static double _q2r1, _q2r2, _q2r3, _q4r1, _q4r2, _q4r3, _q4r4, _q4r5, _q4r6;
		public static int Q1R1
		{
			get { return _q1r1; }
			set { _q1r1 = value; }
		}
		public static int Q1R2
		{
			get { return _q1r2; }
			set { _q1r2 = value; }
		}
		public static int Q1R3
		{
			get { return _q1r3; }
			set { _q1r3 = value; }
		}
		public static double Q2R1
		{
			get { return _q2r1; }
			set { _q2r1 = value; }
		}
		public static double Q2R2
		{
			get { return _q2r2; }
			set { _q2r2 = value; }
		}
		public static double Q2R3
		{
			get { return _q2r3; }
			set { _q2r3 = value; }
		}
		public static double Q4R1
		{
			get { return _q4r1; }
			set { _q4r1 = value; }
		}
		public static double Q4R2
		{
			get { return _q4r2; }
			set { _q4r2 = value; }
		}
		public static double Q4R3
		{
			get { return _q4r3; }
			set { _q4r3 = value; }
		}
		public static double Q4R4
		{
			get { return _q4r4; }
			set { _q4r4 = value; }
		}
		public static double Q4R5
		{
			get { return _q4r5; }
			set { _q4r5 = value; }
		}
		public static double Q4R6
		{
			get { return _q4r6; }
			set { _q4r6 = value; }
		}
		public static int Q1ans
		{
			get { return _q1r1 + _q1r2 + _q1r3; }
		}
		public static int Q2ans
		{
			get { return Convert.ToInt16(1 / ((1 / _q2r1) + (1 / _q2r2) + (1 / _q2r3))); }
		}
		public static int Q4ans
		{
			get { return Convert.ToInt16(1 / ((1 / _q4r1) + (1 / _q4r2) + (1 / _q4r3))); }
		}
		public static int Q5ans
		{
			get { return Convert.ToInt16(1 / ((1 / _q4r5) + (1 / (_q4r4 + _q4r6)))); }
		}
		public static int Q6ans
		{
			get { return Q4ans + Q5ans; }
		}
	}
}