<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section5.aspx.cs" Inherits="design2.Examples.Section5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<p  class="header">
		Interactive Example</p>
	<p>
		<img alt="" src="../Pictures/vnodes1b.png" style="width: 707px; height: 324px" /></p>
<p style="text-decoration: underline">
		Values of the Resistors:</p>
<p>
		R1 =
		<asp:TextBox ID="TextBox1" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R2 =
		<asp:TextBox ID="TextBox2" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R3 =
		<asp:TextBox ID="TextBox3" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R4 =
		<asp:TextBox ID="TextBox4" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R5 =
		<asp:TextBox ID="TextBox5" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R6 =
		<asp:TextBox ID="TextBox6" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		R7 =
		<asp:TextBox ID="TextBox7" runat="server" Width="71px"></asp:TextBox>
		Ω</p>
<p>
		<asp:Button ID="btnSubmit" runat="server" Text="Calculate Voltages" />
</p>
	<p>
		V1 = 5 V</p>
	<p>
		V2 =
		<asp:Label ID="Label2" runat="server"></asp:Label>
		V</p>
	<p>
		V3 =
		<asp:Label ID="Label3" runat="server"></asp:Label>
		V</p>
	<p>
		V4 =
		<asp:Label ID="Label4" runat="server"></asp:Label>
		V</p>
	<p>
		&nbsp;</p>
		<p class="header">
			Worked Out
		Example</p>
	<p>
		<img alt="" src="../Pictures/vnodes1.png" style="width: 494px; height: 324px" /></p>
	<p style="text-decoration: underline">
		Equations for the above circuit:</p>
	<p>
		Node V1)&nbsp; V1 = 5V</p>
	<p>
		Node V2)&nbsp; (V2-V1)/100 + V2/400 + V2/200 + (V2-V3)/300 = 0</p>
	<p>
		Node V3)&nbsp; (V3-V2)/300 + V3/100 = 0</p>
	<p>
		&nbsp;</p>
	<p style="text-decoration: underline">
		In matrice form, this is:</p>
	<p>
		<table style="width: 1172px;">
			<tr>
				<td style="height: 20px; width: 293px">V1</td>
				<td style="height: 20px; width: 293px">V2</td>
				<td style="height: 20px; width: 293px">V3</td>
				<td style="height: 20px; width: 293px">=</td>
			</tr>
			<tr>
				<td style="width: 293px">1</td>
				<td style="width: 293px">0</td>
				<td style="width: 293px">0</td>
				<td style="width: 293px">5</td>
			</tr>
			<tr>
				<td style="width: 293px">-1/100</td>
				<td style="width: 293px">1/100 + 1/400 + 1/200 + 1/300</td>
				<td style="width: 293px">-1/300</td>
				<td style="width: 293px">0</td>
			</tr>
			<tr>
				<td style="width: 293px">0</td>
				<td style="width: 293px">-1/300</td>
				<td style="width: 293px">1/300 + 1/100</td>
				<td style="width: 293px">0</td>
			</tr>
		</table>
	</p>
	<p>
		&nbsp;</p>
	<p>
		After solving the system of equations, we get the following results:</p>
	<p>
		V1 = 5 V</p>
	<p>
		V2 = 2.5 V</p>
	<p>
		V3 = 0.625 V</p>
	<p>
		&nbsp;</p>
</asp:Content>
