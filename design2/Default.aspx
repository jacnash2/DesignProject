<%@ Page Title="EE 206 Index" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="design2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Label ID="Label1" runat="server" Style="float: right;" padding="2px"></asp:Label>
	<div class="jumbotron">
		<h1 style="font-size: x-large">EE 206: Circuits I</h1>
		<p class="lead">Introduction to Circuit Analysis</p>
	</div>

    <div class="row">
		<table class="nav-justified" style="width: 90%;">
			<tr>
				<td class="modal-lg" style="width: 61px">&nbsp;</td>
				<td style="width: 923px">
					<table style="width: 100%; height: 309px;" border="1" contenteditable="false" draggable="true">
						<tr>
							<td style="text-align: center; font-weight: bold;" draggable="true"><strong>Lesson</strong></td>
							<td style="text-align: center; font-weight: bold;" draggable="true"><strong>Example Problems</strong></td>
							<td style="text-align: center; font-weight: bold;" draggable="true"><strong>Photos/Videos</strong></td>
							<td style="text-align: center; font-weight: bold;" draggable="true"><strong>Practice Quiz</strong></td>
						</tr>
						<tr>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Notes/Section1">Circuit Variables and Elements</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="Examples/Section1">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Quiz/Section1">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Notes/Section2">Resistors in Series and Parallel</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="Examples/Section2">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="Quiz/Section2">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Notes/Section3">Kirchoff&#39;s Laws</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink16" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink23" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" class="text-primary">
								<a href="Notes/Section4">Voltage and Current Divis</a>ion</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink17" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink24" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" class="text-primary">
								<a href="Notes/Section5">Node Voltage</a> Analysis</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink18" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink25" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">&nbsp;<span class="text-primary"><a href="Notes/Section6">Mesh Current Analysis</a></span></td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink19" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink26" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="Notes/Section7">Section 7</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink20" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink27" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">&nbsp;<asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="Notes/Section8">Section 8</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink21" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink28" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="Notes/Section9">Section 9</asp:HyperLink>
							</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink22" runat="server">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">
								<asp:HyperLink ID="HyperLink29" runat="server">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	
		<br />
		<br />
		<table style="width: 51%; margin-left: 103px;">
			<tr>
				<td style="width: 225px">Important Notes:</td>
			</tr>
			<tr>
				<td style="width: 225px">
					<asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="/SI">SI Units</asp:HyperLink>
				</td>
			</tr>
		</table>
		<br />
		<br />
		<br />
	</div>

</asp:Content>
