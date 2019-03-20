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

namespace doctor
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                Country();
                DocotorCatagoris();
                Session["DoctorUsername"] = null;
                Session["DocotorImage"] = null;
                Session["DoctorID"]  = null;
                Session["DocotorFullName"] = null;

                //Session["UserName"] = null;
                //Session["UserImage"] = null;
                //Session["UserID"] = null;

                Session["HospitalUsername"] = null;
                Session["PersonalImage"] = null;
                Session["HospitalID"] = null;
                Session["PersonalFullname"] = null;
                Session["HospitalName"] = null;

                Session["DonerfullName"] = null;
                Session["DonerImage"] = null;
                Session["DonerUserID"] = null;

                Session["SuperAdminUsername"] = null;
                Session["SuperAdminFullname"] = null;

            }

        }
        private bool checkID(string username)
        {
            Check chk = new Check();
            int Cn = chk.int32Check("select count(*) from Registation where Username='" + username + "'");
            if (Cn == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnuserReg_Click(object sender, EventArgs e)
        {
            
            if (txtname.Text!="" && txtMobile.Text != "" && txtEmail.Text != "" && txtpassword.Text != "" && txtusername.Text != "" && ddlUserGender.SelectedValue!="0")
            {

                if (checkID(txtusername.Text))
                {
                    try
                    {
                        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                        {
                            RandomNumberGenarator rn = new RandomNumberGenarator();
                            rn.ResultDate = 5;
                            string UserID = rn.RandomStringNumber("UserID");
                            SqlCommand cmd = new SqlCommand();
                            cmd.Connection = conn;
                            cmd.CommandText = "insert into Registation (UserID,Name,Username,Password,Email,Mobile,sex,Reg,Auth,Photo) values(@UserID,@Name,@Username,@Password,@Email,@Mobile,@sex,@Reg,@Auth,@Photo)";
                            cmd.Parameters.AddWithValue("@UserID",UserID);
                            cmd.Parameters.AddWithValue("@Name", txtname.Text);
                            cmd.Parameters.AddWithValue("@Username", txtusername.Text);
                            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
                            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                            cmd.Parameters.AddWithValue("@sex", ddlUserGender.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Reg", "User");
                            cmd.Parameters.AddWithValue("@Auth", "True");
                            if(ddlGender.SelectedValue=="Male")
                            {
                                cmd.Parameters.AddWithValue("@Photo", "Male.jpg");
                                Session["UserImage"] = "Male.jpg";
                            }
                            else
                            {
                                cmd.Parameters.AddWithValue("@Photo", "Female.jpg");
                                Session["UserImage"] = "Female.jpg";
                            }                     
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                            txtEmail.Text = "";
                            txtMobile.Text = "";
                            txtname.Text = "";
                            txtpassword.Text = "";
                            txtusername.Text = "";
                            txtAddress.Text = "";
                            Session["UserName"] = txtname.Text;                            
                            Session["UserID"] = UserID;

                            Response.Redirect("~/User/");
                            //lblUserResult.ForeColor = System.Drawing.Color.Green;
                            //lblUserResult.Text = "Sucessfully Registation.";
                        }
                    }
                    catch (Exception err)
                    {
                        lblUserResult.ForeColor = System.Drawing.Color.Red;
                        lblUserResult.Text = "Error: " + err.Message;
                    }
                }
                else
                {
                    lblUserResult.ForeColor = System.Drawing.Color.Red;
                    lblUserResult.Text = "Pleaser Type Another Username.";
                }
            }
            else
            {
                lblUserResult.ForeColor = System.Drawing.Color.Red;
                lblUserResult.Text = "Please Type Correctly.";
            }
            
        }

        protected void btnSP_Click(object sender, EventArgs e)
        { /*
            if (!string.IsNullOrEmpty(txtSPEmail.Text) && !string.IsNullOrEmpty(txtSPMobile.Text) && !string.IsNullOrEmpty(txtSPName.Text) && !string.IsNullOrEmpty(txtSPPassword.Text) && !string.IsNullOrEmpty(txtSPUsername.Text) && ddlSPSex.SelectedValue != "0")
            {
                if (checkID(txtSPUsername.Text))
                {
                    try
                    {
                        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                        {
                            SqlCommand cmd = new SqlCommand();
                            cmd.Connection = conn;
                            cmd.CommandText = "insert into Registation (Name,Username,Password,Email,Mobile,sex,Reg,Auth) values(@Name,@Username,@Password,@Email,@Mobile,@sex,@Reg,@Auth)";
                            cmd.Parameters.AddWithValue("@Name", txtSPName.Text);
                            cmd.Parameters.AddWithValue("@Username", txtSPUsername.Text);
                            cmd.Parameters.AddWithValue("@Password", txtSPPassword.Text);
                            cmd.Parameters.AddWithValue("@Email", txtSPEmail.Text);
                            cmd.Parameters.AddWithValue("@Mobile", txtSPMobile.Text);
                            cmd.Parameters.AddWithValue("@sex", ddlSPSex.SelectedValue.ToString());
                            cmd.Parameters.AddWithValue("@Reg", "ServiceProvider");
                            cmd.Parameters.AddWithValue("@Auth", "True");
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                            txtSPName.Text = "";
                            txtSPUsername.Text = "";
                            txtSPPassword.Text = "";
                            txtSPEmail.Text = "";
                            txtSPMobile.Text = "";
                            lblSPResult.ForeColor = System.Drawing.Color.Green;
                            lblSPResult.Text = "Sucessfully Registation.";
                        }
                    }
                    catch (Exception err)
                    {
                        lblSPResult.ForeColor = System.Drawing.Color.Red;
                        lblSPResult.Text = "Error: " + err.Message;
                    }
                }
                    
                
                
            }
            else
            {
                lblSPResult.ForeColor = System.Drawing.Color.Red;
                lblSPResult.Text = "Please Type Correctly.";
            }
            */
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ddlSelectLogin.SelectedValue == "DLOGIN")
            {
                if (!string.IsNullOrEmpty(txtLOGusername.Text) && !string.IsNullOrEmpty(txtLOGPassword.Text))
                {
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                    {
                        Check chk = new Check();
                        int chack = chk.int32Check("select count(*) from DoctorRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                        if (chack == 1)
                        {
                            string LoginParmit = chk.stringCheck("select LoginParmit from DoctorRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                            string Verify = chk.stringCheck("select Verify from DoctorRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");

                            if (LoginParmit == "TRUE")
                            {
                                SqlCommand cmd = new SqlCommand();
                                cmd.Connection = conn;
                                cmd.CommandText = "select * from DoctorRegistation where Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'";
                                conn.Open();
                                SqlDataReader data = cmd.ExecuteReader();
                                while (data.Read())
                                {
                                    Session["DoctorUsername"] = data["Username"].ToString();
                                    Session["DocotorImage"] = data["DoctorPhoto"].ToString();
                                    Session["DoctorID"] = data["DoctorID"].ToString();
                                    Session["DocotorFullName"] = data["FullName"].ToString();
                                }
                                if (Verify == "FALSE")
                                {
                                    Response.Redirect("Doctor/Verify");
                                }
                                else
                                {
                                    Response.Redirect("Doctor/");
                                }
                            }
                            else
                            {
                                lblloginResult.Text = "[You Have No Login Permit. Contact Us!]";
                            }

                        }
                        else
                        {
                            lblloginResult.Text = "[Invailed UserName/Password !]";
                        }

                    }
                }
                else
                {
                    lblloginResult.Text = "[Empty UserName/Password !]";
                }

            }
            else if(ddlSelectLogin.SelectedValue== "HLONIG")
            {
                if (!string.IsNullOrEmpty(txtLOGusername.Text) && !string.IsNullOrEmpty(txtLOGPassword.Text))
                {
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                    {
                        Check chk = new Check();
                        int chack = chk.int32Check("select count(*) from HospitalRegistation where  username='" + txtLOGusername.Text + "' and password='" + txtLOGPassword.Text + "'");
                        if (chack == 1)
                        {
                            string LoginParmit = chk.stringCheck("select LoginParmit from HospitalRegistation where  username='" + txtLOGusername.Text + "' and password='" + txtLOGPassword.Text + "'");
                            string Verify = chk.stringCheck("select Verify from HospitalRegistation where  username='" + txtLOGusername.Text + "' and password='" + txtLOGPassword.Text + "'");

                            if (LoginParmit == "TRUE")
                            {
                                SqlCommand cmd = new SqlCommand();
                                cmd.Connection = conn;
                                cmd.CommandText = "select * from HospitalRegistation where username='" + txtLOGusername.Text + "' and password='" + txtLOGPassword.Text + "'";
                                conn.Open();
                                SqlDataReader data = cmd.ExecuteReader();
                                while (data.Read())
                                {
                                    Session["HospitalUsername"] = data["username"].ToString();
                                    Session["PersonalImage"] = data["PersonalPhoto"].ToString();
                                    Session["HospitalID"] = data["HospitalID"].ToString();
                                    Session["PersonalFullname"] = data["PersonalFullname"].ToString();
                                    Session["HospitalName"] = data["HospitalName"].ToString();
                                }
                                if (Verify == "FALSE")
                                {
                                    Response.Redirect("Hospital/Verify");
                                }
                                else
                                {
                                    Response.Redirect("Hospital/");
                                }
                            }
                            else
                            {
                                lblloginResult.Text = "[You Have No Login Permit. Contact Us!]";
                            }



                        }
                        else
                        {
                            lblloginResult.Text = "[Invailed UserName/Password !]";
                        }
                    }

                    }
                else
                {
                    lblloginResult.Text = "[Empty UserName/Password !]";
                }
            }
            else if(ddlSelectLogin.SelectedValue == "BDLOGIN")
            {
                if (!string.IsNullOrEmpty(txtLOGusername.Text) && !string.IsNullOrEmpty(txtLOGPassword.Text))
                {
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                    {
                        Check chk = new Check();
                        int chack = chk.int32Check("select count(*) from DonerRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                        if (chack == 1)
                        {
                            Session["DonerfullName"] = chk.stringCheck("select Fullname from DonerRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                            Session["DonerImage"] = chk.stringCheck("select Photo from DonerRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                            Session["DonerUserID"] = chk.stringCheck("select DonerID from DonerRegistation where  Username='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                            Response.Redirect("~/Donor/");
                        }
                        else
                        {
                            lblloginResult.Text = "[Invailed UserName/Password !]";
                        }
                    }
                }
            }



        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        private void DocotorCatagoris()
        {
            ddlDoctorCatagoris.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Catagoris from DoctorCatagoris order by Catagoris";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDoctorCatagoris.Items.Add(new ListItem("Doctor Categories", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Catagoris"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDoctorCatagoris.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Country()
        {
            ddlCountry.Items.Clear();
            ddlCountry2.Items.Clear();
            ddlDonerCountry.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Country order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlCountry.Items.Add(new ListItem("Select Country", "0"));
            ddlCountry2.Items.Add(new ListItem("Select Country", "0"));
            ddlDonerCountry.Items.Add(new ListItem("Select Country", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlCountry.Items.Add(new_Item);
                ddlCountry2.Items.Add(new_Item);
                ddlDonerCountry.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Division(int ID)
        {
            ddlDvision.Items.Clear();
            ddlDivision2.Items.Clear();
            ddlDonerDivision.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID+" order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDvision.Items.Add(new ListItem("Select Division", "0"));
            ddlDivision2.Items.Add(new ListItem("Select Division", "0"));
            ddlDonerDivision.Items.Add(new ListItem("Select Division", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDvision.Items.Add(new_Item);
                ddlDivision2.Items.Add(new_Item);
                ddlDonerDivision.Items.Add(new_Item);
            }
            con.Close();
        }
        private void District(int ID)
        {
            ddlDistrict.Items.Clear();
            ddlDistric2.Items.Clear();
            ddlDonerDistrict.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from District where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDistrict.Items.Add(new ListItem("Select District", "0"));
            ddlDistric2.Items.Add(new ListItem("Select District", "0"));
            ddlDonerDistrict.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDistrict.Items.Add(new_Item);
                ddlDistric2.Items.Add(new_Item);
                ddlDonerDistrict.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Upazila(int ID)
        {
            ddlUpazila.Items.Clear();
            ddlUpazila2.Items.Clear();
            ddlDonerUpazila.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Upazila where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlUpazila.Items.Add(new ListItem("Select Upazila", "0"));
            ddlUpazila2.Items.Add(new ListItem("Select Upazila", "0"));
            ddlDonerUpazila.Items.Add(new ListItem("Select Upazila", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlUpazila.Items.Add(new_Item);
                ddlUpazila2.Items.Add(new_Item);
                ddlDonerUpazila.Items.Add(new_Item);
            }
            con.Close();
        }
        protected void ddlCountry_TextChanged(object sender, EventArgs e)
        {
            Division(0);
            District(0);
            Upazila(0);
            if (ddlCountry.SelectedValue !="0")
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
        protected void btnSave_Click(object sender, EventArgs e)
        {
            Check chk = new Check();
            int err = 0;
            lblDoctorResult.Text = "";
            string DoctorImageEXT = "";
            string DoctorLicenceImageEXT = "";
            if (string.IsNullOrEmpty(txtDoctorFullName.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Full Name Required]";
            }
            if(string.IsNullOrEmpty(txtQualification.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Qualification Required]";
            }
            if (string.IsNullOrEmpty(txtDesignation.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Designation Required]";
            }
            if(string.IsNullOrEmpty(txtExpertise.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Expertise Required]";
            }
            if(string.IsNullOrEmpty(txtRegistationNumber.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Rsgistation Number Required]";
            }
            if (string.IsNullOrEmpty(txtDoctorNID.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor NID Required]";
            }
            if (string.IsNullOrEmpty(txtDoctorMobile.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Mobile Required]";
            }
            else
            {
                if(chk.int32Check("select count(*) from DoctorRegistation where Mobile='"+ txtDoctorMobile.Text + "'")==1)
                {
                    err++;
                    lblDoctorResult.Text += "<br/>Type [Doctor Mobile is Avaiable.]";
                }
            }

            if (string.IsNullOrEmpty(txtDoctorEmail.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Email Required]";
            }
            else
            {
                if (chk.int32Check("select count(*) from DoctorRegistation where Email='" + txtDoctorEmail.Text + "'") == 1)
                {
                    err++;
                    lblDoctorResult.Text += "<br/>Type [Doctor Email is Avaiable.]";
                }
            }
            if (string.IsNullOrEmpty(txtDoctorAddress.Text))
            {
                err++;

                lblDoctorResult.Text += "<br/>Type [Doctor Address Required]";
            }
            if (string.IsNullOrEmpty(txtPresentProfession.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Present Profession Required]";
            }
            if (ddlGender.SelectedValue == "0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Gender Required]";
            }
            if (ddlCountry.SelectedValue == "0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Country Required]";
            }
            if(ddlDistrict.SelectedValue == "0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor District Required]";
            }
            if(ddlDvision.SelectedValue=="0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Division Required]";
            }
            if(ddlUpazila.SelectedValue=="0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Upazila Required]";
            }
            if (ddlDoctorCatagoris.SelectedValue == "0")
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Categories Required]";
            }
            /*
            if(FileUploadDoctorImage.HasFile)
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
            */
            if (string.IsNullOrEmpty(txtDoctorUserName.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor UserName Required]";
            }
            if (string.IsNullOrEmpty(txtDoctorPassword.Text))
            {
                err++;
                lblDoctorResult.Text += "<br/>Type [Doctor Password Required]";
            }
            if (err==0)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = @"insert into DoctorRegistation (DoctorID,FullName,Qualification,Designation,Expertise,RegistationNumber,PresentProfession,Gender,Country,Division,District,Upazila,NID,Mobile,Telephone,Email,Address,DoctorPhoto,DoctorLicensePhoto,Date,Month,Year,IssuDate,Authorise,Verify,Username,Password,LoginParmit,Owner,Categories)
                        Values (@DoctorID, @FullName, @Qualification, @Designation, @Expertise, @RegistationNumber, @PresentProfession, @Gender, @Country, @Division, @District, @Upazila, @NID, @Mobile, @Telephone, @Email, @Address, @DoctorPhoto, @DoctorLicensePhoto, @Date, @Month, @Year, @IssuDate, @Authorise, @Verify,@Username,@Password,@LoginParmit,@Owner,@Categories)";
                    RandomNumberGenarator RAN = new RandomNumberGenarator();
                    RAN.ResultDate = 10;
                    string RandomNumber = RAN.RandomStringNumber("DoctorID");
                    cmd.Parameters.AddWithValue("@DoctorID", RandomNumber);
                    cmd.Parameters.AddWithValue("@FullName",txtDoctorFullName.Text);
                    cmd.Parameters.AddWithValue("@Qualification",txtQualification.Text);
                    cmd.Parameters.AddWithValue("@Designation",txtDesignation.Text);
                    cmd.Parameters.AddWithValue("@Expertise",txtExpertise.Text);
                    cmd.Parameters.AddWithValue("@RegistationNumber",txtRegistationNumber.Text);
                    cmd.Parameters.AddWithValue("@PresentProfession",txtPresentProfession.Text);
                    cmd.Parameters.AddWithValue("@Gender",ddlGender.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Country",ddlCountry.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Division",ddlDvision.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@District",ddlDistrict.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Upazila",ddlUpazila.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@NID", txtDoctorNID.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txtDoctorMobile.Text);
                    cmd.Parameters.AddWithValue("@Telephone",txtDoctorTelephone.Text);
                    cmd.Parameters.AddWithValue("@Email",txtDoctorEmail.Text);
                    cmd.Parameters.AddWithValue("@Username", txtDoctorUserName.Text);
                    cmd.Parameters.AddWithValue("@Password", txtDoctorPassword.Text);
                    cmd.Parameters.AddWithValue("@Address",txtDoctorAddress.Text);
                    // FileUploadDoctorImage.SaveAs(Server.MapPath("~/Doctor/Temp/"+RandomNumber+DoctorImageEXT));
                    // ImageEdit(RandomNumber,DoctorImageEXT);//Image Divider Function
                    string Gender = "noimage.png";
                    if (ddlGender.SelectedValue == "Male")
                    {
                        Gender = "MaleProfile.jpg";
                    }
                    else if(ddlGender.SelectedValue == "Female")
                    {
                        Gender = "FemaleProfile.jpg";
                    }
                    cmd.Parameters.AddWithValue("@DoctorPhoto", Gender);
                 //   FileUploadDoctorLicenceInage.SaveAs(Server.MapPath("~/Doctor/LicenceImage"+RandomNumber+DoctorLicenceImageEXT));
                    cmd.Parameters.AddWithValue("@DoctorLicensePhoto", "NULL");
                    DateZone date = new DateZone("+06:00");
                    cmd.Parameters.AddWithValue("@Date",date.DateTimeZone("dd"));
                    cmd.Parameters.AddWithValue("@Month", date.DateTimeZone("MM"));
                    cmd.Parameters.AddWithValue("@Year", date.DateTimeZone("yyyy"));
                    cmd.Parameters.AddWithValue("@IssuDate",DateTime.Now.ToString());
                    RAN.ResultDate = 5;
                    string vCode = RAN.RandomStringNumber("Authority");
                    cmd.Parameters.AddWithValue("@Authorise", vCode); 
                    cmd.Parameters.AddWithValue("@Verify","FALSE"); 
                    cmd.Parameters.AddWithValue("@LoginParmit", "TRUE");
                    cmd.Parameters.AddWithValue("@Owner", "OWNER");
                    cmd.Parameters.AddWithValue("@Categories", ddlDoctorCatagoris.SelectedItem.ToString());
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();                    
                    txtDesignation.Text = "";
                    txtDoctorAddress.Text = "";
                    txtDoctorEmail.Text = "";
                    txtDoctorFullName.Text = "";
                    txtDoctorMobile.Text = "";
                    txtDoctorPassword.Text = "";
                    txtDoctorTelephone.Text = "";
                    txtDoctorUserName.Text = "";
                    txtExpertise.Text = "";
                    txtDoctorNID.Text = "";
                    txtQualification.Text = "";
                    txtPresentProfession.Text = "";
                    txtRegistationNumber.Text = "";
                    ddlCountry.SelectedValue = "0";
                    ddlDistrict.SelectedValue = "0";
                    ddlDvision.SelectedValue = "0";
                    ddlGender.SelectedValue = "0";
                    ddlUpazila.SelectedValue = "0";
                    ddlDoctorCatagoris.SelectedValue = "0";
                    Division(0);
                    District(0);
                    Upazila(0);

                    Session["DoctorUsername"] = txtDoctorUserName.Text;
                    Session["DocotorImage"] = "~/Doctor/Image/Profile/noimage.png";
                    Session["DoctorID"] = RandomNumber.ToString();
                    Session["DocotorFullName"] = txtDoctorFullName.Text;

                    mail m = new mail();
                    string Messege = "Dear " + txtDoctorFullName.Text+" Thankyou for Registation BD Doctors Point. Verify Code: "+vCode;
                    m.SendMail(txtDoctorEmail.Text, "BD Doctors Point", Messege);


                    Response.Redirect("Doctor/");

                }
                catch (Exception error)
                {
                    lblDoctorResult.Text = "Server Error : "+error.Message;
                }

            }

        }
        public void ImageEdit(string RandomNumber, string DoctorImageEXT)
        {
            //---------------------------------------------------------------------------------------------
            string path =Server.MapPath("~/Doctor/Temp/" + RandomNumber + DoctorImageEXT);
            string DocDetails = Server.MapPath("~/Doctor/Image/Details/" +RandomNumber+DoctorImageEXT);
            string DocFeedBack = Server.MapPath("~/Doctor/Image/FeedBack/" + RandomNumber + DoctorImageEXT);
            string Pageview = Server.MapPath("~/Doctor/Image/PageView/" + RandomNumber + DoctorImageEXT);
            string DoctorProfile = Server.MapPath("~/Doctor/Image/Profile/" + RandomNumber + DoctorImageEXT);

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
        protected void ddlCountry2_TextChanged(object sender, EventArgs e)
        {
            Division(0);
            District(0);
            Upazila(0);
            if (ddlCountry2.SelectedValue != "0")
            {
                Division(Convert.ToInt32(ddlCountry2.SelectedValue));
            }
        }
        protected void ddlDivision2_TextChanged(object sender, EventArgs e)
        {
            District(0);
            Upazila(0);
            if (ddlDivision2.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDivision2.SelectedValue));
            }
        }
        protected void ddlDistric2_TextChanged(object sender, EventArgs e)
        {
            Upazila(0);
            if (ddlDistric2.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDistric2.SelectedValue));
            }
        }
        protected void ddlType_TextChanged(object sender, EventArgs e)
        {
            if(ddlHospitalType.SelectedValue== "Government")
            {
                txtHospitalOwnerFullname.Text = "N/A";
                txtHospitalOwnerMobile.Text = "N/A";
                txtHospitalOwnerFullname.Enabled = false;
                txtHospitalOwnerMobile.Enabled = false;
            }
            else
            {
                txtHospitalOwnerFullname.Text = "";
                txtHospitalOwnerMobile.Text = "";
                txtHospitalOwnerFullname.Enabled = true;
                txtHospitalOwnerMobile.Enabled = true;
            }
        }
        protected void btnHospitalRegistation_Click(object sender, EventArgs e)
        {
            string Messege = "";
            int err = 0;
            if(ddlCountry2.SelectedValue !="0" && ddlDistric2.SelectedValue !="0" && ddlDivision2.SelectedValue !="0" && ddlUpazila2.SelectedValue !="0" && ddlHospitalType.SelectedValue !="0" && ddlHospitalShift.SelectedValue !="0" && txtHospitalRegNumber.Text !="")
            {
                
            }
            else
            {
                err++;
                Messege += "Please Fill Hospital Details..<br/>";               
            }
            if (txtHospitalName.Text != "" && txtHospitalMoblie.Text != "" && txtHospitalAddress.Text != "")
            { }
            else
            {
                err++;
                Messege += "Please Hospital (Name /Details/ Address)..<br/>";
            }
            if (ddlHospitalType.SelectedValue!="0" && ddlHospitalType.SelectedValue != "Government")
            {
                if(txtHospitalOwnerFullname.Text !="" && txtHospitalOwnerMobile.Text !="" && ddlOwnerApproval.SelectedValue!="0")
                { }
                else
                {
                    err++;
                    Messege += "Please Type Owner Details... <br/>";
                }
            }
            if(ddlOwnerApproval.SelectedValue=="0")
            {
                err++;
                Messege += "Owner Approval Select..<br/>";
            }
            if(txt_H_P_Address.Text !="" && txt_H_P_Email.Text!="" && txt_H_P_Fullname.Text !="" && txt_H_P_Mobile.Text !="" && txt_H_P_UserName.Text !="" && txt_H_P_Password.Text!="" && txt_H_P_NID.Text !="" && ddlPersonalGender.SelectedValue!="0")
            {
                Check chk = new Check();
                if(chk.int32Check("select count(*) from HospitalRegistation where username='"+txt_H_P_UserName.Text+"'")>0)
                {
                    err++;
                    Messege += "Username is not Available..<br/>";
                }
                if(chk.int32Check("select count(*) from HospitalRegistation where PersonalEmail='" + txt_H_P_Email.Text + "'") > 0)
                {
                    err++;
                    Messege += "Email is Already Insert try another..<br/>";
                }
                if (chk.int32Check("select count(*) from HospitalRegistation where PersonalMoblie='" + txt_H_P_Mobile.Text + "'") > 0)
                {
                    err++;
                    Messege += "Mobile Number is Already Insert try another..<br/>";
                }
            }
            else
            {
                err++;
                Messege += "Type All Personal Details..<br/>";
            }

            if (err==0)
            {
                RandomNumberGenarator rn = new RandomNumberGenarator();
                rn.ResultDate = 15;
                string HospitalID = rn.RandomStringNumber("HospitalID");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = @"insert into HospitalRegistation (HospitalID,Country,Division,District,Upazilla,HospitalCategory,HospitalType,HospitalShift,RegistationNumber,HospitalName,HospitalWebsite,HospitalEmail,HospitalMoblile,HospitalAddress,OwnerName,OwnerMobile,OwnerApproval,PersonalFullname,PersonalEmail,PersonalMoblie,username,password,NID,WorkHere,Experience,PersonalAddress,Gender,Authority,LoginParmit,Verify,Date,Month,Year,IssuDate,Owner,OwnerPhoto,PersonalPhoto)
        values(@HospitalID,@Country,@Division,@District,@Upazilla,@HospitalCategory,@HospitalType,@HospitalShift,@RegistationNumber,@HospitalName,@HospitalWebsite,@HospitalEmail,@HospitalMoblile,@HospitalAddress,@OwnerName,@OwnerMobile,@OwnerApproval,@PersonalFullname,@PersonalEmail,@PersonalMoblie,@username,@password,@NID,@WorkHere,@Experience,@PersonalAddress,@Gender,@Authority,@LoginParmit,@Verify,@Date,@Month,@Year,@IssuDate,@Owner,@OwnerPhoto,@PersonalPhoto)";
                cmd.Parameters.AddWithValue("@HospitalID", HospitalID);
                cmd.Parameters.AddWithValue("@Country",ddlCountry2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Division",ddlDivision2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@District",ddlDistric2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Upazilla",ddlUpazila2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalCategory",ddlHostipal.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalType",ddlHospitalType.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@HospitalShift",ddlHospitalShift.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@RegistationNumber", txtHospitalRegNumber.Text);
                cmd.Parameters.AddWithValue("@HospitalName",txtHospitalName.Text);
                cmd.Parameters.AddWithValue("@HospitalWebsite",txtHospitalWebsite.Text);
                cmd.Parameters.AddWithValue("@HospitalEmail",txtHospitalEmail.Text);
                cmd.Parameters.AddWithValue("@HospitalMoblile",txtHospitalMoblie.Text);
                cmd.Parameters.AddWithValue("@HospitalAddress",txtHospitalAddress.Text);
                if(ddlHospitalType.SelectedValue== "Government")
                {
                    cmd.Parameters.AddWithValue("@OwnerName","N/A");
                    cmd.Parameters.AddWithValue("@OwnerMobile","N/A");
                    cmd.Parameters.AddWithValue("@OwnerPhoto", "goverment.png");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@OwnerName", txtHospitalOwnerFullname.Text);
                    cmd.Parameters.AddWithValue("@OwnerMobile",txtHospitalOwnerMobile.Text);
                    cmd.Parameters.AddWithValue("@OwnerPhoto", "N/A");
                }
                cmd.Parameters.AddWithValue("@OwnerApproval",ddlOwnerApproval.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@PersonalFullname",txt_H_P_Fullname.Text);
                cmd.Parameters.AddWithValue("@PersonalEmail",txt_H_P_Email.Text);
                cmd.Parameters.AddWithValue("@PersonalMoblie",txt_H_P_Mobile.Text);
                cmd.Parameters.AddWithValue("@username",txt_H_P_UserName.Text);
                cmd.Parameters.AddWithValue("@password",txt_H_P_Password.Text);
                cmd.Parameters.AddWithValue("@NID", txt_H_P_NID.Text);
                cmd.Parameters.AddWithValue("@WorkHere",ddlWorkHere.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@Experience",ddlExprience.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@PersonalAddress",txt_H_P_Address.Text);

                if(ddlPersonalGender.SelectedValue=="Male")
                {
                    cmd.Parameters.AddWithValue("@PersonalPhoto", "Male.jpg");
                }
                else
                {
                    cmd.Parameters.AddWithValue("@PersonalPhoto", "Female.jpg");
                }
                cmd.Parameters.AddWithValue("@Gender", ddlPersonalGender.SelectedValue.ToString());
                rn.ResultDate = 5;
                string vCode = rn.RandomStringNumber("Authority");
                cmd.Parameters.AddWithValue("@Authority", vCode);
                cmd.Parameters.AddWithValue("@LoginParmit","TRUE");
                cmd.Parameters.AddWithValue("@Verify","FALSE");
                cmd.Parameters.AddWithValue("@Date",Convert.ToInt32(DateTime.Now.ToString("dd")));
                cmd.Parameters.AddWithValue("@Month", Convert.ToInt32(DateTime.Now.ToString("MM")));
                cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(DateTime.Now.ToString("yyyy")));
                cmd.Parameters.AddWithValue("@IssuDate",DateTime.Now.ToString("dd-MM-yyyy"));
                cmd.Parameters.AddWithValue("@Owner","Owner");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Session["HospitalUsername"] = txt_H_P_UserName.Text;
                Session["PersonalImage"] = ddlPersonalGender.SelectedValue.ToString()+".jpg";
                Session["HospitalID"] = HospitalID;
                Session["PersonalFullname"] = txt_H_P_Fullname.Text;
                Session["HospitalName"] = txtHospitalName.Text;

                mail m = new mail();
                string Messege1 = "Dear " + txt_H_P_Fullname.Text + " Thankyou for Registation BD Doctors Point. Verify Code: " + vCode;
                m.SendMail(txtDoctorEmail.Text, "BD Doctors Point", Messege1);

                Response.Redirect("Hospital/Verify");
            }
            else
            {
                lblHostipalResult.Text = Messege;
                lblHostipalResult.ForeColor = Color.Red;
            }

        }
        protected void ddlDonerCountry_TextChanged(object sender, EventArgs e)
        {
            Division(0);
            District(0);
            Upazila(0);
            if (ddlDonerCountry.SelectedValue != "0")
            {
                Division(Convert.ToInt32(ddlDonerCountry.SelectedValue));
            }
        }
        protected void ddlDonerDivision_TextChanged(object sender, EventArgs e)
        {
            District(0);
            Upazila(0);
            if (ddlDonerDivision.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDonerDivision.SelectedValue));
            }
        }
        protected void ddlDonerDistrict_TextChanged(object sender, EventArgs e)
        {
            Upazila(0);
            if (ddlDonerDistrict.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDonerDistrict.SelectedValue));
            }
        }
        protected void btnDonerRegistation_Click(object sender, EventArgs e)
        {
            if(txtDonerAddress.Text!="" && txtDonerEmail.Text !="" && txtDonerMobile.Text!="" && txtDonerName.Text!="" && ddlDonerBloodGroup.SelectedValue!="0" && ddlDonerCountry.SelectedValue!="0" && ddlDonerDistrict.SelectedValue!="0" && ddlDonerDivision.SelectedValue!="0" && ddlDonerGender.Text !="0" && ddlDonerUpazila.SelectedValue!="0" && txtDonerUserName.Text!="" && txtDonerPassword.Text!="")
            {
                Check chk = new Check();
                if (chk.int32Check("select count(*) from DonerRegistation where Email='" + txtDonerEmail.Text + "'") == 0 && chk.int32Check("select count(*) from DonerRegistation where Mobile='" + txtDonerMobile.Text + "'") == 0 && chk.int32Check("select count(*) from DonerRegistation where Username='" + txtDonerUserName.Text + "'") == 0)
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = @"insert into DonerRegistation (DonerID,Fullname,Username,Password,BloodGroup,Email,Mobile ,Gender,Country,Division,District,Upazila,Address,Authority,Photo,Category)
                values(@DonerID,@Fullname,@Username,@Password,@BloodGroup,@Email,@Mobile,@Gender,@Country,@Division,@District,@Upazila,@Address,@Authority,@Photo,@Category)";
                    RandomNumberGenarator RN = new RandomNumberGenarator();
                    RN.ResultDate = 5;
                    string vCode = RN.RandomStringNumber("Authority");
                    string DonerID = RN.RandomStringNumber("DonerID");
                    cmd.Parameters.AddWithValue("@DonerID", DonerID);
                    cmd.Parameters.AddWithValue("@Fullname", txtDonerName.Text);
                    cmd.Parameters.AddWithValue("@Username", txtDonerUserName.Text);
                    cmd.Parameters.AddWithValue("@Password", txtDonerPassword.Text);
                    cmd.Parameters.AddWithValue("@BloodGroup", ddlDonerBloodGroup.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Email", txtDonerEmail.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txtDonerMobile.Text);
                    cmd.Parameters.AddWithValue("@Gender", ddlDonerGender.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Country", ddlDonerCountry.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Division", ddlDonerDivision.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@District", ddlDonerDistrict.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Upazila", ddlDonerUpazila.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Address", txtDonerAddress.Text);//
                    cmd.Parameters.AddWithValue("@Authority", vCode);
                    cmd.Parameters.AddWithValue("@Category", ddlDonerBloodGroup.SelectedValue.ToString());
                    if (donerPhotoupload.HasFiles)
                    {
                        string file = Path.GetExtension(donerPhotoupload.FileName.ToLower());
                        if(file==".jpg")
                        {
                            string ext = ".jpg";
                            string name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                            donerPhotoupload.SaveAs(Server.MapPath("~/Donor/Temp/"+ name + ext));
                            string path = Server.MapPath("~/Donor/Temp/" + name + ext);
                            string DocDetails = Server.MapPath("~/Donor/Details/" + name + ext);
                            string DocFeedBack = Server.MapPath("~/Donor/FeedBack/" + name + ext);
                            string Pageview = Server.MapPath("~/Donor/PageView/" + name + ext);
                            string DoctorProfile = Server.MapPath("~/Donor/Profile/" + name + ext);

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
                            Session["DonerImage"] = name+ext;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Session["DonerfullName"] = txtDonerName.Text;
                            Session["DonerUserID"] = DonerID;
                            txtDonerName.Text = "";
                            txtpassword.Text = "";
                            txtDonerEmail.Text = "";
                            txtDonerMobile.Text = "";
                            txtDonerAddress.Text = "";
                            ddlDonerGender.SelectedValue = "0";
                            ddlDonerCountry.SelectedValue = "0";
                            District(0);
                            Division(0);
                            Upazila(0);

                            mail m = new mail();
                            m.SendMail(txtDonerEmail.Text, "Doner Verify", "Verift Code: " + vCode);

                            Response.Redirect("~/Donor/");
                        }
                        else
                        {
                            lblDonerResult.ForeColor = Color.Red;
                            lblDonerResult.Text = "Image Upload only jpg.";
                        }

                    }
                    else
                    {
                        if (ddlDonerGender.SelectedValue == "Male")
                        {
                            cmd.Parameters.AddWithValue("@Photo", "Male.jpg");
                            Session["DonerImage"] = "Male.jpg";
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Photo", "Female.jpg");
                            Session["DonerImage"] = "Female.jpg";
                        }

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Session["DonerfullName"] = txtDonerName.Text;
                        Session["DonerUserID"] = DonerID;
                        txtDonerName.Text = "";
                        txtpassword.Text = "";
                        txtDonerEmail.Text = "";
                        txtDonerMobile.Text = "";
                        txtDonerAddress.Text = "";
                        ddlDonerGender.SelectedValue = "0";
                        ddlDonerCountry.SelectedValue = "0";
                        District(0);
                        Division(0);
                        Upazila(0);
                        Response.Redirect("~/Donor/");
                    }

                }
                else
                {
                    lblDonerResult.ForeColor = Color.Red;
                    lblDonerResult.Text = "Email/ Mobile Already Insert..";
                }

            }
            else
            {
                lblDonerResult.ForeColor = Color.Red;
                lblDonerResult.Text = "Type All details..";
            }
        }


    }
    
}