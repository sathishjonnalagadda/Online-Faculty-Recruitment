using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class NewFacutlyregistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        {
            if (FileUploadPHOTO.HasFile)
            {
                string filename = Path.GetFileName(FileUploadPHOTO.PostedFile.FileName);
                //Save images into Images folder
                FileUploadPHOTO.SaveAs(Server.MapPath("images/" + filename));
            }

            if (FileUploadAadhardoc.HasFile)
            {
                string filename = Path.GetFileName(FileUploadAadhardoc.PostedFile.FileName);
                //Save images into Aadhar folder
                FileUploadAadhardoc.SaveAs(Server.MapPath("Aadharimages/" + filename));
            }

            if (FileUploadPANdocument.HasFile)
            {
                string filename = Path.GetFileName(FileUploadPANdocument.PostedFile.FileName);
                //Save images into PANimages folder
                FileUploadPANdocument.SaveAs(Server.MapPath("PANimages/" + filename));
            }

            SqlCommand cmd = new SqlCommand("insert into vvitfaculty values('" + POUName_lst.SelectedItem.Text + "','" + DropDownListSalutation.SelectedItem.Text + "','" + TextBoxfn.Text + "','" + DropDownListMarital.SelectedItem.Text + "','" + FileUploadPHOTO.PostedFile.FileName + "','" + TextBoxWH.Text + "','" + TextBoXFaName.Text + "','" + TextBoxdob.Text + "','" + DropDownListGen.SelectedItem.Text + "','" + TextBoxAddress.Text + "','" + DropDownListstate.SelectedItem.Text + "','" + DropDownListcity.SelectedItem.Text + "','" + TextBoxemail.Text + "','" + TextBoxMoblie.Text + "','" + TextBoxPincode.Text + "','" + TextBoxUsername.Text + "','" + TextBoxPass.Text + "','" + TextBoxPANno.Text + "','" + TextBoxAadharNo.Text + "','" + FileUploadPANdocument.PostedFile.FileName + "','" + FileUploadAadhardoc.PostedFile.FileName + "','" + DropDownListdept.SelectedItem.Text + "','" + TextBoxYearofexper.Text + "','" + TextBoxMCN.Text + "','" + TextBoxMYP.Text + "','" + TextBoxMPA.Text + "','" + TextBoxMTM.Text + "','" + TextBoxBCN.Text + "','" + TextBoxBYP.Text + "','" + TextBoxBPA.Text + "','" + TextBoxBTM.Text + "','" + TextBoxICN.Text + "','" + TextBoxIYP.Text + "','" + TextBoxIPA.Text + "','" + TextBoxITM.Text + "','" + TextBoxSSN.Text + "','" + TextBoxSYP.Text + "','" + TextBoxSPA.Text + "','" + TextBoxSTM.Text + "')", con);
            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Registered successfully')</script>");
            Response.Redirect("Home.aspx");
        }
    }

    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("facultylogin.aspx");
    }
}
