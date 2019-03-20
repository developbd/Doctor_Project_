using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace doctor.Doctor
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorUsername"] == null && Session["DocotorImage"] == null && Session["DoctorID"] == null && Session["DocotorFullName"] == null)
            { Response.Redirect("~/Login"); }

            if (!IsPostBack)
            {
                Check chk = new Check();
                var ShortCut = " from DoctorRegistation where DoctorID='"+ Session["DoctorID"].ToString() + "'";
                txtAddress.Text = chk.stringCheck("select  Address " + ShortCut);
                txtCategories.Text = chk.stringCheck("select  Categories " + ShortCut);
                txtDoctorBio.Text = chk.stringCheck("select  DoctorDetails " + ShortCut);
                txtEmail.Text = chk.stringCheck("select  Email " + ShortCut);
                txtExpertise.Text = chk.stringCheck("select  Expertise " + ShortCut);
                txtFullName.Text = chk.stringCheck("select  FullName " + ShortCut);
                txtMobile.Text = chk.stringCheck("select  Mobile " + ShortCut);
                txtNID.Text = chk.stringCheck("select  NID " + ShortCut);
                txtPresentProfession.Text = chk.stringCheck("select  PresentProfession " + ShortCut);
                txtQualification.Text= chk.stringCheck("select  Qualification " + ShortCut);
                txtRegistationNumber.Text = chk.stringCheck("select  RegistationNumber " + ShortCut);
                txtTelephone.Text = chk.stringCheck("select  Telephone " + ShortCut);              
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            int err = 0;
            bool Password = false;
            bool Photo_Upload = false;
            string EXT = "";
            if(txtPassword.Text!="")
            {
                if(txtRePassword.Text!="")
                {
                    if(txtPassword.Text != txtRePassword.Text)
                    {
                        err++;
                        lblResult.ForeColor = System.Drawing.Color.Red;
                        lblResult.Text += "Password Not Match.<br/>";
                    }
                    else
                    {
                        Password = true;
                    }
                }
                else
                {
                    err++;
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text += "Type Retry Password!<br/>";
                }
            }
            if(ProfilePhotoUploader.HasFile)
            {
                string File_Ext = Path.GetExtension(ProfilePhotoUploader.FileName.ToLower());
                if(File_Ext==".jpg")
                {
                    EXT = ".jpg";
                    Photo_Upload = true;
                }
                else if(File_Ext== ".jpeg")
                {
                    EXT = ".jpeg";
                    Photo_Upload = true;
                }
                else if (File_Ext == ".png")
                {
                    EXT = ".png";
                    Photo_Upload = true;
                }
                else
                {
                    err++;
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text += "Image Upload (*.jpg, *.jpeg, *.png)<br/>";
                }
            }
            
            if (err==0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                string DoctorID = Session["DoctorID"].ToString();
                if (Password==true)
                {
                    cmd.CommandText = "update DoctorRegistation set Password='"+txtPassword.Text+ "' where DoctorID='"+ Session["DoctorID"].ToString() + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                if(Photo_Upload==true)
                {
                    
                    ProfilePhotoUploader.SaveAs(Server.MapPath("~/Doctor/Temp/"+DoctorID+EXT));
                    Verify vr = new Verify();
                    vr.ImageEdit(DoctorID + EXT);
                    cmd.CommandText = "update DoctorRegistation set DoctorPhoto='" + DoctorID + EXT + "' where DoctorID='" + DoctorID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                cmd.CommandText = string.Format(@"update DoctorRegistation set FullName='{0}',Qualification='{1}',Expertise='{2}',PresentProfession='{3}',Telephone='{4}',Address='{5}',DoctorDetails='{6}' where DoctorID='{7}'
        ", txtFullName.Text, txtQualification.Text, txtExpertise.Text, txtPresentProfession.Text, txtTelephone.Text, txtAddress.Text, txtDoctorBio.Text, DoctorID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblResult.ForeColor = System.Drawing.Color.Green;
                lblResult.Text = "Save";
            }
         



        }
    }
}