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

public partial class UpdateProfile : System.Web.UI.Page
{
    string username;  
    protected void Page_Load(object sender, EventArgs e)
    {
        username = Session["user"].ToString();
        Label1.Text = "Welcome " + username;                 
    }    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Default.aspx");
    }       
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            for (int i = 0; i < e.NewValues.Count; i++)
            {
                string value = e.NewValues[i].ToString();
                if (value == "")
                    ;                   
            }
            Label2.Text = "Your profile has been updated!";   
        }
        catch (NullReferenceException ex)
        {
            Label2.Text="Empty fields not allowed!";
            e.Cancel=true;
        }      
   }


}
