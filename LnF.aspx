<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="LnF.aspx.cs" Inherits="LnF" Title="Lost and Found" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 154px;
        }
        .style3
        {
            width: 154px;
            height: 34px;
        }
        .style8
    {
        width: 283px;
    }
    .style10
    {
        height: 18px;
    }
    .newStyle1
    {
        font-family: Sylfaen;
        font-size: medium;
        color: #800000;
        left:auto;
    }
        .style11
        {
            width: 311px;
        }
    </style>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table>        
        <tr>
            <td class="style8">
                <span class="style1" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
                
                </span></td>
        </tr>            
        </table>
            <caption>
                <span class="style1" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
                <Table style="width: 989px">
                    <tr>
                        <td align="center" bgcolor="Maroon" class="style10" 
                            style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                            <center style="width: 996px">
                                Lost &amp; Found</center>
                        </td>
                    </tr>
                </Table>
                <br />
                <Table style="width: 180px; height: 7px;">
                    <tr>
                        <td align="center" bgcolor="Maroon" class="style3" 
                            style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                            <center style="width: 229px; height: 14px;">
                                Cab Information</center>
                        </td>
                    </tr>
                </Table>
                </span>
                <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="newStyle1" 
                            Text="Enter the Booking ID "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox1" runat="server" TabIndex="1"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox1" FilterType="Numbers">
                        </cc1:FilteredTextBoxExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="*" SetFocusOnError="True" 
                            ValidationGroup="Group1"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label19" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Show Details" TabIndex="2" BackColor="Maroon" Font-Bold="True" 
                            Font-Names="Lucida Console" ForeColor="AntiqueWhite" 
                            ValidationGroup="Group1" />
                            </td>
                            </tr>
                        <caption style="height: 5px; width: 610px">
                            
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label2" runat="server" CssClass="newStyle1" Text="City " 
                                        Visible="False"></asp:Label>
                                </td>
                                <td align="left" class="style11">
                                    <asp:Label ID="Label14" runat="server"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label4" runat="server" CssClass="newStyle1" 
                                        Text="Pickup Address " Visible="False"></asp:Label>
                                    &nbsp;
                                </td>
                                <td align="left" class="style11">
                                    <asp:Label ID="Label15" runat="server"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <td>
                                        <asp:Label ID="Label3" runat="server" CssClass="newStyle1" 
                                            Text="Destination Address " Visible="False"></asp:Label>
                                    </td>
                                    
                                <td>
                                    <asp:Label ID="Label18" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label5" runat="server" CssClass="newStyle1" 
                                        Text="Travelling Date " Visible="False"></asp:Label>
                                </td>
                                <td align="left" class="style11">
                                    <asp:Label ID="Label16" runat="server"></asp:Label>
                                    &nbsp;
                                </td>
                                <td align="left">
                                    <asp:Label ID="Label6" runat="server" CssClass="newStyle1" 
                                        Text="Travelling Time" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label17" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <caption>
                                <br />
                                <tr>
                                    <td>
                                        <span class="style1" 
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
                                        </span>
                                    </td>
                                </tr>
                            </caption>
                    </caption>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                        <Table style="width: 236px">
                            <tr>
                                <td align="center" bgcolor="Maroon" class="style3" 
                                    style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                                    <center style="width: 229px">
                                        Personal Information</center>
                                </td>
                            </tr>
                        </Table>
                        </span>
                    </td>
                </tr>
                <caption>
                    <br />
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label8" runat="server" Text="Enter Your Name: " 
                                CssClass="newStyle1"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="TextBox7" runat="server" TabIndex="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="*" SetFocusOnError="True" 
                                ValidationGroup="Group2"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Enter Your Email: " 
                                CssClass="newStyle1"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="TextBox8" runat="server" TabIndex="4"></asp:TextBox>
                        </td>
                    </tr>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Invalid Email ID" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        SetFocusOnError="True" ValidationGroup="Group2"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label10" runat="server" Text="Enter Your Contact Number: " 
                                CssClass="newStyle1"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="TextBox9" runat="server" TabIndex="5"></asp:TextBox>
                            <cc1:MaskedEditExtender ID="TextBox9_MaskedEditExtender" runat="server" MaskType="Number" Mask="99999999999999" AcceptNegative="None" 
                                 Enabled="True" 
                                TargetControlID="TextBox9">
                            </cc1:MaskedEditExtender>
                            <cc1:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" TargetControlID="TextBox9" FilterType="Numbers">
                            </cc1:FilteredTextBoxExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox9" ErrorMessage="*" SetFocusOnError="True" 
                                ValidationGroup="Group2"></asp:RequiredFieldValidator>
                            <span class="style1" 
                                style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
                            <br />
                            <br />
                            <br />
                            <Table style="width: 236px">
                                <tr>
                                    <td align="center" bgcolor="Maroon" class="style3" 
                                        style="font-family: Aharoni; color: #FAEBD7; font-size: medium; ">
                                        <center style="width: 229px">
                                            Lost Items Details</center>
                                    </td>
                                </tr>
                            </Table>
                            </span>
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label13" runat="server" Text="Enter the Item Description: " 
                                    CssClass="newStyle1"></asp:Label>
                                &nbsp;&nbsp;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="TextBox10" runat="server" Height="68px" TextMode="MultiLine" 
                                    Width="149px" TabIndex="6"></asp:TextBox>
                            </td>
                        </tr>
                    </caption>
                </caption>
            </caption>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage="*" SetFocusOnError="True" 
                ValidationGroup="Group2"></asp:RequiredFieldValidator>
            <br />
        <br />   
            &nbsp;<center>
                <asp:Button ID="Button1" runat="server" Text="Submit" 
                    BackColor="Maroon" ForeColor="AntiqueWhite" onclick="Button1_Click" 
                    TabIndex="7" Font-Bold="True" Font-Names="Lucida Console" 
                    ValidationGroup="Group2" /></center>
            
        </ContentTemplate>
             </asp:UpdatePanel>        
    
</asp:Content>

