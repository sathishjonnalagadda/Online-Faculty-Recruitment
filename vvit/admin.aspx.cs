using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select  Username,Password from Adminlogin where UserName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            Response.Redirect("Adminview.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect Details')</script>");
        }
        con.Close();
    }
}