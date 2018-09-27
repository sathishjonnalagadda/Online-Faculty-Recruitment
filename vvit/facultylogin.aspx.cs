using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class facultyhome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
       
        Response.Redirect("NewFacultyregistration.aspx");
        
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select ID,UserName,Password from vvitfaculty where Username='" + TextBoxUserName.Text + "'and Password='" + TextBoxPass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.Read() == true)
        {
            Session["id"] = dr[0].ToString();
            Response.Redirect("FacultyUpdate.aspx");

        }
        else
        {
            Response.Write("<script>alert('Faculty is not registered')</script>");

        }
        con.Close();
    }
}