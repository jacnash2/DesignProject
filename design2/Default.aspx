<%@ Page Title="EE 206 Index" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="design2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Style="float:none;" padding="0px"></asp:Label>
	<div class="jumbotron">
<table style="float:left; width: 30%; height: 100px; margin-left: 140px; margin-bottom: 0px;" border="1";  contenteditable="false" draggable="true">
						<tr>
							<td style="text-align: center; font-weight: bold; height: 20px;" draggable="true">Course Information</td>
						</tr>
                        <tr>
							<td style="text-align: center; color:#889bb0; font-weight: bold; height: 20px;" draggable="true"><a href="chrome-extension://oemmndcbldboiebfnladdacbdfmadadm/http://www.bisonacademy.com/ECE206/Lectures/00_Syllabus.pdf">Syllabus</a></td>
						</tr>
                        <tr>
							<td style="text-align: center; color:#889bb0;font-weight: bold; height: 20px;" draggable="true"><a href="http://www.bisonacademy.com/ECE206/Index.htm">Schedule</a></td>
						</tr>
                        <tr>
							<td style="text-align: center;color:#889bb0; font-weight: bold; height: 20px;" draggable="true"><a href="https://www.amazon.com/Electric-Circuits-10th-James-Nilsson/dp/0133760030/ref=sr_1_3?keywords=Electric+Circuits+Nilsson&amp;qid=1555649599&amp;s=gateway&amp;sr=8-3">Textbook</a></td>
						</tr>
</table>

<table style="float:right; width: 30%; height: 100px; margin-right: 200px; margin-bottom:0px; "border="1";  contenteditable="false" draggable="true">
						<tr>
							<td style="text-align: center; font-weight: bold; height: 20px;" draggable="true">Resources</td>
						</tr>
                        <tr>
							<td style="text-align: center; color:#889bb0; font-weight: bold; height: 20px;" draggable="true"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="/SI">S.I. Units</asp:HyperLink></td>
						</tr>
                        <tr>
							<td style="text-align: center; color:#889bb0; font-weight: bold; height: 20px;" draggable="true"><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="/VIRCalculator">VIR Calculator</asp:HyperLink></td>
						</tr>
                        <tr>
							<td style="text-align: center; color:#889bb0; font-weight: bold; height: 20px;" draggable="true"><a href="https://www.youtube.com/channel/UC81Qdd6IX_-saGhwhS8_i-Q/videos">YouTube Channel</a></td>
						</tr>
</table>
        <br />
		<br />

          <br />
		<br />
          <br />

	</div>

    <div class="row">
		<table class="nav-justified" style="width: 90%; height: 150px;">
			<tr>
				<td class="modal-lg" style="width: 61px">&nbsp;</td>
				<td style="width: 923px">
					<table style="width: 100%; height: 307px;" border="1" contenteditable="false" draggable="true">
						<tr>
							<td style="text-align: center; font-weight: bold; height: 51px;" draggable="true"><strong>Lesson</strong></td>
							<td style="text-align: center; font-weight: bold; height: 51px;" draggable="true"><strong>Example Problems</strong></td>
							<td style="text-align: center; font-weight: bold; width: 202px; height: 51px;" draggable="true"><strong>Practice Quiz</strong></td>
						</tr>
						<tr>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Notes/Section1">Circuit Variables and Elements</asp:HyperLink>
							</td>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="Examples/Section1">Example Problems</asp:HyperLink>
							</td>
							<td style="text-align: center; width: 202px; height: 51px;">
								<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Quiz/Section1">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Notes/Section2">Resistors in Series and Parallel</asp:HyperLink>
							</td>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="Examples/Section2">Example Problems</asp:HyperLink>
							</td>

							<td style="text-align: center; width: 202px; height: 51px;">
								<asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="Quiz/Section2">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Notes/Section3">Current Division and Conservation</asp:HyperLink>
							</td>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="Examples/Section3">Example Problems</asp:HyperLink>
							</td>

							<td style="text-align: center; width: 202px; height: 51px;">
								<asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="Quiz/Section3">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; height: 51px;" class="text-primary">
								<asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="Notes/Section4">Voltage Division and Conservation</asp:HyperLink>
							</td>
							<td style="text-align: center; height: 51px;">
								<asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="Examples/Section4">Example Problems</asp:HyperLink>
							</td>

							<td style="text-align: center; width: 202px; height: 51px;">
								<asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="Quiz/Section4">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; height: 52px;" class="text-primary">
								<asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="notes/Section5">Voltage Nodes</asp:HyperLink>
							</td>

							<td style="text-align: center; height: 52px;">
								<asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="Examples/Section5">Example Problems</asp:HyperLink>
							</td>

							<td style="text-align: center; width: 202px; height: 52px;">
								<asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="Quiz/Section5">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; height: 52px;" class="text-primary">
								<asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="Notes/Section6">Current Loops</asp:HyperLink>
							</td>

							<td style="text-align: center; height: 52px;">
								<asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="Examples/Section6">Example Problems</asp:HyperLink>
							</td>

							<td style="text-align: center; width: 202px; height: 52px;">
								<asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="Quiz/Section6">Practice Quiz</asp:HyperLink>
							</td>
						</tr>
						</table>
				</td>
			</tr>
		</table>

		<br />
		<br />
		<table style="border: 7px double #889BB0; padding: 2px; width: 85%; margin-left: 67px;">
			<tr>
				<td style="width: 215px; font-size: 25pt; color: #FFFFFF; font-family: 'Times New Roman', Times, serif; height: 62px; background-color: #889bb0; " class="text-left">
                    <p class="text-left" style="width: 651px; font-size: 22pt">
                        <strong>Video Analysis:</strong></p>
                </td>
			</tr>
			<tr>
				<td style="border-style: groove; border-width: 3px; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=K8-PZVV0HXE"><span style="color: #435365">#1: Ohm&#39;s Law</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=XJKhXXaMh7Y"><span style="color: #435365">#2: Kirchhoff&#39;s Voltage Law</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2; height: 34px;" class="text-left">
					<a href="https://www.youtube.com/watch?v=sJGix6il11w"><span style="color: #435365">#3: Kirchhoff&#39;s Current Law</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=AA4yx5dfUm8"><span style="color: #435365">#4: Dependent Sources</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2; height: 34px;" class="text-left">
					<a href="https://www.youtube.com/watch?v=-_pZTwf2h2Q"><span style="color: #435365">#5: Voltage Divison</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2; height: 34px;" class="text-left">
					<a href="https://www.youtube.com/watch?v=kdq6RM_ZjCI"><span style="color: #435365">#6: Current Divison</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=lqxsTcnBECU"><span style="color: #435365">#7: Node Voltage Method</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=yk6iGpi5mlw"><span style="color: #435365">#8: Mesh Current</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=mW4uuF1CYSs"><span style="color: #435365">#9: Operational Amplifiers</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=ONBm5_Ygn7M"><span style="color: #435365">#10: Source Transformations</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2;" class="text-left">
					<a href="https://www.youtube.com/watch?v=i4Fc9Qb8x90"><span style="color: #435365">#11: Open Circuit Voltage / Short Circuit Current</span></a></td>
			</tr>
            <tr>
				<td style="border-style: groove; width: 215px; color: #435365; font-size: 14pt; font-family: 'Times New Roman', Times, serif; background-color: #D6DBE2; height: 31px;" class="text-left">
					<a href="https://www.youtube.com/watch?v=f_B8MUy7H_8"><span style="color: #435365">#12: Phasors</span></a></td>
			</tr>




		</table>
		<br />
		<br />
		<br />
	</div>

</asp:Content>