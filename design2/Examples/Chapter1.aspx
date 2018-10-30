<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter1.aspx.cs" Inherits="design2.Examples.Chapter1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click1" />
			<br />
			<asp:Button ID="Button1" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        &nbsp;
			<asp:Button ID="Button2" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/Notes/Chapter1" Text="Back to Notes" Width="203px" />
        	<br />
			<br />
			Example 1:<br />
			<br />
			There is a current of 3 amps passing through a 20 ohm resistor. How much voltage drop is across the resistor?<br />
			<br />
			Answer: 3 A * 20 Ω = <strong>60 V</strong>
			<br />
			<br />
			Example 2:<br />
			<br />
			A voltage source of 5 volts passes a current through a resistor with resistance of 50 ohms. How much current passes through the circuit?<br />
			<br />
			Answer: 5 V / 50 Ω = <strong>0.1 A</strong> (or <strong>100 mA</strong>)
			<br />
			<br />
			Example 3:<br />
			<br />
			A current of 2 amps comes from a voltage source with 10 volts. How much resistance is in the circuit?<br />
			<br />
			Answer: 10 V / 2 A = <strong>5 Ω</strong><br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
        </div>
    </form>
</body>
</html>
