<%@ Page Title="Resistors in Series/Parallel: Quiz" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section2.aspx.cs" Inherits="design2.Quiz.Section2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
	<img alt="" src="../Pictures/eq3.png" style="width: 731px; height: 364px" /></p>
<p>
	What is the equivalent resistance for the above circuit?
	<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
<p>
	<asp:RadioButtonList ID="RadioButtonList1" runat="server">
		<asp:ListItem>600Ω</asp:ListItem>
		<asp:ListItem>54.545Ω</asp:ListItem>
		<asp:ListItem>0.018Ω</asp:ListItem>
		<asp:ListItem>450Ω</asp:ListItem>
	</asp:RadioButtonList>
</p>
<p>
	<asp:TextBox ID="TextBox1" runat="server" Width="71px" class="button"></asp:TextBox>
	Ω</p>
<p>
	&nbsp;</p>
<p>
	<img alt="" src="../Pictures/eq1.png" style="width: 704px; height: 320px" /></p>
<p>
	What is the equivalent resistance for the above circuit?
	<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
<p>
	<asp:RadioButtonList ID="RadioButtonList3" runat="server">
		<asp:ListItem>600Ω</asp:ListItem>
		<asp:ListItem>54.545Ω</asp:ListItem>
		<asp:ListItem>0.018Ω</asp:ListItem>
		<asp:ListItem>450Ω</asp:ListItem>
	</asp:RadioButtonList>
</p>
<p>
	<asp:TextBox ID="TextBox3" runat="server" Width="69px" class="button"></asp:TextBox>
	Ω</p>
<p>
	<asp:Button ID="Button1" runat="server" Text="Submit Answers" OnClick="Button1_Click" class="button"/>
</p>
	<p>
		&nbsp;</p>
	<p>
		<asp:Label ID="LabelOutput" runat="server"></asp:Label>
</p>
</asp:Content>
