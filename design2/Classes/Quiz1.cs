﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace design2.Classes
{
	public static class Quiz1
	{
		//these are variables generated with random numbers
		//there values need to be saved here or else they'll be lost on page refreshes
		//they might even be lost when the submit button is pressed, so it wouldn't work at all.
		private static double _q3Vin, _q3R;
		public static int _q6Volts, _q6mA, _q7R, _Q4V, _Q4mA, _Q5Ohms, _Q5mA;
		
		//these are simple getters and setters that remember the values and pass them back to the other class
		//the formatting here is a little different than java, just follow along here and there shouldn't be problems
		public static int Q4V
		{
			get { return _Q4V; }
			set { _Q4V = value; }
		}
		public static int Q4mA
		{
			get { return _Q4mA; }
			set { _Q4mA = value; }
		}
		public static int Q5Ohms
		{
			get { return _Q5Ohms; }
			set { _Q5Ohms = value; }
		}
		public static int Q5mA
		{
			get { return _Q5mA; }
			set { _Q5mA = value; }
		}

		//here are the generated answers
		//these calculations could be done on the other page, but it's cleaner to do it on here
		//NOTE: remember to use doubles instead of ints for anything that isn't an integer answer
		//division involving integers could also result in weird answers due to integer division without rounding
		//keep that in mind when looking for answers and answer ranges
		//working with only doubles for anything involving division or decimal places is a good idea
		//also be careful with integer division upon unit conversion - if you divide by 1000, some values could be lost
		public static int Q4ans
		{
			get { return _Q4V * 1000 / _Q4mA; }
		}
		public static int Q5ans
		{
			get { return _Q5Ohms * _Q5mA / 1000; }
		}
		public static int Q7R
		{
			get { return _q7R; }
			set { _q7R = value; }
		}
		public static int Q6Volts
		{
			get { return _q6Volts; }
			set { _q6Volts = value; }
		}
		public static int Q6mA
		{
			get { return _q6mA; }
			set { _q6mA = value; }
		}
		public static int Q6ans
		{
			get { return _q6Volts * 1000 / _q6mA; }
		}
		//returns an array of acceptable answers (size 2)
		//use <= and >= to check if the user's answer is between the range
		public static int[] Q7ans
		{
			get
			{
				int[] Q7ans = new int[2];
				Q7ans[0] = Q6mA * Q6ans / _q7R;//smallest acceptable answer
				Q7ans[1] = Q6mA * (Q6ans + 1) / _q7R;//largest acceptable answer
				return Q7ans;
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