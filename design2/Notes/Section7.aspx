<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section7.aspx.cs" Inherits="design2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		<asp:Button ID="Button4" runat="server" PostBackUrl="Section6" Text="Last Section" class="button"/>
	<br />
</p>
		<p></p>
		<p>
	<asp:Button ID="Button2" runat="server" Text="Example Problems"  class="button" PostBackUrl="/Examples/Section7" padding="2px"/>
	<asp:Button ID="Button3" runat="server" Text="Next Chapter"  class="button" PostBackUrl="Section8" padding ="2px"/>
</p>
</asp:Content>
