using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;


namespace doctor.Doctor
{
    public partial class Verify : System.Web.UI.Page
    {
        Check chk = new Check();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorID"] != null)
            {
                if (!IsPostBack)
                {
                    string ID = Session["DoctorID"].ToString();
                    string CheckVerify = chk.stringCheck("select Verify from DoctorRegistation where DoctorID='" + ID + "'");
                    if (CheckVerify == "TRUE")
                    {
                         Response.Redirect("~/Doctor/");//doctor dashboard
                    }
                    if(chk.stringCheck("select Authorise from DoctorRegistation where DoctorID='" + ID + "'")=="TRUE")
                    {
                        pnlVerify.Visible = false;
                    }
                    else
                    {
                        pnlVerify.Visible = true;
                    }
                    imageDoctorPhoto.ImageUrl = "../Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto from DoctorRegistation where DoctorID='" + ID + "'");
                    imageLicencePhoto.ImageUrl = "../Doctor/LicenceImage/" + chk.stringCheck("select DoctorLicensePhoto from DoctorRegistation where DoctorID='" + ID + "'");
                }
            }
            else
            {
                Response.Redirect("~/Login");
            }

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void btnVerify_Click(object sender, EventArgs e)
        {
            int err = 0;
            string DoctorImageEXT = "", DoctorLicenceImageEXT = "";
            if (FileUploadDoctorImage.HasFile)
            {
                string n = FileUploadDoctorImage.FileName.ToLower();
                if (n.EndsWith(".jpeg"))
                {
                    DoctorImageEXT = ".jpeg";
                }
                else if (n.EndsWith(".jpg"))
                {
                    DoctorImageEXT = ".jpg";
                }
                else
                {
                    err++;
                    lblDoctorResult.Text += "<br/>Type [Doctor Image Required (*.JPEG)(*.JPG)]";
                }
            }
            else
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Image Required]";
            }
            if (FileUploadDoctorLicenceInage.HasFile)
            {
                string n = FileUploadDoctorLicenceInage.FileName.ToLower();
                if (n.EndsWith(".jpeg"))
                {
                    DoctorLicenceImageEXT = ".jpeg";
                }
                else if (n.EndsWith(".jpg"))
                {
                    DoctorLicenceImageEXT = ".jpg";
                }
                else
                {
                    err++;
                    lblDoctorResult.Text += "<br/>Type [Doctor Licence Photocopy Required (*.JPEG)(*.JPG)]";
                }
            }
            else
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Licence Photocopy Required]";
            }
            if (err == 0)
            {
                string DoctorID = Session["DoctorID"].ToString();
                FileUploadDoctorImage.SaveAs(Server.MapPath("../Doctor/Temp/" + DoctorID + DoctorImageEXT));
                FileUploadDoctorLicenceInage.SaveAs(Server.MapPath("../Doctor/LicenceImage/" + DoctorID + DoctorLicenceImageEXT));
                try
                {
                    ImageEdit(DoctorID + DoctorImageEXT);

                    SqlCommand verify = new SqlCommand();
                    verify.Connection = con;
                    verify.CommandText = "update DoctorRegistation set DoctorPhoto=@DoctorPhoto,DoctorLicensePhoto=@DoctorLicensePhoto where DoctorID='" + DoctorID + "'";
                    verify.Parameters.AddWithValue("@DoctorPhoto", DoctorID + DoctorImageEXT);
                    verify.Parameters.AddWithValue("@DoctorLicensePhoto", DoctorID + DoctorLicenceImageEXT);
                    con.Open();
                    verify.ExecuteNonQuery();
                    con.Close();
                    imageDoctorPhoto.ImageUrl = "../Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto from DoctorRegistation where DoctorID='" + DoctorID + "'");
                    imageLicencePhoto.ImageUrl = "../Doctor/LicenceImage/" + chk.stringCheck("select DoctorLicensePhoto from DoctorRegistation where DoctorID='" + DoctorID + "'");
                }
                catch (Exception error)
                {
                    lblDoctorResult.Text = "Server ERROR: " + error.Message;
                }

            }




        }

        public void ImageEdit(string Image)
        {
            //---------------------------------------------------------------------------------------------
            string path = Server.MapPath("../Doctor/Temp/" + Image);
            string DocDetails = Server.MapPath("../Doctor/Image/Details/" + Image);
            string DocFeedBack = Server.MapPath("../Doctor/Image/FeedBack/" + Image);
            string Pageview = Server.MapPath("../Doctor/Image/PageView/" + Image);
            string DoctorProfile = Server.MapPath("../Doctor/Image/Profile/" + Image);

            //-------------------------------Doctor Details image
            System.Drawing.Image obj;
            Bitmap newimage;
            obj = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat = obj.RawFormat;
            newimage = new Bitmap(obj, 170, 170);
            newimage.Save(DocDetails, imgformat);
            //----------------------------Doctor FeedBack Image 
            System.Drawing.Image obj2;
            Bitmap newimage2;
            obj2 = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat2 = obj2.RawFormat;
            newimage2 = new Bitmap(obj2, 80, 80);
            newimage2.Save(DocFeedBack, imgformat2);
            //-------------------------- Doctor Page view
            System.Drawing.Image obj3;
            Bitmap newimage3;
            obj3 = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat3 = obj3.RawFormat;
            newimage3 = new Bitmap(obj3, 120, 120);
            newimage3.Save(Pageview, imgformat3);
            //------------------------- Doctor Profile Image 
            System.Drawing.Image obj4;
            Bitmap newimage4;
            obj4 = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat4 = obj4.RawFormat;
            newimage4 = new Bitmap(obj4, 200, 200);
            newimage4.Save(DoctorProfile, imgformat4);
            //----------------------------------------------------------------------------------------------

        }

        protected void btnVeryfy_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            if (txtCode.Text != "")
            {
                string DoctorID = Session["DoctorID"].ToString();
                string Code = txtCode.Text;
                Check chk = new Check();
                if (chk.stringCheck("select Authorise from DoctorRegistation where DoctorID='" + DoctorID + "'") == Code)
                {
                    cmd.Connection = con;
                    cmd.CommandText = "update DoctorRegistation set Authorise='TRUE' where DoctorID='" + DoctorID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblDoctorResult.ForeColor = System.Drawing.Color.Green;
                    lblDoctorResult.Text = "Code Submit.";
                }
                else
                {
                    lblDoctorResult.ForeColor = System.Drawing.Color.Red;
                    lblDoctorResult.Text = "Invalid Code.";
                }
            }
            else
            {
                lblDoctorResult.ForeColor = System.Drawing.Color.Red;
                lblDoctorResult.Text = "Enter The Veryfication Code.";
            }
        }
    }
}