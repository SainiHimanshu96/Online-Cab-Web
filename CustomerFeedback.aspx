<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="CustomerFeedback.aspx.cs" Inherits="CustomerFeedback" Title="Customer Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            font-weight: bold;            
        }
        .style2
        {
            width: 982px;
        }
        .style5
        {
            width: 133px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width: 970px">
        <center style="width: 973px">
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">
        <Table style="width: 982px; height: 15px;"><tr>
            <td align="center" class="style2" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                &nbsp;</td></tr><tr>
            <td align="center" bgcolor="Maroon" class="style2" 
                style="font-family: Aharoni; color: #FFFFFF; font-size: medium; ">
                <Center style="width: 952px; height: 13px;">Share Your Experience</Center></span></td></tr></Table>
</center>
    <table style="width: 978px">
    <tr>
    <td class="style5">
    <asp:Label ID="Label1" runat="server" Text="Enter Your Name "></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="342px" 
            TabIndex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td></tr>
    <br />
    <tr>
    <td class="style5">    
    <asp:Label ID="Label3" runat="server" 
            Text="Enter Your Feedback (Max 1000 Characters)"></asp:Label></td>
    <td>
    <span>            
        <asp:TextBox ID="Comment" runat="server" Font-Size="Medium" Height="258px" 
                TextMode="MultiLine" Width="347px" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Comment" ErrorMessage="*"></asp:RequiredFieldValidator>
            <br />
            </td>
            </tr>
            <tr><td class="style5">
                &nbsp;</td></tr>
            <br />            
            <br />
           
        </table>
        <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Submit" runat="server" Text="Submit" 
                CssClass="style1" ForeColor="AntiqueWhite" onclick="Submit_Click" 
                TabIndex="3" BackColor="Maroon" Font-Bold="True" Font-Names="Lucida Console" /> </div>           
             <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="LinqDataSource1" HorizontalAlign="Left" Width="971px" BorderColor="White" HeaderStyle-BackColor="Maroon" HeaderStyle-ForeColor="White" ForeColor="Maroon" AllowPaging="true">
                <Columns>
                    <asp:BoundField DataField="Comment" HeaderText="Comment" 
                        SortExpression="Comment" ControlStyle-Width="100" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ControlStyle-Width="10" />
                </Columns>
            </asp:GridView>
             <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="LINQClassDataContext" TableName="Feedbacks">
            </asp:LinqDataSource>
    </div>
    
    </span>
    
</asp:Content>

