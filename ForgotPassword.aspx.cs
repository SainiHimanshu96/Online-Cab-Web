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
using System.Web.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");
        SqlDataAdapter adp = new SqlDataAdapter("select * from User_Registration WHERE User_Name=@User_Name AND Email=@Email AND Password_Hint=@Password_Hint", con);
        adp.SelectCommand.Parameters.Add("@User_Name", SqlDbType.NVarChar, 25);
        adp.SelectCommand.Parameters["@User_Name"].Value = User_Name.Text;
        adp.SelectCommand.Parameters.Add("@Email", SqlDbType.NVarChar, 50);
        adp.SelectCommand.Parameters["@Email"].Value = Email.Text;
        adp.SelectCommand.Parameters.Add("@Password_Hint", SqlDbType.NVarChar, 50);
        adp.SelectCommand.Parameters["@Password_Hint"].Value = PwdHint.Text;
        DataSet ds = new DataSet();
        adp.Fill(ds, "User_Registration");
        if (ds.Tables["User_Registration"].Rows.Count == 0)
            Label2.Text = "Please enter a valid user name, email-id, and password hint";
        else
        {
            Label2.Text = "Your Password is " + ds.Tables["User_Registration"].Rows[0][6].ToString() + ".";
            Label1.Visible = true;
        }
        User_Name.Text = Email.Text=PwdHint.Text="";        
    }
}
