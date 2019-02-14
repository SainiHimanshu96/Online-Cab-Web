<%@ Page Language="C#" MasterPageFile="~/CabMaster.master" AutoEventWireup="true" CodeFile="MyCabBooking.aspx.cs" Inherits="MyCabBooking" Title="My Booking"   %>
<%@ PreviousPageType VirtualPath="~/Default.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1
        {
            list-style-type: decimal;
            list-style-image: url('taxi.gif');
            list-style-position: inside;
            font-family: Verdana;
            font-size: xx-small;
            font-weight: normal;
            font-style: italic;
            font-variant: normal;
            text-transform: capitalize;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 1049px">
    Welcome
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        &nbsp;&nbsp;
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Maroon" 
        NavigateUrl="~/UpdateProfile.aspx">Update 
    Profile</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Maroon" 
        NavigateUrl="~/NewBooking.aspx">Make a New Booking</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
            ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    </div>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" 
        CssClass="newStyle1">    
    <div align="center" style="color:Maroon">
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Booking_ID" 
            DataSourceID="LinqDataSource1" ForeColor="AntiqueWhite" GridLines="None" 
            Font-Size= "Small" BackColor="Maroon">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="AntiqueWhite" />
            <RowStyle BackColor="burlywood" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Booking_ID" />
                <asp:BoundField DataField="Pickup_City" HeaderText="Pickup_City" 
                    SortExpression="Pickup_City" />
                <asp:BoundField DataField="Pickup_Location" HeaderText="Pickup_Location" 
                    SortExpression="Pickup_Location" />
                <asp:BoundField DataField="Landmark" HeaderText="Landmark" 
                    SortExpression="Landmark" />
                <asp:BoundField DataField="Number_Of_Cabs" HeaderText="Number_Of_Cabs" 
                    SortExpression="Number_Of_Cabs" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" 
                    SortExpression="Destination" />
                <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" 
                    SortExpression="Contact_Number" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Pickup_Date" HeaderText="Pickup_Date" 
                    SortExpression="Pickup_Date" />
                <asp:BoundField DataField="Pickup_Time" HeaderText="Pickup_Time" 
                    SortExpression="Pickup_Time" />
            </Columns>
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="Maroon" Font-Bold="True" ForeColor="AntiqueWhite" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="LINQClassDataContext" TableName="NewBookings" 
            Where="User_Name == @User_Name">
            <WhereParameters>
                <asp:SessionParameter Name="User_Name" SessionField="user" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
    </div>
    </asp:Panel>    
</asp:Content>

