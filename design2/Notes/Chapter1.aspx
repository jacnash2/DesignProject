<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter1.aspx.cs" Inherits="design2.pages.Chapter1"%>
	
<!DOCTYPE html>
<head runat="server" >
	<title>EE 206: Chapter 1</title>
	</head>
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">

        <p>
			<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Turn Off Dark Mode" />
		</p>


        <div>
			<asp:Button ID="Button1" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        &nbsp;
			<asp:Button ID="Button2" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/Examples/Chapter1" Text="Example Problems" Width="203px" />
        </div>
		<br />
		In circuit analysis, the following abbreviations are used frequently:<br />
		<br />V = voltage<br />
		I = current<br />
		R = resistance<br />
		<br />
		Voltage is measured in volts (V).<br />
		Current is measured in amps (A).<br />
		Resistance is measured in ohms (Ω).<br />
		<br />
		If low amounts of current and high amounts of resistance are used, milliamps (mA) and kiloohms (Ω) are often used instead of regular amps and ohms.<br />
		<br />
		The relation of voltage, current, and resistance is shown in the following equation:<br />
		<br />
		<strong>V = I*R<br />
		<br />
		</strong>Current and resistance are inversely proportional, meaning that when the value for one (either current or resistance) goes up, then the value of the other must go down as long as voltage remains unchanged. However, voltage is directly proportional to both current and resistance, so when voltage increases, either current or resistance must also increase.<br />
		<br />
		Through algebra, the equation can be manipulated to find the current or resistance with the next equations:<br />
		<br />
		<strong>I = V/R</strong><br />
		<br />
		<strong>R = V/I</strong><br />
		<br />
		These three equations are used constantly during circuit analysis, so it is highly recommended that you memorize them so you don&#39;t have to constantly look them up and so you don&#39;t get them mixed up. If you are good with algebra, you should be able to just memorize one of them and then manipulate it to suit the problem you are currently working on.<br />
		<br />
    	<asp:Button ID="nextChapter" runat="server" PostBackUrl="Chapter2" Text="Next Chapter" />
		<br />
    </form>
</body>
</html>
