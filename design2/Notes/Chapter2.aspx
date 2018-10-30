<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter2.aspx.cs" Inherits="design2.pages.Chapter2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="LightMode.css"/>
	<style type="text/css">
		.header {
			font-family: "Calibri Light";
			font-size: 20px;
		}
		.header {
			font-family: "Calibri Light";
			font-size: 24px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button ID="Button4" runat="server" OnClick="Button3_Click" Text="Turn Off Dark Mode" />
        </div>
    	<p>
			<asp:Button ID="Button3" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        	<asp:Button ID="Button2" runat="server" PostBackUrl="Chapter1" Text="Last Chapter" />
        </p>
		<p>
			<span class="header">Resistors in Series</span></p>
		<p>
			Having resistors in series means that there are multiple resistors next to each other on the same wire. When there are resistors in series, their equivalent resistance is equal to each of their resistances added together. So, having several resistors next to each other is like having only one resistor with a larger value of resistance.</p>
		<p>
			Note that if two resistors are on the same wire, but there is another wire branching off in between them, they are not in series. There are pictures illustrating this in the example problems section.</p>
		<p>
			Also, two resistors can be on completely different parts of a long wire, very far from each other, but if there are no other wires branching off the main wire, they are still in series. There are pictures illustrating this in the example problems section.</p>
		<p>
			If R<sub>1</sub>, R<sub>2</sub>, and R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">3</span></sub> are all in series, letting R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">eq</span></sub> be their equivalent resistance, we have the following equation to find Req:</p>
		<p>
			R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">eq</span></sub> = R<sub>1</sub> + R<sub>2</sub> + R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">3</span></sub></p>
		<p>
			It&#39;s very easy to work with resistors in series. The hardest part is just recognizing when resistors are in series and when they actually are not. Now, for something a little less easy: resistors in parallel.</p>
		<p>
			&nbsp;</p>
		<p class="header">
			Resistors in Parallel</p>
		<p>
			Having resistors in parallel means that there are multiple resistors that are across from each other on different wires, which are in parallel on the circuit. When there are resistors in parallel, their equivalent resistance is equal to the inverse of the inverses of each resistor added together. In other words, take 1 divided by each resistor and add all of the values together. Then, take 1 again and divide it by the sum of that.</p>
		<p>
			If R<sub>1</sub>, R<sub>2</sub>, and R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">3</span></sub> are all in parallel, letting R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">eq</span></sub> be their equivalent resistance, we have the following equation to find Req:</p>
		<p>
			R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">eq</span></sub> = 1 / ( 1 / R<sub>1</sub> + 1 / R<sub>2</sub> + 1 / R<sub><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">3</span></sub> )</p>
		<p>
			&nbsp;</p>
		<p>
			<asp:Button ID="Button5" runat="server" PostBackUrl="/Examples/Chapter2" Text="Example Problems" />
&nbsp;
			<asp:Button ID="Button1" runat="server" PostBackUrl="Chapter3" Text="Next Chapter" />
		</p>
    </form>
</body>
</html>
