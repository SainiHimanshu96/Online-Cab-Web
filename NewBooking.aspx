<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="NewBooking.aspx.cs" Inherits="NewBooking" Title="New Booking" EnableViewStateMac="false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 467px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 922px">
<tr>
<td align="left">
    <asp:Label ID="Label1" runat="server"></asp:Label>    
</td>
<td align="right" class="style1">
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        ValidationGroup="Group1">Logout</asp:LinkButton>
</td>
</tr>
</table>
<center>
    <asp:Panel ID="Login2" runat="server" BackColor="BurlyWood" BorderColor="Maroon" 
        BorderPadding="4"  Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="Maroon" TextLayout="TextOnTop" Width="918px" 
                    Height="255px" HorizontalAlign="Center">
        
            <table border="0" cellpadding="4" cellspacing="0" 
                style="border-collapse:collapse; height: 281px; width: 757px;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width:904px;">
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
                                <td align="left" valign="middle">
                                    Pick Up City:
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="1.2em" 
                                        DataTextField="Pickup_Source" 
                                        DataValueField="Pickup_Source" TabIndex="1">                                    
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Chennai</asp:ListItem>
                                    <asp:ListItem>Bangalore</asp:ListItem>
                                    <asp:ListItem>Mumbai</asp:ListItem>
                                    <asp:ListItem>Hyderabad</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pick Up Location:&nbsp;
                                    <asp:TextBox ID="Location" runat="server" Font-Size="1.2em" TabIndex="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="Location" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Landmark:&nbsp;&nbsp;
                                    <asp:TextBox ID="UserName0" runat="server" Font-Size="1.2em" TabIndex="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="UserName0" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" valign="middle">
                                    No. of Cabs:
                                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="1.2em" 
                                        TabIndex="4">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem> 
                                    <asp:ListItem>3</asp:ListItem> 
                                    <asp:ListItem>4</asp:ListItem> 
                                    <asp:ListItem>5</asp:ListItem>                                     
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Destination:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    <asp:TextBox ID="UserName1" runat="server" Font-Size="1.2em" TabIndex="5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="UserName1" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Contact No:&nbsp;
                                    <asp:TextBox ID="UserName2" runat="server" Font-Size="1.2em" TabIndex="6" 
                                        MaxLength="10"></asp:TextBox>  
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="UserName2" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
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
                                <td align="left" valign="middle">
                                    Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UserName3" runat="server" Font-Size="1.2em" TabIndex="7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="UserName3" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="UserName3" ErrorMessage="Invalid Email ID!" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    Pick Up Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="UserName4" runat="server" Font-Size="1.2em" TabIndex="8"></asp:TextBox>
                                    <cc1:TextBoxWatermarkExtender ID="UserName4_TextBoxWatermarkExtender" 
                                        runat="server" Enabled="True" TargetControlID="UserName4" WatermarkText="MM/DD/YYYY">
                                    </cc1:TextBoxWatermarkExtender>
                                    <cc1:CalendarExtender ID="Date_CalendarExtender" runat="server" Enabled="True" 
                                        TargetControlID="UserName4" Format="dd/MM/yyyy" PopupButtonID="Img1">
                                    </cc1:CalendarExtender><img ID="Img1" alt="Calender" src="cal.png" style="width: 25px; height: 20px" /><asp:RequiredFieldValidator 
                                        ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="UserName4" ErrorMessage="*" SetFocusOnError="True" 
                                        ValidationGroup="Group2"></asp:RequiredFieldValidator>
                                    &nbsp;Pick Up Time:&nbsp; Hrs: &nbsp;
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
                                </td>
                               </tr>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" style="color:Red;">
                                    <br />
                                    <asp:Button ID="Button1" runat="server" BorderColor="Maroon" 
                                        BorderStyle="Ridge" Font-Names="Lucida Console" Text="Book Cab" 
                                        ForeColor="AntiqueWhite" onclick="Button1_Click" TabIndex="11" 
                                        BackColor="Maroon" Font-Bold="True" ValidationGroup="Group2" />
                                    <br />
                                    <br />
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
    </center>
                <cc1:RoundedCornersExtender ID="Login2_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Login2" Radius="12" BorderColor="Maroon"  Corners="All">
                </cc1:RoundedCornersExtender>
</asp:Content>

