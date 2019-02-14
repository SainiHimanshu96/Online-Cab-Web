<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" Title="Confirmed Booking" EnableViewStateMac ="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 758px;
        }
        .style2
        {
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 985px">
<tr>
<td align="left" class="style1">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </td>
    <td align="right" class="style2">
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
    </td>
</tr>
<tr>
<td align="left" class="style1">
    &nbsp;</td>
    <td align="right" class="style2">
        &nbsp;</td>
</tr>
</table>
<div>
    <center><asp:Label ID="Label2" runat="server" Font-Size="X-Large" 
            ForeColor="Maroon" ></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" BackColor="BurlyWood" 
            ForeColor="Maroon" Height="98px" 
            Width="106px" Font-Bold="True" Font-Size="Small"></asp:ListBox>
        <br /><br />
    <asp:Label ID="Label3" runat="server"><a href="MyCabBooking.aspx">Click here</a> to view your booking details.</asp:Label></center>
</div>
<div style="height: 1px; width: 822px">
</div>
</asp:Content>

