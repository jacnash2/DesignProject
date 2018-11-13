<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section1.aspx.cs" Inherits="design2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		<asp:Label ID="LabelDarkMode" runat="server"></asp:Label>
	</p>
	<p>
		Q1. The answer is A.
		<asp:Label ID="Label1" runat="server"></asp:Label>
	</p>
	<p>
		<asp:RadioButtonList ID="RadioButtonList1" runat="server">
			<asp:ListItem Value="A"></asp:ListItem>
			<asp:ListItem Value="B"></asp:ListItem>
			<asp:ListItem Value="C"></asp:ListItem>
			<asp:ListItem Value="D"></asp:ListItem>
		</asp:RadioButtonList>
	</p>
	<p>
		&nbsp;</p>
	<p>
		Q2. The answer is B.
		<asp:Label ID="Label2" runat="server"></asp:Label>
	</p>
	<p>
		<asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
	</p>
	<p>
		&nbsp;</p>
	<p>
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit Answers" />
	</p>
	<p>
		&nbsp;</p>
	<p>
		<asp:Label ID="LabelOutput" runat="server" Width="400px"></asp:Label>
	</p>
</asp:Content>
