<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="design2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-size: x-large">EE 206: Circuits I</h1>
        <p class="lead">Introduction to Circuit Analysis</p>
        <p>
			<asp:Button ID="Button1" runat="server" BackColor="#3366FF" ForeColor="White" Height="32px" PostBackUrl="http://www.bisonacademy.com" Text="Return to Bison Academy" Width="277px" />
		</p>
    </div>

    <div class="row">
        <table class="nav-justified" style="width: 90%;">
			<tr>
				<td class="modal-lg" style="width: 61px">&nbsp;</td>
				<td style="width: 923px">
        <table style="width:100%; height: 309px;" border="1" contenteditable="false" draggable="false">
			<tr>
				<td style="width: 150px; height: 30px;" draggable="true"><strong>&nbsp;Chapter</strong></td>
				<td style="width: 150px; height: 30px;" draggable="true"><strong>&nbsp;Example Problems</strong></td>
				<td style="width: 150px; height: 30px;" draggable="true"><strong>&nbsp;Photos/Videos</strong></td>
				<td style="width: 171px; height: 30px;" draggable="true"><strong>&nbsp;Practice Quiz</strong></td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px">
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Notes/Chapter1">Chapter 1</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;
					<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="Examples/Chapter1">Example Problems</asp:HyperLink>
				</td>
				<td style="width: 165px; height: 31px;"></td>
				<td style="height: 31px; width: 171px;">
					&nbsp;
					<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Quiz/Chapter1">Quiz 1</asp:HyperLink>
				</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Notes/Chapter2">Chapter 2</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;&nbsp;
					<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="Examples/Chapter2">Example Problems</asp:HyperLink>
				</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px">
		&nbsp;
		<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Notes/Chapter3">Chapter 3</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;"></td>
				<td style="width: 165px; height: 31px;"></td>
				<td style="height: 31px; width: 171px;"></td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Notes/Chapter4">Chapter 4</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Notes/Chapter5">Chapter 5</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="Notes/Chapter6">Chapter 6</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="Notes/Chapter7">Chapter 7</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="Notes/Chapter8">Chapter 8</asp:HyperLink>
				</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			<tr>
				<td style="width: 150px; height: 31px;">
		&nbsp;
		<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="Notes/Chapter9">Chapter 9</asp:HyperLink>
    			</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
				<td style="width: 165px; height: 31px;">&nbsp;</td>
				<td style="width: 171px; height: 31px;">&nbsp;</td>
			</tr>
			</table>
				</td>
			</tr>
		</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
    </div>

</asp:Content>
