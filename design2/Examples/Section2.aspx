<%@ Page Title="Resistors in Series/Parallel: Examples" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section2.aspx.cs" Inherits="design2.Section2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
		<div>
			<asp:Button ID="Button2" runat="server" PostBackUrl="~/Notes/Section2" Text="Back to Notes" class="button"/>
        	<br />
			<br />
			<p class="header">Interactive Examples<p />
			<br />
			Answers rounded to this many decimal places:
			<asp:DropDownList ID="DropDownList1" runat="server" class="button">
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
			</asp:DropDownList>
        	<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox1" runat="server" Width="65px" class="button"></asp:TextBox>
			Ω&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="TextBox2" runat="server" Width="66px" class="button"></asp:TextBox>
			Ω<br />
			<img alt="" src="../Pictures/eq1.png" style="width: 561px; height: 249px" /><asp:TextBox ID="TextBox3" runat="server" Width="67px" class="button"></asp:TextBox>
			Ω<br />
			<p />
				&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Calculate Equivalent Resistance" Width="271px" class="button"/>
&nbsp;&nbsp;&nbsp;
			<asp:Label ID="Label1" runat="server"></asp:Label>
			<br />
			<p />
			<br />
			<img alt="" src="../Pictures/eq2b.jpg" style="width: 606px; height: 229px" /><br />
			Set values for the resistors:&nbsp; R1 =
			<asp:TextBox ID="TextBox4" runat="server" Width="65px" class="button"></asp:TextBox>
&nbsp;&nbsp;&nbsp; R2 =
			<asp:TextBox ID="TextBox5" runat="server" Width="66px" class="button"></asp:TextBox>
&nbsp;&nbsp;&nbsp; R3 =
			<asp:TextBox ID="TextBox6" runat="server" Width="67px" class="button"></asp:TextBox>
			<br />
			<br />
			<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Calculate Equivalent Resistance" Width="274px" class="button"/>
&nbsp;&nbsp;&nbsp;
			<asp:Label ID="Label2" runat="server"></asp:Label>
			<br />
			<p />
				&nbsp;<p />
				<p class="header">Example Problem<p />
			<img alt="" src="../Pictures/eq5.png" style="width: 734px; height: 310px" /><p />
				For this problem, we have a 100Ω resistor in parrallel with a 200Ω resistor. These resistors are then in series with a 300Ω resistor. Then, this set of three resistors is in series with the 500Ω resistor and 400Ω resistor, which are in parallel with each other.<p />
				This set of resistors can then be written as Req = (100|200)+300+(500|400).<p />
				100|200 = 1/(1/100 + 1/200) = 67<p />
				500|400 = 1/(1/500 + 1/400) = 222<p />
				Then, we&#39;re left with Req = 67 + 300 + 222 = <strong>589Ω</strong><br />
			<br />
        </div>

</asp:Content>
