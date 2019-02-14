<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" Title="Update Profile" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            font-weight: bold;            
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 980px">
    <tr>
    <td align="left">
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    </td>
    <td align="right">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
    </td>
    </tr>
    </table>
    <center>
        <span class="style1" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: capitalize; color: #800000">

    &nbsp;</span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinqDataSource 
            ID="LinqDataSource1" runat="server" ContextTypeName="LINQClassDataContext" TableName="User_Registrations" 
            Where="User_Name == @User_Name" EnableDelete="True" EnableInsert="True" 
            EnableUpdate="True">
            <WhereParameters>
                <asp:SessionParameter Name="User_Name" SessionField="user" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <div>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="LinqDataSource1" 
            ForeColor="#333333" GridLines="None" Font-Size= "Small" 
            DataKeyNames="User_Name" onrowupdating="GridView1_RowUpdating">            
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="AntiqueWhite" />
            <RowStyle BackColor="burlywood" ForeColor="#333333" />                       
            <Columns>              
                <asp:CommandField ShowEditButton="True" CausesValidation="True" />             
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                    SortExpression="First_Name"  />                
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                    SortExpression="Last_Name" />
                <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date_Of_Birth" 
                    SortExpression="Date_Of_Birth" />
                <asp:BoundField DataField="Email" HeaderText="Email" 
                    SortExpression="Email"  ApplyFormatInEditMode="True" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="State" HeaderText="State" 
                    SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="PIN_Code" HeaderText="PIN_Code" 
                    SortExpression="PIN_Code" />
                <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" 
                    SortExpression="Contact_Number" />                
            </Columns>
            <PagerStyle BackColor="Maroon" ForeColor="#333333" HorizontalAlign="Center" />
            <EmptyDataTemplate>
                First_Name
            </EmptyDataTemplate>
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="Maroon" Font-Bold="True" ForeColor="AntiqueWhite" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <center>
            </center>
            </div>
            </Center>
</asp:Content>

