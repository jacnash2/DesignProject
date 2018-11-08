<%@ Page Title="Circuit Variables and Elements" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.Notes.Section1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
	<br />
</p>
<p>
		In circuit analysis, the following abbreviations are used frequently:<br />
		<br />V = voltage<br />
		I = current<br />
		R = resistance<br />
		<br />
		Voltage is measured in volts (V).<br />
		Current is measured in amps (A).<br />
		Resistance is measured in ohms (Ω).<br />
		<br />
		With low amounts of current and high amounts of resistance, milliamps (mA) and kiloohms (Ω) are often used instead of regular amps and ohms.<br />
		<br />
		The relation of voltage, current, and resistance is shown in the following equation:<br />
		<br />
		<strong>V = I * R<br />
		<br />
		</strong>Current and resistance are inversely proportional, meaning that when the value for one (either current or resistance) goes up, then the value of the other must go down as long as voltage remains unchanged. Voltage is directly proportional to both current and resistance, so when voltage increases, either current or resistance must also increase.<br />
		<br />
		Through algebra, the equation can be manipulated to find the current or resistance with the next equations:<br />
		<br />
		<strong>I = V / R</strong><br />
		<br />
		<strong>R = V / I</strong><br />
		<br />
		These three equations are used constantly during circuit analysis, so it is highly recommended that you memorize them so you don&#39;t have to constantly look them up and so you don&#39;t get them mixed up. If you are good with algebra, you should be able to just memorize one of them and then manipulate it to suit the problem you are currently working on.</p>
<p>
	<asp:Button ID="Button2" runat="server" Text="Example Problems"  class="button" PostBackUrl="/Examples/Section1" padding="2px"/>
	<asp:Button ID="Button3" runat="server" Text="Next Chapter"  class="button" PostBackUrl="Section2" padding ="2px"/>
</p>
</asp:Content>
