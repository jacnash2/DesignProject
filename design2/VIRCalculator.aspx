<%@ Page Title="VIR Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VIRCalculator.aspx.cs" Inherits="design2.VIRCalculator" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>



    <div>
        
			Answers rounded to this many decimal places:
			<asp:DropDownList ID="listDecimalPlaces" runat="server" class="button">
				<asp:ListItem>0</asp:ListItem>
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
				<asp:ListItem>6</asp:ListItem>
				<asp:ListItem>7</asp:ListItem>
				<asp:ListItem>8</asp:ListItem>
				<asp:ListItem>9</asp:ListItem>
				<asp:ListItem>10</asp:ListItem>
			</asp:DropDownList>
			<br />
			<br />
			<asp:TextBox ID="txtLine1Amps" runat="server" Width="60px" class="button"></asp:TextBox>
			Amps *
			<asp:TextBox ID="txtLine1Ohms" runat="server" Width="60px" class="button"></asp:TextBox>
			Ohms =
			<asp:Label ID="lblVolts" runat="server" BorderStyle="Solid" BorderWidth="1px"> </asp:Label>
&nbsp;<br />
			<br />
			<asp:TextBox ID="txtLine2Volts" runat="server" Width="60px" class="button"></asp:TextBox>
			Volts /
			<asp:TextBox ID="txtLine2Ohms" runat="server" Width="60px" class="button"></asp:TextBox>
			Ohms =
			<asp:Label ID="lblAmps" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
			&nbsp;<br />
			<br />
			<asp:TextBox ID="txtLine3Volts" runat="server" Width="60px" class="button"></asp:TextBox>
			Volts /
			<asp:TextBox ID="txtLine3Amps" runat="server" Width="60px" class="button"></asp:TextBox>
			Amps =&nbsp;
			<asp:Label ID="lblOhms" runat="server" BorderStyle="Solid" BorderWidth="1px"></asp:Label>
			&nbsp;<br />
			<br />
			<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" class="button" CssClass="col-xs-offset-0"/>
			<br />
        </div>



</asp:Content>