<%@ Page Title="Circuit Variables and Elements: Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.Section1Quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		&nbsp;</p>
	<p>
		Q1. If you increase the voltage going into a circuit, what will happen to the current through the circuit?
		<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
	<p>
		<asp:RadioButtonList ID="RadioButtonList1" runat="server">
			<asp:ListItem Value="The current will remain unchanged.">The current will remain unchanged.</asp:ListItem>
			<asp:ListItem Value="The current will increase.">The current will increase.</asp:ListItem>
			<asp:ListItem Value="The current will decrease.">The current will decrease.</asp:ListItem>
			<asp:ListItem Value="The current may increase or decrease.">The current may increase or decrease.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p>
		&nbsp;</p>
	<p>
		Q2. If you increase the resistance of a resistor across a wire, what will happen to the current across the wire?
		<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
	<p>
		<asp:RadioButtonList ID="RadioButtonList2" runat="server">
			<asp:ListItem>The current will remain unchanged.</asp:ListItem>
			<asp:ListItem>The current will increase.</asp:ListItem>
			<asp:ListItem>The current will decrease.</asp:ListItem>
			<asp:ListItem>The current may increase or decrease.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p>
		&nbsp;</p>
	<p>
		Q3. There is a voltage drop of 5 volts across a resistor with 100 mA of current flowing through it, what is the resistance of the resistor?
		<asp:Label ID="Label3" runat="server"></asp:Label>
	</p>
	<p>
		<asp:TextBox ID="TextBox1" runat="server" Width="60px" class="button"></asp:TextBox>
		Ω</p>
	<p>
		&nbsp;</p>
	<p>
		Q4. If you took the resistor from Q3. and replaced it with a 200Ω resistor, what would be the new current flowing through it? <asp:Label ID="Label4" runat="server"></asp:Label>
	</p>
	<p>
		<asp:TextBox ID="TextBox2" runat="server" Width="61px" class="button"></asp:TextBox>
		mA</p>
	<p>
		&nbsp;</p>
	<p>
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit Answers" class="button"/>
	</p>
	<p>
		&nbsp;</p>
	<p>
		<asp:Label ID="LabelOutput" runat="server" Width="400px"></asp:Label>
	</p>
</asp:Content>
