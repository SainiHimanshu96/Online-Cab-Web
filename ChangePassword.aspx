<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="LostPassword" Title="Lost Password" %>

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
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <Center style="width: 996px">Change Password</Center></span></td></tr><tr>
                <td class="style2">&nbsp;</td></tr></Table>
        <br />
        <br />
        <div align="left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>
        <table>
        <tr>
        <td align="left" class="style3">
        <asp:Label ID="Name" runat="server" Text="User Name*"></asp:Label>
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
        <asp:Label ID="OldPwd" runat="server" Text="Old Password*"></asp:Label>
        </td>        
        <td align="left">
        <asp:TextBox ID="Old_Pwd" runat="server" 
                Width="160px" TextMode="Password" TabIndex="2"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="Old_Pwd" ErrorMessage="Password cannot be left blank!" 
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
        <asp:Label ID="NewPwd" runat="server" Text="New Password*"></asp:Label> 
        </td>
        <td align="left">
        <asp:TextBox ID="New_Pwd" runat="server" 
                Width="160px" TextMode="Password" TabIndex="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="New_Pwd" ErrorMessage="Password cannot be left blank!" 
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
        <asp:Label ID="ConfirmPwd" runat="server" Text="Confirm New Password*"></asp:Label>
        </td>
        <td align="left">
        <asp:TextBox ID="Confirm_Pwd" runat="server" 
                Width="160px" TextMode="Password" TabIndex="4"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="New_Pwd" ControlToValidate="Confirm_Pwd" 
                ErrorMessage="Passwords do not match!" Font-Size="Small"></asp:CompareValidator>
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
        <asp:Label ID="PwdHint" runat="server" Text="New Password Hint"></asp:Label>
        </td>
        <td align="left">
        <asp:TextBox ID="Pwd_Hint" runat="server" 
                Width="160px" TextMode="SingleLine" TabIndex="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="Pwd_Hint" ErrorMessage="Password Hint cannot be empty!" 
                Font-Size="Small"></asp:RequiredFieldValidator>
        </td>
        </tr>
        </table>        
        </span>
        <br />
        <div align="left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" Text="Submit" Width="131px" Font-Bold="True" 
                    Font-Names="Lucida Console" ForeColor="AntiqueWhite" 
                onclick="Submit_Click" TabIndex="6" BackColor="Maroon" />
        
            <br />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Visible="False">Your password has been changed. <a href="Default.aspx">Click here</a> to move to Home page.</asp:Label></div>
    </div>
</asp:Content>

