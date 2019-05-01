<%@ Page Title="Circuit Variables and Elements: Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.Section1Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		</p>
	<p class="text-left">
		Q1. If you increase the voltage going into a circuit, what will happen to the current through the circuit?
		<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList1" runat="server" BorderStyle="Solid">
			<asp:ListItem Value="The current will remain unchanged.">The current will remain unchanged.</asp:ListItem>
			<asp:ListItem Value="The current will increase.">The current will increase.</asp:ListItem>
			<asp:ListItem Value="The current will decrease.">The current will decrease.</asp:ListItem>
			<asp:ListItem Value="The current may increase or decrease.">The current may increase or decrease.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p></p>
	<p></p>
	<p>
		</p>
	<p class="text-left">
		Q2. If you increase the resistance of a resistor across a wire, what will happen to the current across the wire?
		<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList2" runat="server" BorderStyle="Solid">
			<asp:ListItem>The current will remain unchanged.</asp:ListItem>
			<asp:ListItem>The current will increase.</asp:ListItem>
			<asp:ListItem>The current will decrease.</asp:ListItem>
			<asp:ListItem>The current may increase or decrease.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p></p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q3. Q4. and Q5</p>
	<p class="text-left">
		<img alt="" src="../Pictures/1.png" style="width: 421px; height: 372px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Voltage and resistance for Q3.</p>
	<p class="text-left">
		Vin =
		<asp:Label ID="lblVinQ3" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		R =
		<asp:Label ID="lblRQ3" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		Q3. What is the current in the above circuit?
		<asp:TextBox ID="TextBox3" runat="server" Width="76px" class="button"></asp:TextBox>
		<asp:DropDownList ID="Q3unit" runat="server" class="button">
			<asp:ListItem>A</asp:ListItem>
			<asp:ListItem>mA</asp:ListItem>
		</asp:DropDownList>
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Voltage and current for Q4.</p>
	<p class="text-left">
		Vin =
		<asp:Label ID="lblVinQ4" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		I =
		<asp:Label ID="lblCurrentQ4" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		Q4.What is the resistance in the above circuit?
		<asp:TextBox ID="TextBox4" runat="server" Width="66px" class="button"></asp:TextBox>
		<asp:DropDownList ID="Q4unit" runat="server" class="button">
			<asp:ListItem>Ω</asp:ListItem>
			<asp:ListItem>kΩ</asp:ListItem>
		</asp:DropDownList>
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Current and resistance for Q5.</p>
	<p class="text-left">
		I =
		<asp:Label ID="lblCurrentQ5" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		R =
		<asp:Label ID="lblRQ5" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		Q5. What is the voltage going in to the above circuit?
		<asp:TextBox ID="TextBox5" runat="server" Width="60px" class="button"></asp:TextBox>
		V&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
	</p>
	<p>
		</p>
	<p>
		</p>
	<p class="text-left">
		Q6. There is a voltage drop of <asp:Label ID="LblQ6Volts" runat="server"></asp:Label>
		volts across a resistor with 
		<asp:Label ID="LblQ6Current" runat="server"></asp:Label>
		mA of current flowing through it, what is the resistance of the resistor? <asp:Label ID="Label6" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox6" runat="server" Width="60px" class="button"></asp:TextBox>
		Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q7. If you took the resistor from Q3. and replaced it with a <asp:Label ID="lblQ7R" runat="server"></asp:Label>
		resistor, what would be the new current flowing through it? <asp:Label ID="Label7" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox7" runat="server" Width="61px" class="button"></asp:TextBox>
		mA</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit Answers" class="button"/>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		<asp:Label ID="LabelOutput" runat="server" Width="400px"></asp:Label>
	</p>
</asp:Content>
