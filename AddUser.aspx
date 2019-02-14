<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" Title="Register User" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
            width: 689px;
        }
        style4
        {
            font-family: Sylfaen;
            font-size: medium;
            color: #800000;
            border-style: double;
            border-color: #800000;
        }
        style4
        {
            font-family: Sylfaen;
            font-size: medium;
            color: #800000;
            border-style: double;
            border-color: #800000;
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
            width: 444px;
        }
        .style7
        {
            width: 498px;
        }
        .strpoor
    {
    	background-color:Red;
    	font-weight:bolder;
    	color:Black;    	    	    	    	   	    	    	    	
    }
    .straverage
    {
    	background-color:Yellow;
    	font-weight:bold;
    	color:Black;    	
    }
    .strunbreakable
    {
    	background-color:Green;
    	font-weight:normal;
    	color:Black;    	
    }
        #Reset1
        {
            width: 117px;
            height: 26px;
            margin-right: 1px;
            margin-top: 0px;
        }
        .style8
        {
            width: 431px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <center>
            &nbsp;<br />
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <Table style="width: 989px">
        <tr>
            <td align="center" bgcolor="Maroon" class="style2" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <Center style="width: 996px">New User Registration </Center></span>
        </td></tr></Table>
    </span>
            <br />
            <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <Table style="width: 703px"><tr>
            <td align="center" bgcolor="Maroon" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; " 
                colspan="2">
                <Center style="width: 702px">Personal Information</Center></span></td></tr><tr>
            <td align="left" class="style7" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:Label ID="Last_Name0" runat="server" Text="First Name" 
                    Font-Names="Sylfaen" Font-Size="Medium" BorderColor="Maroon" 
                    ForeColor="Maroon" CssClass="newStyle1"></asp:Label>
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="FirstName" runat="server" Width="156px" 
                    style="margin-left: 0px" TabIndex="1"></asp:TextBox>                            
                <cc1:FilteredTextBoxExtender ID="FirstName_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="FirstName" FilterType="UppercaseLetters, LowercaseLetters">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstName" EnableTheming="True" 
                    ErrorMessage="First Name cannot be left blank!" Font-Bold="False" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
            </td></tr><tr>
            <td align="left" class="style7" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:Label ID="Last_Name" runat="server" Text="Last Name" 
                    Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>            
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="LastName" runat="server" Width="155px" 
                    TabIndex="2"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="LastName_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="LastName" FilterType="LowercaseLetters, UppercaseLetters">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastName" ErrorMessage="Last Name cannot be left blank!" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
            </td></tr><tr>
            <td align="left" class="style7" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:Label ID="Sex" runat="server" Text="Sex" Font-Names="Times New Roman" 
                    Font-Size="Medium" CssClass="newStyle1"></asp:Label>     
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Small" 
                    ForeColor="Maroon" Height="16px" RepeatDirection="Horizontal" TabIndex="3" 
                    Width="214px">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td></tr><tr>
            <td align="left" class="style7" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:Label ID="Date_Birth" runat="server" Text="Date of Birth" 
                    Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="DOB" runat="server" Width="156px" 
                    TabIndex="4"></asp:TextBox>
                    <cc1:TextBoxWatermarkExtender ID="DOB_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="DOB" WatermarkText="MM/DD/YYYY">
                </cc1:TextBoxWatermarkExtender>
                    <img src="cal.png" width="25" height="20" id="Image1" />
                <cc1:CalendarExtender ID="DOB_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="DOB" PopupButtonID="Image1" Format="MM/dd/yyyy" >
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DOB" ErrorMessage="Date of birth cannot be left blank!" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Blue" 
                    ></asp:Label>
            </td></tr><tr>
            <td align="left" class="style7" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:Label ID="Email_ID" runat="server" Text="Email" 
                    Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="EmailID" runat="server" Width="156px" 
                    TabIndex="5"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="EmailID" ErrorMessage="Invalid Email ID!" Font-Size="Small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td></tr>
            </Table>

    &nbsp;</span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
            <Table style="width: 703px">
            <tr>
                <td align="center" bgcolor="Maroon" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; " colspan="2">
                <Center style="width: 702px">Account Information</Center></span></td></tr>
             <tr><td align="left" class="style8" 
                     style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                    <asp:Label ID="User_Name" runat="server" Text="User Name" 
                        Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
                </td>
                <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="UserName" runat="server" Width="156px" TabIndex="6"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Visible="False" 
                        Font-Size="Small"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="UserName" ErrorMessage="User Name cannot be left blank!" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td align="left" class="style8" 
                    style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                    <asp:Label ID="Password" runat="server" Text="Password" 
                        Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>   
                </td>
                <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="PwdBox" runat="server" Width="156px" TextMode="Password" 
                        TabIndex="7"></asp:TextBox>
                    <cc1:PasswordStrength ID="PwdBox_PasswordStrength" runat="server" 
                        Enabled="True" TargetControlID="PwdBox" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" 
                                    TextStrengthDescriptions="Poor; Average; Unbreakable"     
                                    MinimumUpperCaseCharacters="2" MinimumLowerCaseCharacters="2" >
                    </cc1:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="PwdBox" ErrorMessage="Password cannot be left blank!" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>        
                </td></tr>
                <tr>
            <td align="left" class="style8" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
             <asp:Label ID="Confirm_Password" runat="server" Text="Confirm Password" 
                Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                    </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="ConfirmPwdBox" runat="server" Width="156px" 
                    TextMode="Password" TabIndex="8"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="PwdBox" ControlToValidate="ConfirmPwdBox" 
                    ErrorMessage="Passwords do not match!" Font-Size="Small"></asp:CompareValidator>
                    </td></tr><tr>
            <td align="left" class="style8" 
                        style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
            <asp:Label ID="Password_Hint" runat="server" Text="Enter Password Hint" 
                Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                    </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <asp:TextBox ID="PwdHint" runat="server" Width="156px" TabIndex="9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="PwdHint" ErrorMessage="Password Hint Cannot be Left Blank!" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
                    </td></tr></Table>

    </span>
             <br />
            <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <Table style="width: 703px"><tr>
            <td align="center" bgcolor="Maroon" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; " 
                colspan="2">
                
                <Center style="width: 702px">Contact Information</Center></span></td></tr><tr>
            <td align="left" class="style5" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
            <asp:Label ID="Address" runat="server" Text="Address" 
                Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
            </td>
            <td align="left" class="style3" style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">                
                <asp:TextBox ID="Add" runat="server" Width="156px" TextMode="MultiLine" 
                    style="margin-left: 0px" TabIndex="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Add" ErrorMessage="Address cannot be left blank!" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
             </td></tr><tr>
            <td align="left" class="style5" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
            <asp:Label ID="State" runat="server" Text="State" Font-Names="Times New Roman" 
                Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
                <asp:TextBox 
                ID="StateBox" runat="server" Width="156px" TabIndex="11"></asp:TextBox>
                </td></tr><tr>
            <td align="left" class="style5" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
            <asp:Label ID="City" runat="server" Text="City" Font-Names="Times New Roman" 
                Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" TabIndex="12" 
                    >                    
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Bangalore</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Please select a city!" 
                    Font-Size="Small"></asp:RequiredFieldValidator>
                </td></tr><tr>
            <td align="left" class="style5" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
            <asp:Label ID="Pin_Code" runat="server" Text="Pin Code" 
                Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
                <asp:TextBox 
                ID="PinCode" runat="server" Width="156px" TabIndex="13" MaxLength="6"></asp:TextBox>                
                <cc1:FilteredTextBoxExtender ID="PinCode_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="PinCode" FilterType="Numbers">
                </cc1:FilteredTextBoxExtender>
                </td></tr><tr>
            <td align="left" class="style5" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
                <asp:Label ID="Contact_Number" runat="server" Text="Contact Number" 
                Font-Names="Times New Roman" Font-Size="Medium" CssClass="newStyle1"></asp:Label>
            
                </td>
            <td align="left" class="style3" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                
                <asp:TextBox 
                ID="ContactNo" runat="server" Width="159px" MaxLength="10" TabIndex="14"></asp:TextBox>                                
                <cc1:FilteredTextBoxExtender ID="ContactNo_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="ContactNo" FilterType="Numbers">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="ContactNo" 
                    ErrorMessage="Contact Number cannot be left blank!" Font-Size="Small"></asp:RequiredFieldValidator>
                </td></tr></Table>

    </span>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <center>
            <asp:Button ID="SubmitButton" runat="server" Text="Register" Font-Bold="True" 
                    Font-Names="Lucida Console" ForeColor="AntiqueWhite" CssClass="newStyle1" onclick="SubmitButton_Click" 
                    TabIndex="15" BackColor="Maroon" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" class="newStyle1" 
                    style="font-family: 'Lucida Console'; color: #FAEBD7; font-weight: bold; background-color: #800000;" 
                    type="reset" value="Reset" tabindex="16" /><br />
                <br />
                <asp:Label ID="Label2" runat="server"                     
                    Visible="False">You have been registered. <a href="Default.aspx">Click here</a> to move to Home page.</asp:Label>
            </center>
            </div>
            </Center>

  

</asp:Content>






