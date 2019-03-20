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
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace doctor.Hospital
{
    public partial class Verify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            {
                if (Session["HospitalUsername"] != null && Session["PersonalImage"] != null && Session["HospitalID"] != null && Session["PersonalFullname"] != null && Session["HospitalName"] != null)
                {
                    
                    string Hospital_ID = Session["HospitalID"].ToString();
                    if (chk.stringCheck("select HospitalType from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'") == "Government")
                    {
                        pnlOwnerPhoto.Visible = false;
                    }
                    else
                    {
                        pnlOwnerPhoto.Visible = true;
                    }
                    if(chk.stringCheck("select Authority from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'")=="TRUE")
                    {
                        pnlVerification.Visible = false;
                    }
                    else
                    {
                        pnlVerification.Visible = true;
                    }
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";
                    imageHospitalLicencePhoto.ImageUrl = "../Hospital/Image/Licence/" + chk.stringCheck("select LicencePhoto "+st);
                    imageHospitalOutsidePhoto.ImageUrl = "../Hospital/Image/Hospital/Profile/" + chk.stringCheck("select HospitalPhoto " + st);
                    imagePersonalPhoto.ImageUrl = "../Hospital/Image/Personal/Profile/" + chk.stringCheck("select PersonalPhoto " + st);
                    imageOwnerPhoto.ImageUrl = "../Hospital/Image/Owner/" + chk.stringCheck("select OwnerPhoto " + st);

                }



            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        Check chk = new Check();
        protected void btnPersonalImage_Click(object sender, EventArgs e)
        {
            if (FileUploadPersonalImage.HasFile)
            {
                string ext = "";
                string FileName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                string FileExt = Path.GetExtension(FileUploadPersonalImage.FileName.ToLower());
                if (FileExt == ".jpg")
                {
                    ext = ".jpg";
                }
                else if (FileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (FileExt == ".png")
                {
                    ext = ".png";
                }
                else
                {
                    lblPersonalImageResult.ForeColor = System.Drawing.Color.Red;
                    lblPersonalImageResult.Text = "Upload File (*.jpg,*.jpeg,*.png)";
                }
                if (ext != "")
                {
                    string Hospital_ID = Session["HospitalID"].ToString();
                    FileUploadPersonalImage.SaveAs(Server.MapPath("../Hospital/Temp/"+ FileName+FileExt));
                    cmd.Connection = con;
                    cmd.CommandText = "update HospitalRegistation set PersonalPhoto='"+FileName+FileExt+ "' where HospitalID='" + Hospital_ID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    PersonalEdit(FileName + FileExt);
                    lblPersonalImageResult.ForeColor = System.Drawing.Color.Green;
                    lblPersonalImageResult.Text = "Photo Upload Sucessfully.";
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";
                    imagePersonalPhoto.ImageUrl = "../Hospital/Image/Personal/Profile/" + chk.stringCheck("select PersonalPhoto " + st);
                }
            }
            else
            {
                lblPersonalImageResult.ForeColor = System.Drawing.Color.Red;
                lblPersonalImageResult.Text = "Select File.";
            }
        }

        public void PersonalEdit(string Image)
        {
            //---------------------------------------------------------------------------------------------
            string path = Server.MapPath("../Hospital/Temp/" + Image);
            string Details = Server.MapPath("../Hospital/Image/Personal/Details/" + Image);
            string FeedBack = Server.MapPath("../Hospital/Image/Personal/FeedBack/" + Image);
            string Pageview = Server.MapPath("../Hospital/Image/Personal/PageView/" + Image);
            string Profile = Server.MapPath("../Hospital/Image/Personal/Profile/" + Image);

            //-------------------------------Doctor Details image
            System.Drawing.Image obj;
            Bitmap newimage;
            obj = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat = obj.RawFormat;
            newimage = new Bitmap(obj, 170, 170);
            newimage.Save(Details, imgformat);
            //----------------------------Doctor FeedBack Image 
            System.Drawing.Image obj2;
            Bitmap newimage2;
            obj2 = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat2 = obj2.RawFormat;
            newimage2 = new Bitmap(obj2, 80, 80);
            newimage2.Save(FeedBack, imgformat2);
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
            newimage4.Save(Profile, imgformat4);
            //----------------------------------------------------------------------------------------------

        }

        protected void btnOwnerPhoto_Click(object sender, EventArgs e)
        {
            if (FileUploadOwnerPhoto.HasFile)
            {
                string ext = "";
                string FileName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                string FileExt = Path.GetExtension(FileUploadOwnerPhoto.FileName.ToLower());
                if (FileExt == ".jpg")
                {
                    ext = ".jpg";
                }
                else if (FileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (FileExt == ".png")
                {
                    ext = ".png";
                }
                else
                {
                    lblOwnerResult.ForeColor = System.Drawing.Color.Red;
                    lblOwnerResult.Text = "Upload File (*.jpg,*.jpeg,*.png)";
                }
                if (ext != "")
                {
                    string Hospital_ID = Session["HospitalID"].ToString();
                    FileUploadOwnerPhoto.SaveAs(Server.MapPath("../Hospital/Image/Owner/" + FileName + FileExt));
                    cmd.Connection = con;
                    cmd.CommandText = "update HospitalRegistation set OwnerPhoto='" + FileName + FileExt + "' where HospitalID='"+Hospital_ID+"'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblOwnerResult.ForeColor = System.Drawing.Color.Green;
                    lblOwnerResult.Text = "Photo Upload Sucessfully.";
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";                    
                    imageOwnerPhoto.ImageUrl = "../Hospital/Image/Owner/" + chk.stringCheck("select OwnerPhoto " + st);
                }
            }
            else
            {
                lblOwnerResult.ForeColor = System.Drawing.Color.Red;
                lblOwnerResult.Text = "Select File.";
            }
        }

        protected void btnHospitalOutside_Click(object sender, EventArgs e)
        {
            if (FileUploadHospitalOutsidePhoto.HasFile)
            {
                string ext = "";
                string FileName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                string FileExt = Path.GetExtension(FileUploadHospitalOutsidePhoto.FileName.ToLower());
                if (FileExt == ".jpg")
                {
                    ext = ".jpg";
                }
                else if (FileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (FileExt == ".png")
                {
                    ext = ".png";
                }
                else
                {
                    lblHospitalOutside.ForeColor = System.Drawing.Color.Red;
                    lblHospitalOutside.Text = "Upload File (*.jpg,*.jpeg,*.png)";
                }
                if (ext != "")
                {
                    string Hospital_ID = Session["HospitalID"].ToString();
                    FileUploadHospitalOutsidePhoto.SaveAs(Server.MapPath("../Hospital/Temp/" + FileName + FileExt));
                    cmd.Connection = con;
                    cmd.CommandText = "update HospitalRegistation set HospitalPhoto='" + FileName + FileExt + "' where HospitalID='" + Hospital_ID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    HospitalEdit(FileName + FileExt);
                    lblHospitalOutside.ForeColor = System.Drawing.Color.Green;
                    lblHospitalOutside.Text = "Photo Upload Sucessfully.";
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";                    
                    imageHospitalOutsidePhoto.ImageUrl = "../Hospital/Image/Hospital/Profile/" + chk.stringCheck("select HospitalPhoto " + st);
                }
            }
            else
            {
                lblHospitalOutside.ForeColor = System.Drawing.Color.Red;
                lblHospitalOutside.Text = "Select File.";
            }
        }
        public void HospitalEdit(string Image)
        {
            //---------------------------------------------------------------------------------------------
            string path = Server.MapPath("../Hospital/Temp/" + Image);
            string Details = Server.MapPath("../Hospital/Image/Hospital/Details/" + Image);
            string FeedBack = Server.MapPath("../Hospital/Image/Hospital/FeedBack/" + Image);
            string Pageview = Server.MapPath("../Hospital/Image/Hospital/PageView/" + Image);
            string Profile = Server.MapPath("../Hospital/Image/Hospital/Profile/" + Image);

            //-------------------------------Doctor Details image
            System.Drawing.Image obj;
            Bitmap newimage;
            obj = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat = obj.RawFormat;
            newimage = new Bitmap(obj, 170, 170);
            newimage.Save(Details, imgformat);
            //----------------------------Doctor FeedBack Image 
            System.Drawing.Image obj2;
            Bitmap newimage2;
            obj2 = System.Drawing.Image.FromFile(path);
            ImageFormat imgformat2 = obj2.RawFormat;
            newimage2 = new Bitmap(obj2, 80, 80);
            newimage2.Save(FeedBack, imgformat2);
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
            newimage4.Save(Profile, imgformat4);
            //----------------------------------------------------------------------------------------------

        }

        protected void btnHospitalLicence_Click(object sender, EventArgs e)
        {
            if (FileUploadHospitalLicencePhoto.HasFile)
            {
                string ext = "";
                string FileName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                string FileExt = Path.GetExtension(FileUploadHospitalLicencePhoto.FileName.ToLower());
                if (FileExt == ".jpg")
                {
                    ext = ".jpg";
                }
                else if (FileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (FileExt == ".png")
                {
                    ext = ".png";
                }
                else
                {
                    lblHospitalLicence.ForeColor = System.Drawing.Color.Red;
                    lblHospitalLicence.Text = "Upload File (*.jpg,*.jpeg,*.png)";
                }
                if (ext != "")
                {
                    string Hospital_ID = Session["HospitalID"].ToString();
                    FileUploadHospitalLicencePhoto.SaveAs(Server.MapPath("../Hospital/Image/Licence/" + FileName + FileExt));
                    cmd.Connection = con;
                    cmd.CommandText = "update HospitalRegistation set LicencePhoto='" + FileName + FileExt + "' where HospitalID='" + Hospital_ID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblHospitalLicence.ForeColor = System.Drawing.Color.Green;
                    lblHospitalLicence.Text = "Photo Upload Sucessfully.";
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";
                    imageHospitalLicencePhoto.ImageUrl = "../Hospital/Image/Licence/" + chk.stringCheck("select LicencePhoto " + st);                   
                }
            }
            else
            {
                lblHospitalLicence.ForeColor = System.Drawing.Color.Red;
                lblHospitalLicence.Text = "Select File.";
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            if(txtCode.Text!="")
            {
                string Hospital_ID = Session["HospitalID"].ToString();
                string Code = txtCode.Text;
                Check chk = new Check();
                if(chk.stringCheck("select Authority from HospitalRegistation where HospitalID='" + Hospital_ID + "'")==Code)
                {
                    cmd.Connection = con;
                    cmd.CommandText = "update HospitalRegistation set Authority='TRUE' where HospitalID='" + Hospital_ID + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblHospitalLicence.ForeColor = System.Drawing.Color.Green;
                    lblHospitalLicence.Text = "Code Submit.";
                }
                else
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Invalid Code.";
                }
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Enter The Veryfication Code.";
            }
        }
    }
}