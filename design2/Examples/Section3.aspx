<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section3.aspx.cs" Inherits="design2.Examples.Section3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Button ID="Button1" runat="server" Text="Back to Notes" />
	<br />
	<br />
	<p class="header">Interactive Example</p>
	<br />
	<img alt="" src="../Pictures/section3-2a.png" style="width: 541px; height: 509px" /><br />
	<br />
	<p p class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter values for some of the currents and it will calculate the ones that it can:</p>
<p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; s =
		<asp:TextBox ID="TextBoxS" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="LabelS" runat="server"></asp:Label></p>
<p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 =
		<asp:TextBox ID="TextBox1" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
<p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 2 =
		<asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
<p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 3 =
		<asp:TextBox ID="TextBox3" runat="server" style="margin-bottom: 0" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label3" runat="server"></asp:Label>
</p><p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 4 =
		<asp:TextBox ID="TextBox4" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label4" runat="server"></asp:Label>
</p><p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 5 = <asp:TextBox ID="TextBox5" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label5" runat="server"></asp:Label>
</p><p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 6 =
		<asp:TextBox ID="TextBox6" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label6" runat="server"></asp:Label>
</p><p class="text-left">	I&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 7 =
		<asp:TextBox ID="TextBox7" runat="server" Width="50px"></asp:TextBox>
		A&nbsp;&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label7" runat="server"></asp:Label>
</p>		<br />
		<p class="text-left">        <asp:Button ID="ButtonSubmit" runat="server" Text="Calculate Currents" OnClick="ButtonSubmit_Click" Width="225px" />
</p>	<p class="header">&nbsp;</p>
	<p class="header">Example Problems</p>
	<img alt="" src="../Pictures/section3-2b.png" style="width: 541px; height: 509px" /><br />
	<br />
	In this example, we need to use Kirchoff&#39;s current law to find the currents I1, I2, I3, and I4. Writing equations for each current, we have:<br />
	<br />
	I1 = 5A - I2<br />
	I2 = 5A - I1<br />
	I3 = 1A + I2 - 3A<br />
	I4 = 2A + I3<br />
	<br />
	We can see from the two currents leaving I1 that I1 = 1A + 2A = <strong>3A</strong>.<br />
	<br />
	From there, we can solve for I2 = 5A - I1 = 5A - 3A = <strong>2A</strong>.<br />
	<br />
	Then, I3 = 1A + I2 = 1A + 2A = <strong>3A</strong>.<br />
	<br />
	And finally, I4 = 2A + I3 = 2A + 3A = <strong>5A</strong>.<br />
	<img alt="" src="../Pictures/section3-1.png" style="width: 658px; height: 375px" /><br />
	In this problem, we are trying to find V0, i1, and i2.<br />
	<br />
	First, we can find V0 by finding the equivalent resistance of the circuit. The equivalent resistance is 200|(300+500) = 1/(1/200+1/800). This is equal to 160Ω. Now, we have 3A * 160Ω = <strong>480V</strong>.<br />
	<br />
	Now to find i1, all we have to do is take V0 (480V) divided by the resistor across i1 (200Ω). This gives us 480V / 200Ω = <strong>2.4A</strong>.<br />
	<br />
	i2 can be found the same way, giving us 480V / (300Ω + 500Ω) = <strong>0.6A</strong>.<br />
	<br />
	Now, we can test our answer using Kirchoff's current law, which tells us that i1 + i2 = 3A. 2.4A + 0.6A = 3.0A, so it works.
	<br />
	<br />
</asp:Content>
