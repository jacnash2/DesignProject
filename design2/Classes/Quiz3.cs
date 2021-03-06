﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public class Quiz3
	{
		public static double _q1is, _q4i2, _q4i3, _q4i4, _q4i6, _q2is, _q2r1, _q2r2, _q2r3;
		public static int _q1vo, _q1r1, _q1r2;
		public static double Q2IS
		{
			get { return _q2is; }
			set { _q2is = value; }
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
		public static int Q1VO
		{
			get { return _q1vo; }
			set { _q1vo = value; }
		}
		public static double Q1IS
		{
			get { return _q1is; }
			set { _q1is = value; }
		}
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
		public static double Q4I2
		{
			get { return _q4i2; }
			set { _q4i2 = value; }
		}
		public static double Q4I3
		{
			get { return _q4i3; }
			set { _q4i3 = value; }
		}
		public static double Q4I4
		{
			get { return _q4i4; }
			set { _q4i4 = value; }
		}
		public static double Q4I6
		{
			get { return _q4i6; }
			set { _q4i6 = value; }
		}
		//returns the answer in mA
		public static int Q1ans
		{
			get { return 1000 * _q1vo / _q1r1; }
		}
		//returns the answer in mA
		public static int Q2ans
		{
			get { return Convert.ToInt16((_q1is * 1000) - Q1ans); }
		}
		//returns the answer in Ohms
		public static int Q3ans
		{
			get { return (1000 * _q1vo / Q2ans) - _q1r2; }
		}
		public static double Q4ans
		{
			get { return Math.Round(_q2is * (_q2r2 + _q2r3) / (_q2r1 + _q2r2 + _q2r3), 3, MidpointRounding.AwayFromZero); }
		}
		public static double Q5ans
		{
			get { return Math.Round(_q2is * _q2r1 / (_q2r1 + _q2r2 + _q2r3), 3, MidpointRounding.AwayFromZero); }
		}
		//rounding these to prevent answers like 1.2000000001
		public static double Q6ans
		{
			get { return Math.Round(_q4i2 + _q4i3, 1, MidpointRounding.AwayFromZero); }
		}
		public static double Q7ans
		{
			get { return Math.Round(_q4i4 + Q6ans, 1, MidpointRounding.AwayFromZero); }
		}
		public static double Q8ans
		{
			get { return Math.Round(_q4i3 + _q4i4 - _q4i6, 1, MidpointRounding.AwayFromZero); }
		}
		public static double Q9ans
		{
			get { return Math.Round(_q4i2 + Q8ans, 1, MidpointRounding.AwayFromZero); }
		}
	}
}