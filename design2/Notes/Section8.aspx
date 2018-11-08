<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Section8.aspx.cs" Inherits="design2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<p>
		<asp:Button ID="Button4" runat="server" PostBackUrl="Section7" Text="Last Section" class="button"/>
	<br />
</p>
		<p></p>
		<p>
	<asp:Button ID="Button2" runat="server" Text="Example Problems"  class="button" PostBackUrl="/Examples/Section8" padding="2px"/>
	<asp:Button ID="Button3" runat="server" Text="Next Chapter"  class="button" PostBackUrl="Section9" padding ="2px"/>
</p>
</asp:Content>
