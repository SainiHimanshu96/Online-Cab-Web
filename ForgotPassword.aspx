<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Forgot Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;            
        }
        .style2
        {
            width: 568px;
        }
        .style3
        {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 987px">
    <center>
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <br />
        <Table style="width: 989px"><tr><td class="style2">&nbsp;</td></tr><tr>
            <td align="center" bgcolor="Maroon" class="style2" 
                style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                <Center style="width: 996px">Forgot Password</Center></span></td></tr><tr>
                <td class="style2">&nbsp;</td></tr></Table><br />
        <br />
        <table>
        <tr>
        <td align="left" class="style3">
        <asp:Label ID="Name" runat="server" Text="User Name"></asp:Label>
        </td>
        <td align="left">
        <asp:TextBox 
                ID="User_Name" runat="server" 
                Width="160px" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="User_Name" ErrorMessage="User Name cannot be left blank!" 
                Font-Size="Small"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td align="left" class="style3">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        </tr>
        <tr>
        <td align="left" class="style3">
            Email</td>
        <td align="left">
        <asp:TextBox ID="Email" runat="server" 
                Width="160px" TextMode="SingleLine" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="Email" ErrorMessage="Email Cannot be left blank!" 
                Font-Size="Small"></asp:RequiredFieldValidator>
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="Email" ErrorMessage="Invalid Email ID!" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </span>
            <br />
        </td>
        </tr>
        <tr>
        <td align="left" class="style3">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        </tr>
        <tr>
        <td align="left" class="style3">
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
            Password Hint</span></td>
        <td align="left">
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <asp:TextBox ID="PwdHint" runat="server" 
                Width="160px" TextMode="SingleLine" TabIndex="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="PwdHint" ErrorMessage="Password Hint cannot be left blank!" 
                Font-Size="Small"></asp:RequiredFieldValidator>
        </span>
        </td>
        </tr>
        </table>        
        </span>
        <br />
        <div align="left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" Text="Submit" Width="131px" Font-Bold="True" 
                    Font-Names="Lucida Console" ForeColor="AntiqueWhite" 
                onclick="Submit_Click" TabIndex="4" BackColor="Maroon" />
        
            <br />
            <br />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Maroon"></asp:Label>
            <br />
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Visible="False" ><a href="Default.aspx">Click here</a> to move to Home page to login.</asp:Label>
    </div>
</asp:Content>

