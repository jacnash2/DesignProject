<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter5.aspx.cs" Inherits="design2.ee206.Chapter5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Button ID="Button4" runat="server" OnClick="Button3_Click" Text="Turn Off Dark Mode" />
        </div>
    	<p>
			<asp:Button ID="Button3" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        	<asp:Button ID="Button2" runat="server" PostBackUrl="Chapter4" Text="Last Chapter" />
        </p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			<asp:Button ID="Button1" runat="server" PostBackUrl="Chapter6" Text="Next Chapter" />
		</p>
    </form>
</body>
</html>
