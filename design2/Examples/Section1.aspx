<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.Section1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
		<div>
			<asp:Button ID="Button2" runat="server" PostBackUrl="~/Notes/Section1" Text="Back to Notes" class="button"/>
        	<br />
			<br />
			Example 1:<br />
			<br />
			There is a current of 3 amps passing through a 20 ohm resistor. How much voltage drop is across the resistor?<br />
			<br />
			Answer: 3 A * 20 Ω = <strong>60 V</strong>
			<br />
			<br />
			Example 2:<br />
			<br />
			A voltage source of 5 volts passes a current through a resistor with resistance of 50 ohms. How much current passes through the circuit?<br />
			<br />
			Answer: 5 V / 50 Ω = <strong>0.1 A</strong> (or <strong>100 mA</strong>)
			<br />
			<br />
			Example 3:<br />
			<br />
			A current of 2 amps comes from a voltage source with 10 volts. How much resistance is in the circuit?<br />
			<br />
			Answer: 10 V / 2 A = <strong>5 Ω</strong><br />
			<br />
			<br />
			<p class="header">VIR Calculator:</p><br />
			Answer rounded to this many decimal places:
			<asp:DropDownList ID="listDecimalPlaces" runat="server">
				<asp:ListItem>0</asp:ListItem>
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
				<asp:ListItem>6</asp:ListItem>
				<asp:ListItem>7</asp:ListItem>
				<asp:ListItem>8</asp:ListItem>
				<asp:ListItem>9</asp:ListItem>
				<asp:ListItem>10</asp:ListItem>
			</asp:DropDownList>
			<br />
			<br />
			<asp:TextBox ID="txtLine1Amps" runat="server" Width="60px" class="button"></asp:TextBox>
			Amps *
			<asp:TextBox ID="txtLine1Ohms" runat="server" Width="60px" class="button"></asp:TextBox>
			Ohms =
			<asp:Label ID="lblVolts" runat="server" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
&nbsp;<br />
			<br />
			<asp:TextBox ID="txtLine2Volts" runat="server" Width="60px" class="button"></asp:TextBox>
			Volts /
			<asp:TextBox ID="txtLine2Ohms" runat="server" Width="60px" class="button"></asp:TextBox>
			Ohms =
			<asp:Label ID="lblAmps" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
			&nbsp;<br />
			<br />
			<asp:TextBox ID="txtLine3Volts" runat="server" Width="60px" class="button"></asp:TextBox>
			Volts /
			<asp:TextBox ID="txtLine3Amps" runat="server" Width="60px" class="button"></asp:TextBox>
			Amps =&nbsp;
			<asp:Label ID="lblOhms" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
			&nbsp;<br />
			<br />
			<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
			<br />
			<br />
        </div>
		<br />
		Note: This calculator automatically adjusts units based on the values. For example, if current is larger than
		<br />
		1 amp, it gives the answer in amps, but if current is smaller than 1 amp, it gives the answer in milliamps.<br />
		So, when you&#39;re using this calculator, make sure you copy the correct unit or you&#39;ll have the wrong answer.
</asp:Content>
