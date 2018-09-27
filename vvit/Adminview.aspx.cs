using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Adminview : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select FullName,BPA,Email,Dept from vvitfaculty where BPA >='" + TextBox1.Text + "' and Dept='"+DropDownListdept.SelectedItem.Text+"'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
            panel1.Visible = true;
        }

        con.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {

            for (int i = 0; i <= GridView1.Rows.Count-1; i++)
            {
                try
                {
                    string adds = GridView1.Rows[i].Cells[2].Text.Trim();
                    MailMessage message = new MailMessage();
                    message.From = new MailAddress("jse994956@gmail.com", "Recruitment");
                    message.To.Add(adds);
                    message.Subject = "Recruitment";


                    // ActivationUrl = "helloo";
                    message.Body = TextBox2.Text;
                    message.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("jse994956@gmail.com", "oreyedava");
                    smtp.EnableSsl = true;
                    smtp.Send(message);
                    Response.Write("<script>alert('mail sent')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            
        }

    }
}