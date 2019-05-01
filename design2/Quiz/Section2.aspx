<%@ Page Title="Resistors in Series/Parallel: Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section2.aspx.cs" Inherits="design2.Quiz.Section2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q1.</p>
	<p class="text-left">
		<img alt="" src="../Pictures/eq1.png" style="width: 562px; height: 237px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Resistances for Q1.</p>
	<p class="text-left">
		R1 =
		<asp:Label ID="lblQ1R1" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R2 =
		<asp:Label ID="lblQ1R2" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R3 =
		<asp:Label ID="lblQ1R3" runat="server"></asp:Label>
		Ω</p>
<p class="text-left">
	Q1.
	What is the equivalent resistance for the above circuit?
	<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
<p class="text-left">
	<asp:TextBox ID="TextBox1" runat="server" Width="71px" class="button"></asp:TextBox>
	<asp:DropDownList ID="DropDownList1" runat="server" class="button">
		<asp:ListItem>Ω</asp:ListItem>
		<asp:ListItem>kΩ</asp:ListItem>
	</asp:DropDownList>
	</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q2.</p>
<p class="text-left">
	<img alt="" src="../Pictures/eq2b.jpg" style="width: 606px; height: 229px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Resistances for Q2.</p>
	<p class="text-left">
		R1 =
		<asp:Label ID="lblQ2R1" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R2 =
		<asp:Label ID="lblQ2R2" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R3 =
		<asp:Label ID="lblQ2R3" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		Q2.
	What is the equivalent resistance for the above circuit?
	<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
<p class="text-left">
	<asp:TextBox ID="TextBox2" runat="server" Width="69px" class="button"></asp:TextBox>
	<asp:DropDownList ID="DropDownList2" runat="server" class="button">
		<asp:ListItem>Ω</asp:ListItem>
		<asp:ListItem>kΩ</asp:ListItem>
	</asp:DropDownList>
	</p>
<p class="text-left">
	&nbsp;</p>
	<p class="text-left">
		Q3. There are two resistors with set values. If the resistors are places in series, how does the equivalent resistor compare to if they were placed in parallel?
		<asp:Label ID="Label3" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList3" runat="server" BorderStyle="Solid">
			<asp:ListItem>The equivalent resistance is higher when they&#39;re placed in series.</asp:ListItem>
			<asp:ListItem>The equivalent resistance is lower when they&#39;re placed in series.</asp:ListItem>
			<asp:ListItem>The equivalent resistance is the same whether they&#39;re placed in series or parallel.</asp:ListItem>
			<asp:ListItem>The equivalent resistance can be higher or lower when placed in series, depending on the values of the resistors.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p style="text-decoration: underline" class="text-left">
		Figure for Q4. through Q6.</p>
	<p class="text-left">
		<img alt="" src="../Pictures/eq6.png" style="width: 580px; height: 278px" /></p>
	<p style="text-decoration: underline" class="text-left">
		Resistances for Q4. through Q6.</p>
	<p class="text-left">
		R1 =
		<asp:Label ID="lblQ4R1" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R2 =
		<asp:Label ID="lblQ4R2" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R3 =
		<asp:Label ID="lblQ4R3" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R4 =
		<asp:Label ID="lblQ4R4" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R5 =
		<asp:Label ID="lblQ4R5" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		R6 =
		<asp:Label ID="lblQ4R6" runat="server"></asp:Label>
		Ω</p>
	<p class="text-left">
		Q4. What is the equivalent resistance for the left half of the circuit (from the starting point through R1, R2, and R3)?
		<asp:Label ID="Label4" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox4" runat="server" Width="59px" class="button"></asp:TextBox>
		<asp:DropDownList ID="DropDownList4" runat="server" class="button">
			<asp:ListItem>Ω</asp:ListItem>
			<asp:ListItem>kΩ</asp:ListItem>
		</asp:DropDownList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q5. What is the equivalent resistance for the right half of the circuit (from where Q4. left off through R4, R5, and R6)?
		<asp:Label ID="Label5" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox5" runat="server" Width="57px" class="button"></asp:TextBox>
		<asp:DropDownList ID="DropDownList5" runat="server" class="button">
			<asp:ListItem>Ω</asp:ListItem>
			<asp:ListItem>kΩ</asp:ListItem>
		</asp:DropDownList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q6. What is the total equivalent resistance?&nbsp;
		<asp:Label ID="Label6" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:TextBox ID="TextBox6" runat="server" Width="55px" class="button"></asp:TextBox>
		<asp:DropDownList ID="DropDownList6" runat="server" class="button">
			<asp:ListItem>Ω</asp:ListItem>
			<asp:ListItem>kΩ</asp:ListItem>
		</asp:DropDownList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q7. Which of the following is always true for resistors in series?
		<asp:Label ID="Label7" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList7" runat="server" BorderStyle="Solid">
			<asp:ListItem>The equivalent resistance is always larger than the value of the largest resistor.</asp:ListItem>
			<asp:ListItem>The equivalent resistance is always between the values of the smallest resistor and the largest resistor.</asp:ListItem>
			<asp:ListItem>The equivalent resistance is always smaller than the value of the smallest resistor.</asp:ListItem>
			<asp:ListItem>None of the above.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p class="text-left">
		Q8. Which of the following is always true for resistors in parallel?
		<asp:Label ID="Label8" runat="server"></asp:Label>
	</p>
	<p class="text-left">
		<asp:RadioButtonList class="text-left" ID="RadioButtonList8" runat="server" BorderStyle="Solid">
			<asp:ListItem>The equivalent resistance is always larger than the value of the largest resistor.</asp:ListItem>
			<asp:ListItem>The equivalent resistance is always between the values of the smallest resistor and the largest resistor</asp:ListItem>
			<asp:ListItem>The equivalent resistance is always smaller than the value of the smallest resistor.</asp:ListItem>
			<asp:ListItem>None of the above.</asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p class="text-left">
		&nbsp;</p>
	<p>
	<asp:Button ID="Button1" runat="server" Text="Submit Answers" OnClick="Button1_Click" class="button"/>
	</p>
	<p class="text-left">
		<asp:Label ID="LabelOutput" runat="server"></asp:Label>
</p>
</asp:Content>
