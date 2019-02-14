using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class LnF : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {       
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
        con.Open();
        string qry="SELECT * FROM NewBooking WHERE Booking_ID='"+TextBox1.Text+"'";        
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows==true)
        {
            Label19.Text = "";
            Label2.Visible = true;
            Label4.Visible = true;
            Label3.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label14.Text = dr.GetValue(2).ToString();
            Label15.Text = dr.GetValue(3).ToString();
            Label18.Text = dr.GetValue(6).ToString();
            Label16.Text = dr.GetValue(9).ToString();
            Label17.Text = dr.GetValue(10).ToString();
        }
        else
        {
            Label19.Text = "Invalid Booking ID!";
            Label2.Visible = false;
            Label4.Visible = false;
            Label3.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label14.Text = "";
            Label15.Text = "";
            Label18.Text = "";
            Label16.Text = "";
            Label17.Text = "";
        }        
    }    
    protected void Button1_Click(object sender, EventArgs e)
    {       
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
            SqlDataAdapter adp = new SqlDataAdapter("select * from Lost_Found", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Lost_Found");
            DataTable table = null;
            DataRow newRow = null;
            table = ds.Tables["Lost_Found"];
            newRow = table.NewRow();
            newRow["Booking_ID"] = TextBox1.Text;
            newRow["Pickup_Source"] = Label15.Text;
            newRow["Destination"] = Label18.Text;
            newRow["User_Name"] = TextBox7.Text;
            newRow["Email"] = TextBox8.Text;
            newRow["City"] = Label14.Text;
            newRow["Pickup_Date"] = Label16.Text;
            newRow["Pickup_Time"] = Label17.Text;
            newRow["Item_Left_In_Cab"] = TextBox10.Text;
            newRow["Contact_Number"] = TextBox9.Text;
            table.Rows.Add(newRow);
            SqlCommandBuilder cmd = null;
            cmd = new SqlCommandBuilder(adp);
            adp.InsertCommand = cmd.GetInsertCommand();
            adp.Update(ds, "Lost_Found");
            TextBox1.Text = "";
            Label15.Text = "";
            Label18.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            Label14.Text = "";
            Label16.Text = "";
            Label17.Text = "";
            TextBox10.Text = "";
            TextBox9.Text = "";
            Response.Redirect("~/CustomerResponse.aspx");        
    }
}
