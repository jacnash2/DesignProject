<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section3.aspx.cs" Inherits="design2.Quiz.Section3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Button ID="Button1" runat="server" Text="Back to Notes" />
	<br />
	<span style="text-decoration: underline">Figure for Q1. through Q3.</span><br />
	<img alt="" src="../Pictures/section3-1b.png" style="width: 540px; height: 289px" /><br />
	<br />
	<span style="text-decoration: underline">Variables for Q1. through Q3.</span><br />
	Vo =
	<asp:Label ID="lblQ1V0" runat="server"></asp:Label>
	V<br />
	R1 =
	<asp:Label ID="lblQ1R1" runat="server"></asp:Label>
	Ω<br />
	Is =
	<asp:Label ID="lblQ1Is" runat="server"></asp:Label>
	A<br />
	R2 =
	<asp:Label ID="lblQ1R2" runat="server"></asp:Label>
	Ω<br />
	<br />
	<br />
	Q1. What is the current i1 in the above circuit? <asp:Label ID="Label1" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox1" runat="server" Width="58px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList1" runat="server">
		<asp:ListItem Value="A"></asp:ListItem>
		<asp:ListItem Value="mA"></asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q2. What is the current i2 in the above circuit?
	<asp:Label ID="Label2" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox2" runat="server" Width="56px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList2" runat="server">
		<asp:ListItem>A</asp:ListItem>
		<asp:ListItem>mA</asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q3. What is the resistance R3 in the above circuit?
	<asp:Label ID="Label3" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox3" runat="server" Width="54px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList3" runat="server">
		<asp:ListItem Value="Ω"></asp:ListItem>
		<asp:ListItem Value="kΩ"></asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<span style="text-decoration: underline">Figure for Q4. through Q8.</span><br />
	<br />
	<img alt="" src="../Pictures/section3-2a.png" style="width: 512px; height: 442px" /><br />
	<br />
	<span style="text-decoration: underline">Currents for Q4. through Q8.</span><br />
	i2 =
	<asp:Label ID="lblQ4I2" runat="server"></asp:Label>
	A<br />
	i3 =
	<asp:Label ID="lblQ4I3" runat="server"></asp:Label>
	A<br />
	i4 =
	<asp:Label ID="lblQ4I4" runat="server"></asp:Label>
	A<br />
	i6 =
	<asp:Label ID="lblQ4I6" runat="server"></asp:Label>
	A<br />
	<br />
	<br />
	Q4. What is the current i1 in the above circuit?<asp:Label ID="Label4" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox4" runat="server" Width="59px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList4" runat="server">
		<asp:ListItem Value="A"></asp:ListItem>
		<asp:ListItem Value="mA"></asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q5. What is the current Is in the above circuit?<asp:Label ID="Label5" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox5" runat="server" Width="57px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList5" runat="server">
		<asp:ListItem>A</asp:ListItem>
		<asp:ListItem>mA</asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q6. What is the current i5 in the above circuit?<asp:Label ID="Label6" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox6" runat="server" Width="57px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList6" runat="server">
		<asp:ListItem Value="A"></asp:ListItem>
		<asp:ListItem Value="mA"></asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q7. What is the current i7 in the above circuit?<asp:Label ID="Label7" runat="server"></asp:Label>
	<br />
	<asp:TextBox ID="TextBox7" runat="server" Width="54px"></asp:TextBox>
	<asp:DropDownList ID="DropDownList7" runat="server">
		<asp:ListItem Value="A"></asp:ListItem>
		<asp:ListItem Value="mA"></asp:ListItem>
	</asp:DropDownList>
	<br />
	<br />
	<br />
	Q8. If the voltage into a circuit is doubled, what happens to the currents throughout the circuit?<asp:Label ID="Label8" runat="server"></asp:Label>
	<br />
	<asp:RadioButtonList ID="RadioButtonList1" runat="server">
		<asp:ListItem>Their value is halved.</asp:ListItem>
		<asp:ListItem>Their value is doubled.</asp:ListItem>
		<asp:ListItem>They are unchanged.</asp:ListItem>
		<asp:ListItem>It varies depending on where the current is.</asp:ListItem>
	</asp:RadioButtonList>
	<br />
	<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Answers" />
	<br />
	<br />
	<asp:Label ID="lblOutput" runat="server"></asp:Label>
	<br />
	</asp:Content>
