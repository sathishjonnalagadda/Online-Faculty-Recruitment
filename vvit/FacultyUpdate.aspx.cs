using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class FacultyUpdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["config"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string photo = "";
            string b = "";
            string d = "";
            string s = "select * from vvitfaculty where ID='" + Session["ID"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                POUName_lst.Text = dr["POUName"].ToString();
                DropDownListSalutation.Text = dr["Salutation"].ToString();
                TextBoxfn.Text = dr["Fullname"].ToString();
                DropDownListMarital.Text = dr["MaritalStatus"].ToString();
                photo = dr["Photo"].ToString();
                TextBoxWH.Text = dr["spouse"].ToString();
                TextBoXFaName.Text = dr["FatherName"].ToString();
                TextBoxdob.Text = dr["DOB"].ToString();
                DropDownListGen.Text = dr["Gender"].ToString();
                TextBoxAddress.Text = dr["Address"].ToString();
                DropDownListstate.Text = dr["State"].ToString();
                TextBoxemail.Text = dr["POUName"].ToString();
                TextBoxMoblie.Text = dr["Mobile"].ToString();
                TextBoxPincode.Text = dr["Pincode"].ToString();
                TextBoxUsername.Text = dr["Username"].ToString();
                TextBoxPass.Text = dr["Password"].ToString();
                TextBoxPANno.Text = dr["PANnumber"].ToString();
                TextBoxAadharNo.Text = dr["Aadharnumber"].ToString();
                b = dr["PANdoc"].ToString();
                d = dr["Aadhardoc"].ToString();
                DropDownListdept.Text = dr["Dept"].ToString();
                TextBoxYearofexper.Text = dr["YOE"].ToString();
                TextBoxMCN.Text = dr["MCN"].ToString();
                TextBoxMYP.Text = dr["MYP"].ToString();
                TextBoxMPA.Text = dr["MPA"].ToString();
                TextBoxMTM.Text = dr["MTM"].ToString();
                TextBoxBCN.Text = dr["BCN"].ToString();
                TextBoxBYP.Text = dr["BYP"].ToString();
                TextBoxBPA.Text = dr["BPA"].ToString();
                TextBoxBTM.Text = dr["BTM"].ToString();
                TextBoxICN.Text = dr["ICN"].ToString();
                TextBoxIYP.Text = dr["IYP"].ToString();
                TextBoxIPA.Text = dr["IPA"].ToString();
                TextBoxITM.Text = dr["ITM"].ToString();
                TextBoxSSN.Text = dr["SSN"].ToString();
                TextBoxSYP.Text = dr["SYP"].ToString();
                TextBoxSPA.Text = dr["SPA"].ToString();
                TextBoxSTM.Text = dr["STM"].ToString();

            }
            Image1.ImageUrl = "~/images/" + photo;
            Image2.ImageUrl = "~/images/" + b;
            Image3.ImageUrl = "~/images/" + d;


            con.Close();
        }

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update  vvitfaculty set POUName='" + POUName_lst.SelectedItem.Text + "',Salutation='" + DropDownListSalutation.SelectedItem.Text + "',FullName='" + TextBoxfn.Text + "',MaritalStatus='" + DropDownListMarital.SelectedItem.Text + "',Photo='" + FileUploadPHOTO.PostedFile.FileName + "',spouse='" + TextBoxWH.Text + "',FatherName='" + TextBoXFaName.Text + "',DOB='" + TextBoxdob.Text + "',Gender='" + DropDownListGen.SelectedItem.Text + "',Address='" + TextBoxAddress.Text + "',State='" + DropDownListstate.SelectedItem.Text + "',City='" + DropDownListcity.SelectedItem.Text + "',Email='" + TextBoxemail.Text + "',Mobile='" + TextBoxMoblie.Text + "',Pincode='" + TextBoxPincode.Text + "',Username='" + TextBoxUsername.Text + "',Password='" + TextBoxPass.Text + "',PANnumber='" + TextBoxPANno.Text + "',Aadharnumber='" + TextBoxAadharNo.Text + "',PANdoc='" + FileUploadPANdocument.PostedFile.FileName + "',Aadhardoc='" + FileUploadAadhardoc.PostedFile.FileName + "',Dept='" + DropDownListdept.SelectedItem.Text + "',YOE='" + TextBoxYearofexper.Text + "',MCN='" + TextBoxMCN.Text + "',MYP='" + TextBoxMYP.Text + "',MPA='" + TextBoxMPA.Text + "',MTM='" + TextBoxMTM.Text + "',BCN='" + TextBoxBCN.Text + "',BYP='" + TextBoxBYP.Text + "',BPA='" + TextBoxBPA.Text + "',BTM='" + TextBoxBTM.Text + "',ICN='" + TextBoxICN.Text + "',IYP='" + TextBoxIYP.Text + "',IPA='" + TextBoxIPA.Text + "',ITM='" + TextBoxITM.Text + "',SSN='" + TextBoxSSN.Text + "',SYP='" + TextBoxSYP.Text + "',SPA='" + TextBoxSPA.Text + "',STM='" + TextBoxSTM.Text + "' where ID='" + Session["ID"].ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Updated successfully')</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("facultylogin.aspx");
    }
}