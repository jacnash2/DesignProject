<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section4.aspx.cs" Inherits="design2.Examples.Section4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
		<p class="header">&nbsp;</p>
	<p class="header">Interactive Example</p>
	<p>
		<img alt="" src="../Pictures/section3-4b.png" style="width: 514px; height: 485px" /></p>
	<p>
		V1 =
		<asp:TextBox ID="TextBox1" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label1" runat="server"></asp:Label>
		</p>
	<p>
		V2 =
		<asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label2" runat="server"></asp:Label>
		</p>
	<p>
		V3 =
		<asp:TextBox ID="TextBox3" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label3" runat="server"></asp:Label>
		</p>
	<p>
		V4 =
		<asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label4" runat="server"></asp:Label>
		</p>
	<p>
		V5 =
		<asp:TextBox ID="TextBox5" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label5" runat="server"></asp:Label>
		</p>
	<p>
		V6 =
		<asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label6" runat="server"></asp:Label>
		</p>
	<p>
		V7 =
		<asp:TextBox ID="TextBox7" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label7" runat="server"></asp:Label>
		</p>
	<p>
		V8 =
		<asp:TextBox ID="TextBox8" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label8" runat="server"></asp:Label>
		</p>
	<p>
		V9 =
		<asp:TextBox ID="TextBox9" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label9" runat="server"></asp:Label>
		</p>
	<p>
		V10 =
		<asp:TextBox ID="TextBox10" runat="server" Width="50px"></asp:TextBox>
		V&nbsp;&nbsp;&nbsp;
		<asp:Label ID="Label10" runat="server"></asp:Label>
		</p>
	<p>
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate Voltages" />
	</p>
		<p>
			&nbsp;</p>
		<p class ="header">
			Example Problem</p>
	<p>
		<img alt="" src="../Pictures/section3-5a.png" style="width: 683px; height: 307px" /></p>
		<p>
			Here, the voltage drop accross each resistor is equal to the resistance of the resistor divided by the total resistance multiplied by the voltage in. So, we have <strong>V = Vin*(R/Rtot)</strong> with Rtot = total resistance and R = each resistor.</p>
		<p>
			V1 = 12 V * (200 Ω / (200 + 300 + 100 + 400) Ω ) = <strong>2.4 V</strong></p>
		<p>
			V2 = 12 V * (300 Ω / (200 + 300 + 100 + 400) Ω ) = <strong>3.6 V</strong></p>
		<p>
			V3 = 12 V * (100 Ω / (200 + 300 + 100 + 400) Ω ) = <strong>1.2 V</strong></p>
		<p>
			V4 = 12 V * (400 Ω / (200 + 300 + 100 + 400) Ω ) = <strong>4.8 V</strong></p>
		<p>
			Now, we check our work by making sure that Vin = V1 + V2 + V3 + V4. Vin = 12 V = 2.4 V + 3.6 V + 1.2 V + 4.8 V = 12V. It works.</p>
		<p>
			&nbsp;</p>
</asp:Content>
