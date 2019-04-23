<%@ Page Title="SI Units" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SI.aspx.cs" Inherits="design2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
	<h4 style="margin-left: 40px; margin-top: 40px; height: auto; font-family: 'Times New Roman';" class="auto-style16">
        International Syststem (S.I.) Units</h4>
        <table border="1" style="float:left; width: 357px; margin-left: 200px; margin-bottom: 15px; height: 164px;">
            <tr>
                <td style="width: 80px" class="text-left"><strong>Prefix</strong></td>
                <td style="width: 96px" class="text-left"><strong>Abbr.</strong></td>
                <td style="width: 176px" class="text-left"><strong>Factor</strong></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Tera-</td>
                <td style="width: 96px" class="text-left">T</td>
                <td style="width: 176px" class="text-left">10<sup>12</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Giga-</td>
                <td style="width: 96px" class="text-left">G</td>
                <td style="width: 176px" class="text-left">10<sup>9</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Mega-</td>
                <td style="width: 96px" class="text-left">M</td>
                <td style="width: 176px" class="text-left">10<sup>6</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Kilo-</td>
                <td style="width: 96px" class="text-left">k</td>
                <td style="width: 176px" class="text-left">10<sup>3</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Hecta-</td>
                <td style="width: 96px" class="text-left">h</td>
                <td style="width: 176px" class="text-left">10<sup>2</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Deka-</td>
                <td style="width: 96px" class="text-left">da</td>
                <td style="width: 176px" class="text-left">10<sup>1</sup></td>
            </tr>
            <tr>
                <td style="width: 80px; height: 21px;" class="text-left">---</td>
                <td style="width: 96px; height: 21px;" class="text-left">---</td>
                <td style="width: 176px; height: 21px;" class="text-left">10<sup>0</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Deci-</td>
                <td style="width: 96px" class="text-left">d</td>
                <td style="width: 176px" class="text-left">10<sup>-1</sup></td>
            </tr>
            <tr>
                <td style="height: 15px; width: 80px;" class="text-left">Centi-</td>
                <td style="height: 15px; width: 96px;" class="text-left">c</td>
                <td style="height: 15px; width: 176px;" class="text-left">10<sup>-2</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Mili-</td>
                <td style="width: 96px" class="text-left">m</td>
                <td style="height: 20px; width: 176px;" class="text-left">10<sup>-3</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Micro-</td>
                <td style="width: 96px" class="text-left">μ</td>
                <td style="width: 176px" class="text-left">10<sup>-6</sup></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Nano-</td>
                <td style="width: 96px" class="text-left">n</td>
                <td style="width: 176px" class="text-left">10<sup>-9</sup></td>
            </tr>
            <tr>
                <td style="width: 80px; height: 4px;" class="text-left">Pico-</td>
                <td style="width: 96px; height: 4px;" class="text-left">p</td>
                <td style="width: 176px; height: 4px;" class="text-left">10<sup>-12</sup></td>
            </tr>
        </table>
  
     <table border="1" style="float:left; width: 336px; left:50px; bottom:15px; height: 163px; margin-left: 152px;">
            <tr>
                <td style="width: 80px" class="text-left"><strong>Name</strong></td>
                <td style="width: 96px" class="text-left"><b>S</b><span style="font-weight: bold">ymbol</span></td>
                <td style="width: 176px" class="text-left"><strong>Parameter</strong></td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Watt</td>
                <td style="width: 96px" class="text-left">W</td>
                <td style="width: 176px" class="text-left">Power</td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Amp</td>
                <td style="width: 96px" class="text-left">A</td>
                <td style="width: 176px" class="text-left">Current</td>
            </tr>
            <tr>
                <td style="height: 15px; width: 80px;" class="text-left">Volt</td>
                <td style="height: 15px; width: 96px;" class="text-left">V</td>
                <td style="height: 15px; width: 176px;" class="text-left">Electric Potential</td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">ohm</td>
                <td style="width: 96px" class="text-left">Ω</td>
                <td style="height: 20px; width: 176px;" class="text-left">Electrical Resistance</td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Farad</td>
                <td style="width: 96px" class="text-left">F</td>
                <td style="width: 176px" class="text-left">Capacitance</td>
            </tr>
            <tr>
                <td style="width: 80px" class="text-left">Henry </td>
                <td style="width: 96px" class="text-left">H</td>
                <td style="width: 176px" class="text-left">Inductance</td>
            </tr>
        </table>
</asp:Content>
