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

using System.ServiceModel;


public partial class farecalc : System.Web.UI.Page
{
    CabReference.GetFareServiceClient cr = new CabReference.GetFareServiceClient();

    public void Button1_Click(object sender, EventArgs e)
    {
        double calc = 0;
        string s = TextBox2.Text;
        if (TextBox2.Text == "")
        {
            calc = 0;
        }
        else
        {
            double waittime = Convert.ToDouble(TextBox2.Text);
            calc = waittime * 1;
        }
        double dis = Convert.ToDouble(TextBox1.Text);
        double cal;
        if (dis > 1)
        {
            cal = calc + 15 + ((dis - 1) * 13);
        }
        else
        {
            cal = calc + (dis * 15);
        }

        Label1.Text = "Calculated Fare: Rs. " + cr.GetFare(Convert.ToDouble(TextBox1.Text), calc).ToString()+"/-only";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            Label3.Visible = true;
            TextBox2.Visible = true;
        }
        else
        {
            Label3.Visible = false;
            TextBox2.Visible = false;
        }
    }
}
