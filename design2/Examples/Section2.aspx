<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Section2.aspx.cs" Inherits="design2.Examples.Chapter2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 699px;
			height: 338px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
			<asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
			<br />
			<asp:Button ID="Button1" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/" Text="Return to EE206 Home Page" Width="277px" />
        &nbsp;
			<asp:Button ID="Button2" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="~/Notes/Chapter2" Text="Back to Notes" Width="203px" />
        	</p>
        <div>
        	<img alt="" class="auto-style1" src="../Pictures/current.jpg" /></div>
    </form>
</body>
</html>
