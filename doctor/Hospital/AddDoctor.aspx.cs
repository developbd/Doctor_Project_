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

namespace doctor.Hospital
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Country();
                DocotorCatagoris();
                if (Request.QueryString["Edit"] != null)
                {
                    Check chk = new Check();
                    string Doctor_ID = Request.QueryString["Edit"].ToString();
                    var shortCut = " from DoctorRegistation where DoctorID='" + Doctor_ID + "'";
                    if (chk.int32Check("select count(*) from DoctorRegistation where DoctorID='" + Doctor_ID + "'") == 1)
                    {
                        txtDoctorFullName.Text = chk.stringCheck("select FullName " + shortCut);
                        txtQualification.Text = chk.stringCheck("select Qualification " + shortCut);
                        txtDesignation.Text = chk.stringCheck("select Designation " + shortCut);
                        txtExpertise.Text = chk.stringCheck("select Expertise " + shortCut);
                        ddlDoctorCatagoris.SelectedValue = chk.stringCheck("select Categories " + shortCut);
                        txtRegistationNumber.Text = chk.stringCheck("select RegistationNumber " + shortCut);
                        txtPresentProfession.Text = chk.stringCheck("select PresentProfession " + shortCut);
                        ddlGender.SelectedValue = chk.stringCheck("select Gender " + shortCut);
                        lblCountry.Text = chk.stringCheck("select Country " + shortCut) + " - " + chk.stringCheck("select Division " + shortCut) + " - " + chk.stringCheck("select District " + shortCut) + " - " + chk.stringCheck("select Upazila " + shortCut);
                        txtNID.Text = chk.stringCheck("select NID " + shortCut);
                        txtDoctorMobile.Text = chk.stringCheck("select Mobile " + shortCut);
                        txtDoctorTelephone.Text = chk.stringCheck("select Telephone " + shortCut);
                        txtDoctorEmail.Text = chk.stringCheck("select Email " + shortCut);
                        txtDoctorUserName.Text = chk.stringCheck("select Username " + shortCut);
                        txtDoctorPassword.Text = chk.stringCheck("select Password " + shortCut);
                        txtDoctorAddress.Text = chk.stringCheck("select Address " + shortCut);
                        ImageDoctorPhoto.ImageUrl = "../Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto " + shortCut);
                        ImageDoctorPhoto.PostBackUrl = "../Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto " + shortCut);
                        ImageLicencePhoto.PostBackUrl = "../Doctor/LicenceImage/" + chk.stringCheck("select DoctorLicensePhoto " + shortCut);
                        ImageLicencePhoto.ImageUrl = "../Doctor/LicenceImage/" + chk.stringCheck("select DoctorLicensePhoto " + shortCut);
                        btnDoctorRegistaion.Visible = false;
                        btnUpdate.Visible = true;
                    }
                    else
                    {
                        Response.Redirect("DoctorVerify.aspx");
                    }
                }
                else
                {
                    btnDoctorRegistaion.Visible = true;
                    btnUpdate.Visible = false;
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
                new_Item.Value = DATA["Catagoris"].ToString();
                ddlDoctorCatagoris.Items.Add(new_Item);
            }
            con.Close();
        }
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
        protected void ddlCountry_TextChanged(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue != "0")
            {
                Division(Convert.ToInt32(ddlCountry.SelectedValue));
            }
        }
        protected void ddlDvision_TextChanged(object sender, EventArgs e)
        {
            if (ddlDvision.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDvision.SelectedValue));
            }
        }
        protected void ddlDistrict_TextChanged(object sender, EventArgs e)
        {
            if (ddlDistrict.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDistrict.SelectedValue));
            }
        }
        protected void btnDoctorRegistaion_Click(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue != "0" && ddlDistrict.SelectedValue != "0" && ddlDvision.SelectedValue != "0" && ddlGender.SelectedValue != "0" && ddlUpazila.SelectedValue != "0")
            {
                lblResult.Text = "";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = @"insert into DoctorRegistation (DoctorID,FullName,Qualification,Designation,Categories,Expertise,RegistationNumber,PresentProfession,Gender,Country,Division,District,Upazila,NID,Mobile,Telephone,Email,Username,Password,Address,DoctorPhoto,DoctorLicensePhoto,Date,Month,Year,IssuDate,Authorise,LoginParmit,Verify,Owner,Command,DoctorDetails)
    values(@DoctorID,@FullName,@Qualification,@Designation,@Categories,@Expertise,@RegistationNumber,@PresentProfession,@Gender,@Country,@Division,@District,@Upazila,@NID,@Mobile,@Telephone,@Email,@Username,@Password,@Address,@DoctorPhoto,@DoctorLicensePhoto,@Date,@Month,@Year,@IssuDate,@Authorise,@LoginParmit,@Verify,@Owner,@Command,@DoctorDetails)";
                RandomNumberGenarator rn = new RandomNumberGenarator();
                rn.ResultDate = 10;
                string DoctorID = rn.RandomStringNumber("DoctorID");
                cmd.Parameters.AddWithValue("@DoctorID", DoctorID);
                cmd.Parameters.AddWithValue("@FullName", txtDoctorFullName.Text);
                cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text);
                cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text);
                cmd.Parameters.AddWithValue("@Categories", ddlDoctorCatagoris.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Expertise", txtExpertise.Text);
                cmd.Parameters.AddWithValue("@RegistationNumber", txtRegistationNumber.Text);
                cmd.Parameters.AddWithValue("@PresentProfession", txtPresentProfession.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedItem.ToString());

                cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Division", ddlDistrict.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@District", ddlDistrict.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Upazila", ddlUpazila.SelectedItem.ToString());

                cmd.Parameters.AddWithValue("@NID", txtNID.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtDoctorMobile.Text);
                cmd.Parameters.AddWithValue("@Telephone", txtDoctorTelephone.Text);
                cmd.Parameters.AddWithValue("@Email", txtDoctorEmail.Text);
                cmd.Parameters.AddWithValue("@Username", txtDoctorUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtDoctorPassword.Text);
                cmd.Parameters.AddWithValue("@Address", txtDoctorAddress.Text);
                if (FileUploadDoctorImage.HasFile)
                {
                    string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    string Ext = "";
                    string FileName = Path.GetExtension(FileUploadDoctorImage.FileName.ToLower());
                    if (FileName == ".jpg")
                    {
                        Ext = ".jpg";
                    }
                    else if (FileName == ".jpeg")
                    {
                        Ext = ".jpeg";
                    }
                    else if (FileName == ".png")
                    {
                        Ext = ".png";
                    }
                    else
                    {
                        lblResult.ForeColor = Color.Red;
                        lblResult.Text += "Doctor Image Upload (.jpg, .jpeg, .png)";
                    }
                    if (Ext != "")
                    {
                        cmd.Parameters.AddWithValue("@DoctorPhoto", Name + Ext);
                        FileUploadDoctorImage.SaveAs(Server.MapPath("../Doctor/Temp/" + Name + Ext));
                        doctor.Login log = new Login();
                        log.ImageEdit(Name, Ext);
                    }
                }
                else
                {
                    if (ddlGender.SelectedValue == "Male")
                    {
                        cmd.Parameters.AddWithValue("@DoctorPhoto", "MaleProfile.jpg");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@DoctorPhoto", "FemaleProfile.jpg");
                    }
                }
                if (FileUploadDoctorLicenceInage.HasFile)
                {
                    string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    string Ext = "";
                    string FileName = Path.GetExtension(FileUploadDoctorLicenceInage.FileName.ToLower());
                    if (FileName == ".jpg")
                    {
                        Ext = ".jpg";
                    }
                    else if (FileName == ".jpeg")
                    {
                        Ext = ".jpeg";
                    }
                    else if (FileName == ".png")
                    {
                        Ext = ".png";
                    }
                    else
                    {
                        lblResult.ForeColor = Color.Red;
                        lblResult.Text += "Doctor licence Upload (.jpg, .jpeg, .png)";
                    }
                    if (Ext != "")
                    {
                        cmd.Parameters.AddWithValue("@DoctorLicensePhoto", FileName + Ext);
                        FileUploadDoctorLicenceInage.SaveAs(Server.MapPath("../Doctor/LicenceImage/" + FileName + Ext));
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@DoctorLicensePhoto", "N/A");
                }
                cmd.Parameters.AddWithValue("@Date", Convert.ToInt32(DateTime.Now.ToString("dd")));
                cmd.Parameters.AddWithValue("@Month", Convert.ToInt32(DateTime.Now.ToString("MM")));
                cmd.Parameters.AddWithValue("@Year", Convert.ToInt32(DateTime.Now.ToString("yyyy")));
                cmd.Parameters.AddWithValue("@IssuDate", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@Authorise", rn.RandomStringNumber("Authority"));
                cmd.Parameters.AddWithValue("@LoginParmit", "TRUE");
                cmd.Parameters.AddWithValue("@Verify", "FALSE");
                cmd.Parameters.AddWithValue("@Owner", Session["HospitalID"].ToString());
                cmd.Parameters.AddWithValue("@Command", "N/A");
                cmd.Parameters.AddWithValue("@DoctorDetails", " ");
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text += "select all from's.";
            }
        }



    }
}