<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section6.aspx.cs" Inherits="design2.Examples.Section6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		<img alt="" src="../Pictures/loops1.png" style="width: 783px; height: 399px" /></p>
	<p style="text-decoration: underline">
		Solving for the loops gives us the following equations:</p>
	<p>
		Ia)&nbsp; -Vg + 100ia + 50(ia-ib) = 0</p>
	<p>
		ib) 50(ib-ia) + 400(ib) + 350(ib) = 0</p>
	<p>
		i1 = ia - ib</p>
	<p>
		&nbsp;</p>
	<p style="text-decoration: underline">
		In matrice form, this is:</p>
	<p>
		<table style="width: 1172px;">
			<tr>
				<td style="width: 390px">ia</td>
				<td style="width: 391px">ib</td>
				<td style="width: 391px">=</td>
			</tr>
			<tr>
				<td style="width: 390px">150</td>
				<td style="width: 391px">-50</td>
				<td style="width: 391px">Vg</td>
			</tr>
			<tr>
				<td style="width: 390px">-50</td>
				<td style="width: 391px">800</td>
				<td style="width: 391px">0</td>
			</tr>
		</table>
	</p>
	<p>
		&nbsp;</p>
	<p style="text-decoration: underline">
		This results in the following currents:</p>
	<p>
		ia = Vg * 8 /1175 = (6.8085*10^-3 * Vg) A</p>
	<p>
		ib = Vg / 2350 = (4.2553*10^-4 * Vg) A</p>
	<p>
		i1 = (6.3830 * 10^-3 *Vg) A</p>
	<p>
		&nbsp;</p>
	<p style="text-decoration: underline">
		If Vg = 20 V, then the following are the results:</p>
	<p>
		ia = 136.1 mA</p>
	<p>
		ib = 8.5 mA</p>
	<p>
		i1 = 127.6 mA</p>
</asp:Content>
