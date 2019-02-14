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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class GuestConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cab_Numbers = Request.QueryString["Cab_Nos"];
        string[] cabs = cab_Numbers.Split('|');
        foreach (string cab in cabs)
        {
            ListBox1.Items.Add(cab);
        }    
        Label3.Text = "Your booked cab number(s): ";
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");        
        string str = "Select * from NewBooking";

        DataSet ds = new DataSet();
        int index;
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        adp.Fill(ds);

        for (index = 0; index < ds.Tables[0].Rows.Count; index++)
        {
            Label2.Text = "Your Booking ID is " + ds.Tables[0].Rows[index][0];
        }    
    }
}
