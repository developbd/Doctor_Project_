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
using System.IO;

namespace doctor.Admin
{
    public partial class HospitalAdd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        private void Country()
        {
            ddlCountry.Items.Clear();

            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Country order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlCountry.Items.Add(new ListItem("Select Country", "0"));

            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlCountry.Items.Add(new_Item);

            }
            con.Close();
        }
        private void Division(int ID)
        {
            ddlDvision.Items.Clear();

            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDvision.Items.Add(new ListItem("Select Division", "0"));

            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDvision.Items.Add(new_Item);

            }
            con.Close();
        }
        private void District(int ID)
        {
            ddlDistrict.Items.Clear();

            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from District where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDistrict.Items.Add(new ListItem("Select District", "0"));

            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDistrict.Items.Add(new_Item);

            }
            con.Close();
        }
        private void Upazila(int ID)
        {
            ddlUpazila.Items.Clear();

            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Upazila where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlUpazila.Items.Add(new ListItem("Select Upazila", "0"));

            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlUpazila.Items.Add(new_Item);

            }
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Country();
                if(Request.QueryString["Edit"]!=null)
                {
                    string Hospital_ID = Request.QueryString["Edit"].ToString();
                    Check chk = new Check();
                    var sortcut = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";
                    if (chk.int32Check("select count(*) " + sortcut) == 1)
                    {
                        btnUpdate.Visible = true;
                        btnHospitalRegistation.Visible = false;
                        string Countrys = chk.stringCheck("select Country " + sortcut);
                        string Division = chk.stringCheck("select Division " + sortcut);
                        string District = chk.stringCheck("select District " + sortcut);
                        string Upazilla = chk.stringCheck("select Upazilla " + sortcut);
                        lblCountryDDU.Text = Countrys + " - " + Division + " - " + District + " - " + Upazilla;
                        ddlHostipal.SelectedValue = chk.stringCheck("select HospitalCategory " + sortcut);
                        ddlHospitalType.SelectedValue = chk.stringCheck("select HospitalType " + sortcut);
                        ddlHospitalShift.SelectedValue = chk.stringCheck("select HospitalShift " + sortcut);
                        txtHospitalRegNumber.Text = chk.stringCheck("select RegistationNumber " + sortcut);
                        txtHospitalName.Text = chk.stringCheck("select HospitalName " + sortcut);
                        txtHospitalWebsite.Text = chk.stringCheck("select HospitalWebsite " + sortcut);
                        txtHospitalEmail.Text = chk.stringCheck("select HospitalEmail " + sortcut);
                        txtHospitalMoblie.Text = chk.stringCheck("select HospitalMoblile " + sortcut);
                        txtHospitalAddress.Text = chk.stringCheck("select HospitalAddress " + sortcut);
                        txtHospitalOwnerFullname.Text = chk.stringCheck("select OwnerName " + sortcut);
                        txtHospitalOwnerMobile.Text = chk.stringCheck("select OwnerMobile " + sortcut);
                        ddlOwnerApproval.SelectedValue = chk.stringCheck("select OwnerApproval " + sortcut);
                        txt_H_P_Fullname.Text = chk.stringCheck("select PersonalFullname " + sortcut);
                        txt_H_P_Email.Text = chk.stringCheck("select PersonalEmail " + sortcut);
                        txt_H_P_Mobile.Text = chk.stringCheck("select PersonalMoblie " + sortcut);
                        txt_H_P_UserName.Text = chk.stringCheck("select username " + sortcut);
                        txt_H_P_Password.Text = chk.stringCheck("select password " + sortcut);
                        txt_H_P_NID.Text = chk.stringCheck("select NID " + sortcut);
                        ddlPersonalGender.SelectedValue = chk.stringCheck("select Gender " + sortcut);
                        ddlWorkHere.SelectedValue = chk.stringCheck("select PersonalAddress " + sortcut);
                        ddlExprience.SelectedValue = chk.stringCheck("select Experience " + sortcut);
                        txt_H_P_Address.Text = chk.stringCheck("select PersonalAddress " + sortcut);
                        ImagePersonalPhoto.ImageUrl = "../Hospital/Image/Personal/Profile/" + chk.stringCheck("select PersonalPhoto " + sortcut);
                        ImagePersonalPhoto.PostBackUrl = "~/Hospital/Image/Personal/Profile/" + chk.stringCheck("select PersonalPhoto " + sortcut);
                        ImageOwnerPhoto.ImageUrl = "../Hospital/Image/Owner/" + chk.stringCheck("select OwnerPhoto " + sortcut);
                        ImageOwnerPhoto.PostBackUrl = "~/Hospital/Image/Owner/" + chk.stringCheck("select OwnerPhoto " + sortcut);
                        ImageLicencePhoto.ImageUrl = "../Hospital/Image/Licence/" + chk.stringCheck("select LicencePhoto " + sortcut);
                        ImageLicencePhoto.PostBackUrl = "~/Hospital/Image/Licence/" + chk.stringCheck("select LicencePhoto " + sortcut);
                        ImageHospitalPhoto.ImageUrl = "../Hospital/Image/Hospital/Profile/" + chk.stringCheck("select HospitalPhoto " + sortcut);
                        ImageHospitalPhoto.PostBackUrl = "~/Hospital/Image/Hospital/Profile/" + chk.stringCheck("select HospitalPhoto " + sortcut);
                        string Authorise = chk.stringCheck("select Authority " + sortcut);
                        string LoginParmit = chk.stringCheck("select LoginParmit " + sortcut);
                        string Verify = chk.stringCheck("select Verify " + sortcut);
                        if (Authorise == "TRUE")
                        {
                            chkAuthrise.Checked = true;
                        }
                        else
                        {
                            chkAuthrise.Checked = false;
                        }
                        if (LoginParmit == "TRUE")
                        {
                            chkLoginParmit.Checked = true;
                        }
                        else
                        {
                            chkLoginParmit.Checked = false;
                        }
                        if (Verify == "TRUE")
                        {
                            chkVerify.Checked = true;
                        }
                        else
                        {
                            chkVerify.Checked = false;
                        }

                    }
                    else
                    {
                        Response.Redirect("DoctorVerify.aspx");
                    }
                }
                else
                {
                    btnUpdate.Visible = false;
                    btnHospitalRegistation.Visible = true;
                }


            }
        }

        protected void ddlCountry_TextChanged(object sender, EventArgs e)
        {
            Division(0);
            District(0);
            Upazila(0);
            if (ddlCountry.SelectedValue != "0")
            {
                Division(Convert.ToInt32(ddlCountry.SelectedValue));
            }
        }
        protected void ddlDvision_TextChanged(object sender, EventArgs e)
        {
            District(0);
            Upazila(0);
            if (ddlDvision.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDvision.SelectedValue));
            }
        }
        protected void ddlDistrict_TextChanged(object sender, EventArgs e)
        {
            Upazila(0);
            if (ddlDistrict.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDistrict.SelectedValue));
            }
        }
        protected void btnHospitalRegistation_Click(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue != "0" && ddlDistrict.SelectedValue != "0" && ddlDvision.SelectedValue != "0" && ddlExprience.SelectedValue != "0" && ddlHospitalShift.SelectedValue != "0" && ddlHospitalType.SelectedValue != "0" && ddlOwnerApproval.SelectedValue != "0" && ddlPersonalGender.SelectedValue != "0" && ddlUpazila.SelectedValue != "0" && ddlWorkHere.SelectedValue!="0")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = @"insert into HospitalRegistation (HospitalID,Country,Division,District,Upazilla,HospitalCategory,HospitalType,HospitalShift,RegistationNumber,HospitalName,HospitalWebsite,HospitalEmail,HospitalMoblile,HospitalAddress,OwnerName,OwnerMobile,OwnerApproval,PersonalFullname,PersonalEmail,PersonalMoblie,username,password,NID,WorkHere,Experience,PersonalAddress,Gender,PersonalPhoto,OwnerPhoto,LicencePhoto,HospitalPhoto,Authority,LoginParmit,Verify,Command,Date,Month,Year,IssuDate,Owner)
                (@HospitalID,@Country,@Division,@District,@Upazilla,@HospitalCategory,@HospitalType,@HospitalShift,@RegistationNumber,@HospitalName,@HospitalWebsite,@HospitalEmail,@HospitalMoblile,@HospitalAddress,@OwnerName,@OwnerMobile,@OwnerApproval,@PersonalFullname,@PersonalEmail,@PersonalMoblie,@username,@password,@NID,@WorkHere,@Experience,@PersonalAddress,@Gender,@PersonalPhoto,@OwnerPhoto,@LicencePhoto,@HospitalPhoto,@Authority,@LoginParmit,@Verify,@Command,@Date,@Month,@Year,@IssuDate,@Owner)";
                RandomNumberGenarator rn = new RandomNumberGenarator();
                rn.ResultDate = 15;
                lblHostipalResult.ForeColor = Color.Red;
                int err = 0;
                cmd.Parameters.AddWithValue("@HospitalID",rn.RandomStringNumber("HospitalID"));
                cmd.Parameters.AddWithValue("@Country",ddlCountry.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Division",ddlDvision.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@District",ddlDistrict.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Upazilla",ddlUpazila.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalCategory",ddlHostipal.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalType",ddlHospitalType.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalShift",ddlHospitalShift.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@RegistationNumber",txtHospitalRegNumber.Text);
                cmd.Parameters.AddWithValue("@HospitalName",txtHospitalName.Text);
                cmd.Parameters.AddWithValue("@HospitalWebsite",txtHospitalWebsite.Text);
                cmd.Parameters.AddWithValue("@HospitalEmail",txtHospitalEmail.Text);
                cmd.Parameters.AddWithValue("@HospitalMoblile",txtHospitalMoblie.Text);
                cmd.Parameters.AddWithValue("@HospitalAddress",txtHospitalAddress.Text);
                cmd.Parameters.AddWithValue("@OwnerName",txtHospitalOwnerFullname.Text);
                cmd.Parameters.AddWithValue("@OwnerMobile",txtHospitalOwnerMobile.Text);
                cmd.Parameters.AddWithValue("@OwnerApproval",ddlOwnerApproval.Text);
                cmd.Parameters.AddWithValue("@PersonalFullname",txt_H_P_Fullname.Text);
                cmd.Parameters.AddWithValue("@PersonalEmail",txt_H_P_Email.Text);
                cmd.Parameters.AddWithValue("@PersonalMoblie",txt_H_P_Mobile.Text);
                cmd.Parameters.AddWithValue("@username",txt_H_P_UserName.Text);
                cmd.Parameters.AddWithValue("@password",txt_H_P_Password.Text);
                cmd.Parameters.AddWithValue("@NID",txt_H_P_NID.Text);
                cmd.Parameters.AddWithValue("@WorkHere",ddlWorkHere.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Experience",ddlExprience.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@PersonalAddress",txt_H_P_Address.Text);
                cmd.Parameters.AddWithValue("@Gender",ddlPersonalGender.SelectedItem.ToString());
                if(FileUploadPersonalPhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadPersonalPhoto.FileName.ToLower());
                    if(FileExt==".jpg")
                    {
                        ext = ".jpg";
                    }
                    else if(FileExt==".jpeg")
                    {
                        ext = ".jpeg";
                    }
                    else if(FileExt==".png")
                    {
                        ext = ".png";
                    }
                    else
                    {
                        err++;
                        lblHostipalResult.Text += "Personal Photo upload (.jpg, .jpeg, .png)";
                    }
                    if(ext!="")
                    {
                        
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@PersonalPhoto", Name+ext);
                        FileUploadPersonalPhoto.SaveAs(Server.MapPath("../Hospital/Temp/"+Name+ext));
                        PersonalEdit(Name + ext);
                    }
                    
                }
                else
                {
                    cmd.Parameters.AddWithValue("@PersonalPhoto","N/A");
                }
                if (FileUploadOwnerPhoto.HasFile)
                {
                    string ext = "";
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
                        err++;
                        lblHostipalResult.Text += "Owner Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@OwnerPhoto", Name + ext);
                        FileUploadOwnerPhoto.SaveAs(Server.MapPath("../Hospital/Image/Owner/" + Name + ext));
                    }

                }
                else
                {
                    if(ddlPersonalGender.SelectedValue== "Government")
                    {
                        cmd.Parameters.AddWithValue("@OwnerPhoto", "goverment.png");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@OwnerPhoto", "N/A");
                    }
                }
                if (FileUploadLicencePhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadLicencePhoto.FileName.ToLower());
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
                        err++;
                        lblHostipalResult.Text += "Owner Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@LicencePhoto", Name + ext);
                        FileUploadLicencePhoto.SaveAs(Server.MapPath("../Hospital/Image/Owner/" + Name + ext));
                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@LicencePhoto", "N/A");
                }
                if (FileUploadHospitalPhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadHospitalPhoto.FileName.ToLower());
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
                        err++;
                        lblHostipalResult.Text += "Personal Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {

                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@HospitalPhoto", Name + ext);
                        FileUploadHospitalPhoto.SaveAs(Server.MapPath("../Hospital/Temp/" + Name + ext));
                        HospitalEdit(Name + ext);
                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@HospitalPhoto", "N/A");
                }
                if(chkAuthrise.Checked==true)
                {                    
                    cmd.Parameters.AddWithValue("@Authority", "TRUE");
                }
                else
                {
                    rn.ResultDate = 5;
                    cmd.Parameters.AddWithValue("@Authority", rn.RandomStringNumber("Authority"));                    
                }
                if(chkLoginParmit.Checked==true)
                {
                    cmd.Parameters.AddWithValue("@LoginParmit","TRUE");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@LoginParmit", "FALSE");
                }
                if(chkVerify.Checked==true)
                {
                    cmd.Parameters.AddWithValue("@Verify","TRUE");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Verify", "FALSE");
                }
                cmd.Parameters.AddWithValue("@Command","N/A");
                cmd.Parameters.AddWithValue("@Date",Convert.ToInt32(DateTime.Now.ToString("dd")));
                cmd.Parameters.AddWithValue("@Month", Convert.ToInt32(DateTime.Now.ToString("MM")));
                cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(DateTime.Now.ToString("yyyy")));
                cmd.Parameters.AddWithValue("@IssuDate",DateTime.Now.ToString("dd-MM-yyyy"));
                cmd.Parameters.AddWithValue("@Owner","Admin");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblHostipalResult.Text= "Sucessfully Registation.";
                lblHostipalResult.ForeColor = Color.Green;

            }
            else
            {
                lblHostipalResult.Text += "Seletct all List Fast.";
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
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ddlExprience.SelectedValue != "0" && ddlHospitalShift.SelectedValue != "0" && ddlHospitalType.SelectedValue != "0" && ddlOwnerApproval.SelectedValue != "0" && ddlPersonalGender.SelectedValue != "0"  && ddlWorkHere.SelectedValue != "0")
            {
                string Hospital_ID = Request.QueryString["Edit"].ToString();
                Check chk = new Check();
                var sortcut = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";

                btnUpdate.Visible = true;
                btnHospitalRegistation.Visible = false;
                string Country = "";
                string Division = "";
                string District = "";
                string Upazilla = "";
                if (ddlCountry.SelectedValue != "0" && ddlDistrict.SelectedValue != "0" && ddlDvision.SelectedValue != "0" && ddlUpazila.SelectedValue != "0")
                {
                     Country = ddlCountry.SelectedItem.ToString();
                     Division = ddlDvision.SelectedItem.ToString();
                     District = ddlDistrict.SelectedItem.ToString();
                     Upazilla = ddlUpazila.SelectedItem.ToString();
                }
                else
                {
                     Country = chk.stringCheck("select Country " + sortcut);
                     Division = chk.stringCheck("select Division " + sortcut);
                     District = chk.stringCheck("select District " + sortcut);
                     Upazilla = chk.stringCheck("select Upazilla " + sortcut);
                }
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = @"insert into HospitalRegistation (HospitalID,Country,Division,District,Upazilla,HospitalCategory,HospitalType,HospitalShift,RegistationNumber,HospitalName,HospitalWebsite,HospitalEmail,HospitalMoblile,HospitalAddress,OwnerName,OwnerMobile,OwnerApproval,PersonalFullname,PersonalEmail,PersonalMoblie,username,password,NID,WorkHere,Experience,PersonalAddress,Gender,PersonalPhoto,OwnerPhoto,LicencePhoto,HospitalPhoto,Authority,LoginParmit,Verify,Command,Date,Month,Year,IssuDate,Owner)
                (@HospitalID,@Country,@Division,@District,@Upazilla,@HospitalCategory,@HospitalType,@HospitalShift,@RegistationNumber,@HospitalName,@HospitalWebsite,@HospitalEmail,@HospitalMoblile,@HospitalAddress,@OwnerName,@OwnerMobile,@OwnerApproval,@PersonalFullname,@PersonalEmail,@PersonalMoblie,@username,@password,@NID,@WorkHere,@Experience,@PersonalAddress,@Gender,@PersonalPhoto,@OwnerPhoto,@LicencePhoto,@HospitalPhoto,@Authority,@LoginParmit,@Verify,@Command,@Date,@Month,@Year,@IssuDate,@Owner)";
                RandomNumberGenarator rn = new RandomNumberGenarator();
                rn.ResultDate = 15;
                lblHostipalResult.ForeColor = Color.Red;
                int err = 0;
                cmd.Parameters.AddWithValue("@HospitalID", rn.RandomStringNumber("HospitalID"));
                cmd.Parameters.AddWithValue("@Country",  Country);
                cmd.Parameters.AddWithValue("@Division", Division);
                cmd.Parameters.AddWithValue("@District", District);
                cmd.Parameters.AddWithValue("@Upazilla", Upazilla);
                cmd.Parameters.AddWithValue("@HospitalCategory", ddlHostipal.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalType", ddlHospitalType.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalShift", ddlHospitalShift.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@RegistationNumber", txtHospitalRegNumber.Text);
                cmd.Parameters.AddWithValue("@HospitalName", txtHospitalName.Text);
                cmd.Parameters.AddWithValue("@HospitalWebsite", txtHospitalWebsite.Text);
                cmd.Parameters.AddWithValue("@HospitalEmail", txtHospitalEmail.Text);
                cmd.Parameters.AddWithValue("@HospitalMoblile", txtHospitalMoblie.Text);
                cmd.Parameters.AddWithValue("@HospitalAddress", txtHospitalAddress.Text);
                cmd.Parameters.AddWithValue("@OwnerName", txtHospitalOwnerFullname.Text);
                cmd.Parameters.AddWithValue("@OwnerMobile", txtHospitalOwnerMobile.Text);
                cmd.Parameters.AddWithValue("@OwnerApproval", ddlOwnerApproval.Text);
                cmd.Parameters.AddWithValue("@PersonalFullname", txt_H_P_Fullname.Text);
                cmd.Parameters.AddWithValue("@PersonalEmail", txt_H_P_Email.Text);
                cmd.Parameters.AddWithValue("@PersonalMoblie", txt_H_P_Mobile.Text);
                cmd.Parameters.AddWithValue("@username", txt_H_P_UserName.Text);
                cmd.Parameters.AddWithValue("@password", txt_H_P_Password.Text);
                cmd.Parameters.AddWithValue("@NID", txt_H_P_NID.Text);
                cmd.Parameters.AddWithValue("@WorkHere", ddlWorkHere.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Experience", ddlExprience.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@PersonalAddress", txt_H_P_Address.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlPersonalGender.SelectedItem.ToString());
                if (FileUploadPersonalPhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadPersonalPhoto.FileName.ToLower());
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
                        err++;
                        lblHostipalResult.Text += "Personal Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@PersonalPhoto", Name + ext);
                        FileUploadPersonalPhoto.SaveAs(Server.MapPath("../Hospital/Temp/" + Name + ext));
                        PersonalEdit(Name + ext);
                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@PersonalPhoto", chk.stringCheck("select PersonalPhoto "+sortcut));
                }
                if (FileUploadOwnerPhoto.HasFile)
                {
                    string ext = "";
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
                        err++;
                        lblHostipalResult.Text += "Owner Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@OwnerPhoto", Name + ext);
                        FileUploadOwnerPhoto.SaveAs(Server.MapPath("../Hospital/Image/Owner/" + Name + ext));
                    }

                }
                else
                {
                    if (ddlPersonalGender.SelectedValue == "Government")
                    {
                        cmd.Parameters.AddWithValue("@OwnerPhoto", "goverment.png");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@OwnerPhoto", chk.stringCheck("select OwnerPhoto " + sortcut));
                    }
                }
                if (FileUploadLicencePhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadLicencePhoto.FileName.ToLower());
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
                        err++;
                        lblHostipalResult.Text += "Owner Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {
                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@LicencePhoto", Name + ext);
                        FileUploadLicencePhoto.SaveAs(Server.MapPath("../Hospital/Image/Owner/" + Name + ext));
                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@LicencePhoto", chk.stringCheck("select LicencePhoto " + sortcut));
                }
                if (FileUploadHospitalPhoto.HasFile)
                {
                    string ext = "";
                    string FileExt = Path.GetExtension(FileUploadHospitalPhoto.FileName.ToLower());
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
                        err++;
                        lblHostipalResult.Text += "Personal Photo upload (.jpg, .jpeg, .png)";
                    }
                    if (ext != "")
                    {

                        string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                        cmd.Parameters.AddWithValue("@HospitalPhoto", Name + ext);
                        FileUploadHospitalPhoto.SaveAs(Server.MapPath("../Hospital/Temp/" + Name + ext));
                        HospitalEdit(Name + ext);
                    }

                }
                else
                {
                    cmd.Parameters.AddWithValue("@HospitalPhoto", chk.stringCheck("select HospitalPhoto " + sortcut));
                }
                if (chkAuthrise.Checked == true)
                {                    
                    cmd.Parameters.AddWithValue("@Authority", "TRUE");
                }
                else
                {
                    rn.ResultDate = 5;
                    cmd.Parameters.AddWithValue("@Authority", rn.RandomStringNumber("Authority"));
                }
                if (chkLoginParmit.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@LoginParmit", "TRUE");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@LoginParmit", "FALSE");
                }
                if (chkVerify.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@Verify", "TRUE");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Verify", "FALSE");
                }
                cmd.Parameters.AddWithValue("@Command", "N/A");
                cmd.Parameters.AddWithValue("@Date", Convert.ToInt32(DateTime.Now.ToString("dd")));
                cmd.Parameters.AddWithValue("@Month", Convert.ToInt32(DateTime.Now.ToString("MM")));
                cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(DateTime.Now.ToString("yyyy")));
                cmd.Parameters.AddWithValue("@IssuDate", DateTime.Now.ToString("dd-MM-yyyy"));
                cmd.Parameters.AddWithValue("@Owner", "Admin");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblHostipalResult.Text = "Update Sucessfully Registation.";
                lblHostipalResult.ForeColor = Color.Green;

            }
            else
            {
                lblHostipalResult.Text += "Seletct all List Fast.";
            }


        }



    }
}