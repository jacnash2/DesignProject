<%@ Page Title="Section 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		<asp:Button ID="Button4" runat="server" PostBackUrl="Section1" Text="Last Section" class="button"/>
	<br />
</p>
		<p>
			<span class="header">Resistors in Series</span></p>
		<p>
			Having resistors in series means that there are multiple resistors next to each other on the same wire. When there are resistors in series, their equivalent resistance is equal to each of their resistances added together. So, having several resistors next to each other is like having only one resistor with a larger value of resistance.</p>
		<p>
			Note that if two resistors are on the same wire, but there is another wire branching off in between them, they are not in series. There are pictures illustrating this in the example problems section.</p>
		<p>
			Also, two resistors can be on completely different parts of a long wire, very far from each other, but if there are no other wires branching off the main wire, they are still in series. There are pictures illustrating this in the example problems section.</p>
		<p>
			If R<sub>1</sub>, R<sub>2</sub>, and R<sub>3</sub> are all in series, letting R<sub>eq</sub> be their equivalent resistance, we have the following equation to find Req:</p>
		<p>
			R<sub>eq</sub> = R<sub>1</sub> + R<sub>2</sub> + R<sub>3</sub></p>
		<p>
			It's very easy to work with resistors in series. The hardest part is just recognizing when resistors are in series and when they actually are not. Now, for something a little less easy: resistors in parallel.</p>
		<p>
			</p>
		<p class="header">
			Resistors in Parallel</p>
		<p>
			Having resistors in parallel means that there are multiple resistors that are across from each other on different wires, which are in parallel on the circuit. When there are resistors in parallel, their equivalent resistance is equal to the inverse of the inverses of each resistor added together. In other words, take 1 divided by each resistor and add all of the values together. Then, take 1 again and divide it by the sum of that.</p>
		<p>
			If R<sub>1</sub>, R<sub>2</sub>, and R<sub>3</sub> are all in parallel, letting R<sub>eq</sub> be their equivalent resistance, we have the following equation to find Req:</p>
		<p>
			R<sub>eq</sub> = 1 / ( 1 / R<sub>1</sub> + 1 / R<sub>2</sub> + 1 / R<sub>3</sub> )</p>
		<p>
			</p>
	<p>
	<asp:Button ID="Button2" runat="server" Text="Example Problems"  class="button" PostBackUrl="/Examples/Section2" padding="2px"/>
	<asp:Button ID="Button3" runat="server" Text="Next Chapter"  class="button" PostBackUrl="Section3" padding ="2px"/>
</p>
</asp:Content>
