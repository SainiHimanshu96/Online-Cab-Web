<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="farecalc.aspx.cs" Inherits="farecalc" Title="Fare Calculator" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 489px;
        }
        .style3
        {
            width: 372px;
        }
        .newStyle1
        {
            font-family: sylfaen;
            font-size: medium;
            color: #800000;            
            left:auto;            
        }
        .style5
        {
            font-family: sylfaen;
            font-size: medium;
            color: #800000;
            left: auto;
            width: 486px;
        }
        .style6
        {
            width: 486px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<Table style="width: 989px">
        <tr>
            <td align="center" bgcolor="Maroon" class="style2" 
                style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                <Center style="width: 996px">Calculate Your Fare </Center></span>
        </td></tr></Table>
        
        
        <table style="width: 996px">
        <tr><td align="left" class="style3">&nbsp;</td>
        <td align="left">&nbsp;</td></tr>
        <tr><td align="left" class="style3">
            <asp:Label ID="Label2" runat="server" 
                Text="Enter Distance (in  Kms)" CssClass="newStyle1"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox1" runat="server" TabIndex="1" 
                MaxLength="3"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox1" FilterType="Numbers">
            </cc1:FilteredTextBoxExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td></tr>
        
        <tr align="left"><asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            oncheckedchanged="CheckBox1_CheckedChanged" Text="Waiting Required " 
                ForeColor="Maroon" /></tr>
        
        <tr align="left"><td align="left" class="style3"><asp:Label ID="Label3" 
                runat="server" Text="Enter Waiting Time (in minutes) " 
            Visible="False" CssClass="newStyle1"></asp:Label></td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server" Visible="False" 
                TabIndex="2" MaxLength="3"></asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox2" FilterType="Numbers">
            </cc1:FilteredTextBoxExtender>
            </td></tr>        
        <tr><td align="center" class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" 
                onclick="Button1_Click" Text="Get Fare" TabIndex="3" BackColor="Maroon" 
                Font-Bold="True" Font-Names="Lucida Console" ForeColor="AntiqueWhite" 
                Height="30px" /></td></tr>        
        <tr><td align="center" class="style3">
            &nbsp;</td></tr>        
        <tr><td align="center" class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" BackColor="Maroon" 
                Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label></td></tr>        
        </table>
        <table align="center" style="width: 994px">
        <tr><td class="style5">
        Flag Down Fare (First Km)
        </td>
        <td class="newStyle1">Rs 15/-</td></tr>
        <tr><td class="style5">
Subsequent Fare (Per Km)</td>
<td class="newStyle1">Rs 13/-</td>
        </tr>
        <tr><td class="style5">
        Waiting Charges</td>
        <td class="newStyle1">
        Rs 1/minute</td>
        </tr>
        <tr>
        <td class="style5">
        Night Charges (11 pm to 5 am)
        </td>
        <td class="newStyle1">
        25% Extra on Total Charge
        </td>
        </tr>
        <tr><td align="center" class="style6">&nbsp;</td></tr>        
        <tr><td class="style6">
            <asp:Label ID="Label4" runat="server" Text="*Night Charges to be calculated manually."></asp:Label></td></tr>
        </table>
</asp:Content>

