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


public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {        
        Date_CalendarExtender.Format = "dd/MM/yyyy";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime d1 = DateTime.Parse(DateTime.Today.ToShortDateString());
        DateTime d2 = DateTime.Parse(UserName4.Text);
        int h1 = DateTime.Now.Hour;
        int h2 = Convert.ToInt32(UserName5.SelectedItem.Text);
        int m1 = DateTime.Now.Minute;
        int m2 = Convert.ToInt32(UserName6.SelectedItem.Text);
        if (d1 > d2)
        {
            Label4.Visible = true;
            Label4.Text = "Please enter a valid Date!";
            UserName4.Focus();
            UserName4.Text = "";
        }
        else
        {
            if (d1 == d2 && h1 > h2)
            {
                Label4.Text = "Please enter a valid hour!";
                UserName5.Text = "";
                UserName5.Focus();
            }
            else if (d1 == d2 && h1 == h2 && m1 > m2)
            {
                Label4.Text = "Please enter a valid minute!";
                UserName6.Text = "";
                UserName6.Focus();
            }
            else if (RadioButtonList1.SelectedIndex == 0)
            {
                Label4.Text = "Please log in to book a cab!";
                UserName.Focus();
            }
            else
            {
                int i = DropDownList1.SelectedIndex;
                string initial = "";
                switch (i)
                {
                    case 0: initial = "DL"; break;
                    case 1: initial = "TN"; break;
                    case 2: initial = "KA"; break;
                    case 3: initial = "MH"; break;
                    case 4: initial = "AP"; break;

                }
                SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
                con.Open();
                SqlDataAdapter adp1 = new SqlDataAdapter("select * from Taxi_Information where Status='Available' and Cab_Number like '" + initial + "%'", con);
                DataSet ds1 = new DataSet();
                adp1.Fill(ds1, "Taxi_Information");
                if (ds1.Tables[0].Rows.Count == 0)
                    Label4.Text = "No Cabs Available!";
                else
                {
                    int cno = Convert.ToInt32(DropDownList2.SelectedItem.Value);
                    if (ds1.Tables[0].Rows.Count < cno)
                    {
                        Label4.Text = "Sorry, only " + ds1.Tables[0].Rows.Count.ToString()+ " cabs are available!";
                    }
                    else
                    {
                        string cab_Numbers = "";
                        SqlDataAdapter adp2 = new SqlDataAdapter("select * from NewBooking", con);
                        DataSet ds2 = new DataSet();
                        adp2.Fill(ds2, "NewBooking");
                        DataTable table = null;
                        DataRow newRow = null;
                        table = ds2.Tables["NewBooking"];
                        newRow = table.NewRow();
                        newRow["User_Name"] = "Guest";
                        newRow["Pickup_City"] = DropDownList1.SelectedItem;
                        newRow["Pickup_Location"] = Location.Text;
                        newRow["Landmark"] = UserName0.Text;
                        newRow["Number_Of_Cabs"] = DropDownList2.SelectedItem.ToString();
                        newRow["Destination"] = UserName1.Text;
                        newRow["Contact_Number"] = UserName2.Text;
                        newRow["Email"] = UserName3.Text;
                        newRow["Pickup_Date"] = UserName4.Text;
                        newRow["Pickup_Time"] = UserName5.SelectedItem.Text + "hr " + UserName6.SelectedItem.Text + "min";
                        table.Rows.Add(newRow);
                        SqlCommandBuilder cmd = null;
                        cmd = new SqlCommandBuilder(adp2);
                        adp2.InsertCommand = cmd.GetInsertCommand();
                        adp2.Update(ds2, "NewBooking");
                        for (int j = 0; j < cno; j++)
                        {
                            SqlDataAdapter adp3 = new SqlDataAdapter("select * from Taxi_Information where Cab_Number=@cabNumber", con);
                            adp3.SelectCommand.Parameters.Add("@cabNumber", SqlDbType.NVarChar, 15);
                            adp3.SelectCommand.Parameters["@cabNumber"].Value = ds1.Tables["Taxi_Information"].Rows[j][0].ToString();
                            DataSet ds3 = new DataSet();
                            adp3.Fill(ds3, "Taxi_Information");
                            DataTable table1;
                            DataRow objRow;
                            table1 = ds3.Tables["Taxi_Information"];
                            objRow = table1.Rows[0];
                            objRow["Status"] = "Busy";
                            SqlCommandBuilder commandBuilder;
                            commandBuilder = new SqlCommandBuilder(adp3);
                            adp3.UpdateCommand = commandBuilder.GetUpdateCommand();
                            adp3.Update(ds3, "Taxi_Information");
                            if (j < cno)
                            {
                                cab_Numbers += ds1.Tables["Taxi_Information"].Rows[j][0].ToString();
                                if (j != cno - 1)
                                    cab_Numbers += "|";
                            }
                        }
                        Response.Redirect("~/GuestConfirm.aspx?Cab_Nos=" + cab_Numbers);                        
                    }
                }
            }
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
        con.Open();
        String sqlquery = "Select User_Name, Password from User_Registration where User_Name='"+UserName.Text+"'";
        SqlCommand cmd = new SqlCommand(sqlquery, con);
        SqlDataReader dr;       
        dr = cmd.ExecuteReader();  
        dr.Read();
        if (!dr.HasRows)
          Label3.Text="Invalid user name";
        else if ((UserName.Text == dr.GetValue(0).ToString()) && (Password.Text == dr.GetValue(1).ToString()))
        {            
            Session["user"] = UserName.Text;
            Response.Redirect("MyCabBooking.aspx");
        }
        else
            Label3.Text = "Invalid password. Please try again!";             
            dr.Close();
            con.Close();
    }
}
