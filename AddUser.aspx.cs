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

public partial class AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {         
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter("select * from User_Registration", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "User_Registration");
        DataTable table = null;
        DataRow newRow = null;
        table = ds.Tables["User_Registration"];
        bool flag=false;
        for (int i = 0; i < ds.Tables["User_Registration"].Rows.Count; i++)
        {
            if (ds.Tables["User_Registration"].Rows[i][5].ToString() == UserName.Text)
            {
                flag=true;
                Label3.Visible = true;
                Label3.Text = "User name already exist. Please try another user name!";
            }
        }
                if (flag==false)
                {

                    DateTime d1 = DateTime.Parse(DateTime.Today.ToShortDateString());
                    DateTime d2 = d1.AddYears(-5);
                    //DateTime d3=DateTime.Parse(DOB.Text);
                    //if (d2 < d3)
                    //    Label4.Text = "Invalid Date";
                    //else
                    {
                        Label3.Visible = false;
                        newRow = table.NewRow();
                        newRow["First_Name"] = FirstName.Text;
                        newRow["Last_Name"] = LastName.Text;
                        newRow["Sex"] = RadioButtonList1.SelectedItem.Text;
                        newRow["Date_Of_Birth"] = DOB.Text;
                        newRow["Email"] = EmailID.Text;
                        newRow["User_Name"] = UserName.Text;
                        newRow["Password"] = PwdBox.Text;
                        newRow["Password_Hint"] = PwdHint.Text;
                        newRow["Address"] = Add.Text;
                        newRow["State"] = StateBox.Text;
                        newRow["City"] = DropDownList1.SelectedItem.Text;
                        newRow["PIN_Code"] = PinCode.Text;
                        newRow["Contact_Number"] = ContactNo.Text;
                        table.Rows.Add(newRow);
                        SqlCommandBuilder cmd = null;
                        cmd = new SqlCommandBuilder(adp);
                        adp.InsertCommand = cmd.GetInsertCommand();
                        adp.Update(ds, "User_Registration");
                        Label2.Visible = true;
                        FirstName.Text = "";
                        LastName.Text = "";
                        DOB.Text = "";
                        EmailID.Text = "";
                        UserName.Text = "";
                        PwdBox.Text = "";
                        PwdHint.Text = "";
                        Add.Text = "";
                        StateBox.Text = "";
                        DropDownList1.Text = "";
                        PinCode.Text = "";
                        ContactNo.Text = "";
                        Label4.Text = "";
                    }
            }        
    }
}
