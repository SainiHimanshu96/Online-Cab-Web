<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Home Page" EnableViewStateMac="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {}
        .style3
        {
            height: 133px;
            width: 326px;
        }
        .style4
        {
            height: 131px;
            width: 326px;
        }
        .style5
        {
            text-decoration: underline;
        }
        .style6
        {
            width: 299px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
            <ContentTemplate>
    <table style="height: 322px; width: 994px;">
    <tr>
    <td class="style4" valign="top">
    <asp:Panel ID="Login1" runat="server" BackColor="BurlyWood" BorderColor="Maroon" 
        BorderPadding="4" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="Maroon" TextLayout="TextOnTop" Width="292px">
        <TextBoxStyle Font-Size="0.8em" />
            <table border="0" cellpadding="4" cellspacing="0" 
                style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width:284px;">
                            <tr>
                                <td align="center" 
                                    
                                    style="color:AntiqueWhite;background-color:Maroon;font-size:0.9em;font-weight:bold;" 
                                    class="style6">
                                    Log In</td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                    Name:</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="1.2em" TabIndex="1"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required" 
                                        ToolTip="User Name is required." ValidationGroup="Login1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:TextBox ID="Password" runat="server" Font-Size="1.2em" TextMode="Password" 
                                        TabIndex="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required" 
                                        ToolTip="Password is required." ValidationGroup="Login1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" align="center" style="color:Red;">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    <asp:Button ID="LoginButton" runat="server" BackColor="Maroon" 
                                        BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" 
                                        Font-Names="Lucida Console" ForeColor="AntiqueWhite" 
                                        onclick="LoginButton_Click" Text="Log In" ValidationGroup="Login1" 
                                        Font-Bold="True" Height="24px" TabIndex="3" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style6">
                                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" 
                                        NavigateUrl="~/AddUser.aspx" TabIndex="4">Register User
                                    </asp:HyperLink>
                                    &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Maroon" 
                                        NavigateUrl="~/ForgotPassword.aspx" TabIndex="5">Forgot Password</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Maroon" 
                                        NavigateUrl="~/ChangePassword.aspx" TabIndex="6">Change 
                                    Password</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <center><asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label></center>
                    </td>
                </tr>
            </table>        
    </asp:Panel>
      
      
        <cc1:RoundedCornersExtender ID="logi_RoundedCornersExtender" runat="server" 
            Enabled="True" TargetControlID="Login1" Corners="TopLeft" Radius="12" BorderColor="Maroon">
        </cc1:RoundedCornersExtender>
      
    <td class="style4" valign="top">
        &nbsp;<td class="style2" rowspan="3" valign="top">
               <asp:Panel ID="Login2" runat="server" BackColor="BurlyWood" BorderColor="Maroon" 
        BorderPadding="4"  Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="Maroon" TextLayout="TextOnTop" Width="686px" 
                    Height="400px">
        
            <table border="0" cellpadding="4" cellspacing="0" 
                style="border-collapse:collapse; height: 359px;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width:681px; height: 365px;">
                            <tr>
                                <td align="center" 
                                    style="color:White;background-color:Maroon;font-size:0.9em;font-weight:bold;">
                                    <asp:Label ID="Label2" runat="server" Font-Names="Lucida Console" 
                                        Font-Size="X-Large" Text="Book a Cab Online" ForeColor="AntiqueWhite"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Now Available in Multiple Cities.</td>
                            </tr>
                            <tr>
                                <td align="char" valign="middle">
                                    Pick Up City:&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="1.2em" DataTextField="Pickup_Source" 
                                        DataValueField="Pickup_Source" TabIndex="7">                                    
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Chennai</asp:ListItem>
                                    <asp:ListItem>Bangalore</asp:ListItem>
                                    <asp:ListItem>Mumbai</asp:ListItem>
                                    <asp:ListItem>Hyderabad</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pick Up Location:&nbsp;
                                    <asp:TextBox ID="Location" runat="server" Font-Size="1.2em" TabIndex="8"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Location" ErrorMessage="*"></asp:RequiredFieldValidator>
                                   Landmark:&nbsp;
                                    <asp:TextBox ID="UserName0" runat="server" Font-Size="1.2em" TabIndex="9"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="UserName0" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    No. of Cabs:&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="1.2em" 
                                         TabIndex="10">
                                    <asp:ListItem>1</asp:ListItem> 
                                    <asp:ListItem>2</asp:ListItem> 
                                    <asp:ListItem>3</asp:ListItem> 
                                    <asp:ListItem>4</asp:ListItem> 
                                    <asp:ListItem>5</asp:ListItem>                                    
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Destination:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UserName1" runat="server" Font-Size="1.2em" TabIndex="11"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="UserName1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    Contact No:
                                    <asp:TextBox ID="UserName2" runat="server" Font-Size="1.2em" TabIndex="12" 
                                        MaxLength="10"></asp:TextBox>                                                                                                        
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="UserName2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <cc1:FilteredTextBoxExtender ID="UserName2_FilteredTextBoxExtender" 
                                        runat="server" Enabled="True" TargetControlID="UserName2" FilterType="Numbers">
                                    </cc1:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UserName3" runat="server" Font-Size="1.2em" TabIndex="13"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="UserName3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                        runat="server" ControlToValidate="UserName3" ErrorMessage="Invalid Email ID!" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Pick Up Date:&nbsp;
                                    <asp:TextBox ID="UserName4" runat="server" Font-Size="1.2em" TabIndex="14"></asp:TextBox>
                                    
                                    <cc1:TextBoxWatermarkExtender ID="UserName4_TextBoxWatermarkExtender" 
                                        runat="server" Enabled="True" TargetControlID="UserName4" 
                                        WatermarkText="MM/DD/YYYY">
                                    </cc1:TextBoxWatermarkExtender>
                                    <cc1:CalendarExtender ID="Date_CalendarExtender" runat="server" Enabled="True" 
                                        PopupButtonID="Img1" TargetControlID="UserName4">
                                    </cc1:CalendarExtender>
                                    <img ID="Img1" alt="Calender" src="cal.png" style="width: 25px; height: 20px" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="UserName4" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pick Up Time:&nbsp;Hrs:
                                    <asp:DropDownList ID="UserName5" runat="server">
                                        <asp:ListItem>00</asp:ListItem> 
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>                                                                              
                                    </asp:DropDownList>
                                    &nbsp; Min:
                                    <asp:DropDownList ID="UserName6" runat="server">
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>                                    
                                    </asp:DropDownList>
                                    <br />                                    
                                </td>
                            </tr>                            
                            <tr>
                                <td>
                                    Are you an Existing Member:
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        Height="16px" Width="164px" TabIndex="17">
                                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                                        <asp:ListItem>No I am Guest User!</asp:ListItem>
                                    </asp:RadioButtonList>                                
                                </td>                               
                            </tr>    
                            <tr>
                                <td align="center" style="color:Red;">
                                    <asp:Button ID="Button1" runat="server" BorderColor="Maroon" 
                                        BorderStyle="Ridge" Font-Names="Lucida Console" Text="Book Cab" 
                                        ForeColor="AntiqueWhite" onclick="Button1_Click" BackColor="Maroon" 
                                        Font-Bold="True" />
                                </td>
                            </tr>
                          
                            <tr>
                            <td align="center">
                            <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                            </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        
        
        <TitleTextStyle BackColor="Maroon" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Panel>
                <cc1:RoundedCornersExtender ID="Login2_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Login2" Radius="12" BorderColor="Maroon"  Corners="TopRight">
                </cc1:RoundedCornersExtender>
            
        </td></tr> 
    
    
    <tr>
    <td class="style3">
        </tr> 
    
    
    <td class="style3">
        &nbsp;</tr> 
    
    
    </table>
    <div> 
        <center></center>
        <br />
    </div>
   </ContentTemplate>
        </asp:UpdatePanel>
  </asp:Content>



