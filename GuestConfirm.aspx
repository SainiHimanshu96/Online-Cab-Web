<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="GuestConfirm.aspx.cs" Inherits="GuestConfirm" Title="Guest Confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 588px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <center><asp:Label ID="Label2" runat="server" Font-Size="X-Large" 
            ForeColor="Maroon" ></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="98px" Width="135px" 
            BackColor="BurlyWood" ForeColor="Maroon" Font-Bold="True" Font-Size="Small" >
        </asp:ListBox>
    </center>
</div>

</asp:Content>

