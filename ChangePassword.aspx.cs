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

public partial class LostPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string qry = @"SELECT * FROM User_Registration where User_Name='"+User_Name.Text+"' AND Password='"+Old_Pwd.Text+"'" ;
        string upd = @"UPDATE User_Registration SET Password=@Password, Password_Hint=@Password_Hint where User_Name=@User_Name";
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");        
            SqlDataAdapter da1 = new SqlDataAdapter(qry, con);
            da1.SelectCommand = new SqlCommand(qry, con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "User_Registration");
            DataTable dt1=ds1.Tables["User_Registration"];  
         if (dt1.Rows.Count==0)
                Label2.Text="Invalid user name or password!";
         else 
         {
            dt1.Rows[0]["User_Name"] = User_Name.Text;
            SqlCommand cmd = new SqlCommand(upd, con);
            da1.UpdateCommand = cmd;            
            SqlParameter parm = da1.UpdateCommand.Parameters.Add("@User_Name", SqlDbType.NVarChar, 25, "User_Name");
            da1.UpdateCommand.Parameters.Add("@Password", SqlDbType.NVarChar, 25, "Password");
            da1.UpdateCommand.Parameters.Add("@Password_Hint", SqlDbType.NVarChar, 50, "Password_Hint");           
            dt1.Rows[0]["Password"] = New_Pwd.Text;
            dt1.Rows[0]["Password_Hint"] = Pwd_Hint.Text;            
            parm.SourceVersion = DataRowVersion.Original;            
            da1.Update(ds1, "User_Registration");
            User_Name.Text = "";            
            Old_Pwd.Text = "";
            New_Pwd.Text = "";
            Confirm_Pwd.Text = "";
            Pwd_Hint.Text = "";
            Label2.Text = "";
            Label3.Visible = true;               
            }
        }        
    }

