<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter1.aspx.cs" Inherits="design2.Examples.Chapter1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button ID="Button4" runat="server" Text="Button" />
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
			Answer: 3 A * 20<span style="font-variant-ligatures: normal;
font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px"><span style="color: #222222; background: white"><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin"> Ω = <strong>60 V</strong></span></span></span><br />
			<br />
			<br />
			Example 2:<br />
			<br />
			A voltage source of 5 volts passes a current through a resistor with resistance of 50 ohms. How much current passes through the circuit?<br />
			<br />
			Answer: 5 V / 50 <span style="font-variant-ligatures: normal;
font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px"><span style="color: #222222; background: white"><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin"> Ω = <strong>0.1 A</strong> (or 100 mA)</span></span></span><br />
			<br />
			<br />
			Example 3:<br />
			<br />
			A current of 2 amps comes from a voltage source with 10 volts. How much resistance is in the circuit?<br />
			<br />
			Answer: 10 V / 2 A = <strong>5 </strong><span style="font-variant-ligatures: normal;
font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px"><span style="color: #222222; background: white"><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin"> Ω</span></span></span><br />
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
