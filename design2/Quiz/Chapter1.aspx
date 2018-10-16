<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter1.aspx.cs" Inherits="design2.ee206.Ch1Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 1 Quiz</title>
	</head>
<body>
    <form id="form1" runat="server">
			<asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click1" />
&nbsp;
			<asp:Button ID="Button2" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        <br />
		<br />
		Q1. The answer is A.<asp:TextBox ID="TextBox3" runat="server" BorderStyle="None"></asp:TextBox>
			<br />
		<asp:RadioButtonList ID="RadioButtonList1" runat="server">
			<asp:ListItem>A</asp:ListItem>
			<asp:ListItem>B</asp:ListItem>
			<asp:ListItem>C</asp:ListItem>
			<asp:ListItem>D</asp:ListItem>
		</asp:RadioButtonList>
		<br />
		Q2. The answer is B.<asp:TextBox ID="TextBox4" runat="server" BorderStyle="None"></asp:TextBox>
			<br />
		<asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Answers" />
				<br />
		<br />
		<asp:TextBox ID="TextOutput" runat="server" Width="1039px"></asp:TextBox>
		<br />
    </form>
</body>
</html>
