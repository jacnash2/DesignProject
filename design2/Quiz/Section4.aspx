﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section4.aspx.cs" Inherits="design2.Quiz.Section4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p style="text-decoration: underline" class="text-left">
		Figure for Q1. and Q2.</p>
	<p class="text-left">
		<img alt="" src="../Pictures/section3-4c.png" style="width: 565px; height: 302px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Voltages for Q1. and Q2.</p>
	<p class="text-left">
		V1 =
		<asp:Label ID="lblQ1V1" runat="server"></asp:Label>
		V</p>
	<p class="text-left">
		V2 =
		<asp:Label ID="lblQ1V2" runat="server"></asp:Label>
		V</p>
	<p class="text-left">
		V4 =
		<asp:Label ID="lblQ1V4" runat="server"></asp:Label>
		V</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q1. What is the voltage at V3?<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox1" runat="server" Width="50px"></asp:TextBox>
		V</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q2. What is the voltage at V5?<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>
		V</p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q3. through Q6.</p>
	<p class="text-left">
		<img alt="" src="../Pictures/section3-1b.png" style="width: 509px; height: 245px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Variables for Q3. through Q6.</p>
	<p class="text-left">
		Vo =
		<asp:Label ID="lblQ3Vo" runat="server"></asp:Label>
		V</p>
	<p class="text-left">
		R1 =
		<asp:Label ID="lblQ3R1" runat="server"></asp:Label>
	Ω</p>
	<p class="text-left">
		R2 =
		<asp:Label ID="lblQ3R2" runat="server"></asp:Label>
	Ω</p>
	<p class="text-left">
		R3 =
		<asp:Label ID="lblQ3R3" runat="server"></asp:Label>
	Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q3. How does the voltage drop across R1 compare with the voltage drop across R2 and R3?<asp:Label ID="Label3" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList1" runat="server">
			<asp:ListItem>The voltage drop across R1 is greater than the voltage drop across both R2 and R3.</asp:ListItem>
			<asp:ListItem>The voltage drop across R1 is less than the voltage drop across R2 and R3.</asp:ListItem>
			<asp:ListItem>The voltage drop across R1 in comparison to the voltage drop across R2 and R3 is dependent on currents i1 and i2.</asp:ListItem>
			<asp:ListItem>The voltage drop across R1 is equal to the voltage drop across both R2 and R3.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q4. What is the voltage drop accross R1?<asp:Label ID="Label4" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>
	Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q5. What is the voltage drop accross R2?<asp:Label ID="Label5" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox5" runat="server" Width="50px"></asp:TextBox>
	Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q6. What is the voltage drop accross R3?<asp:Label ID="Label6" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
	Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q7. and Q8.</p>
	<p class="text-left">
		<img alt="" src="../Pictures/section3-5b.png" style="width: 357px; height: 331px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Variables for Q7. and Q8.</p>
	<p class="text-left">
		Vin =
		<asp:Label ID="lblQ7Vin" runat="server"></asp:Label>
		V</p>
	<p class="text-left">
		R1 =
		<asp:Label ID="lblQ7R1" runat="server"></asp:Label>
	Ω</p>
	<p class="text-left">
		R2 =
		<asp:Label ID="lblQ7R2" runat="server"></asp:Label>
	Ω</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q7. What is the voltage drop at V1?<asp:Label ID="Label7" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox7" runat="server" Width="50px"></asp:TextBox>
		V</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q8. What is the voltage drop at V2?<asp:Label ID="Label8" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox8" runat="server" Width="50px"></asp:TextBox>
		V</p>
	<p class="text-left">
		&nbsp;</p>
	<p>
		<asp:Button ID="Button1" runat="server" Text="Submit Answers" />
	</p>
	<p class="text-left">
		<asp:Label ID="lblOutput" runat="server"></asp:Label>
	</p>
</asp:Content>
