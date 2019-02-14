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

public partial class CustomerFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=KogentCabDB;Integrated Security=True");        
        SqlDataAdapter adp = new SqlDataAdapter("select * from Feedback", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Feedback");
        DataTable table = null;
        DataRow newRow = null;
        table = ds.Tables["Feedback"];
        newRow = table.NewRow();
        newRow["Name"] = TextBox1.Text;
        newRow["Comment"] = Comment.Text;
        table.Rows.Add(newRow);
        SqlCommandBuilder cmd = null;
        cmd = new SqlCommandBuilder(adp);
        adp.InsertCommand = cmd.GetInsertCommand();
        adp.Update(ds, "Feedback");
        TextBox1.Text = "";
        Comment.Text = "";
        GridView1.DataBind();
        Response.Redirect("CustomerResponse.aspx");
    }
}
