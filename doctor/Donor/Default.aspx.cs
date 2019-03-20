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


namespace doctor.Donor
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        Check chk = new Check();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["DonerfullName"] != null && Session["DonerImage"] != null && Session["DonerUserID"] != null)
            {
                string Fullname = Session["DonerfullName"].ToString();
                string Image = Session["DonerImage"].ToString();
                string Donor_ID = Session["DonerUserID"].ToString();
                string Authority = chk.stringCheck("select Authority from DonerRegistation where DonerID='"+Donor_ID+"'");
                if(Authority=="TRUE")
                {
                    pnlVerifyNotOk.Visible = false;
                    pnlVerifyOK.Visible = true;
                    string st = " from DonerRegistation where DonerID='" + Donor_ID + "'";
                    txtFullName.Text = chk.stringCheck("select Fullname" + st);
                    txtAddress.Text = chk.stringCheck("select Address" + st);
                    txtEmail.Text = chk.stringCheck("select Email" + st);
                    txtMobile.Text = chk.stringCheck("select Mobile" + st);
                    ddlDonerBloodGroup.SelectedValue = chk.stringCheck("select Category" + st);
                    ddlGender.SelectedValue = chk.stringCheck("select Gender" + st);
                    lblFullname.Text = chk.stringCheck("select Fullname" + st);
                    lblBloodGroup.Text = chk.stringCheck("select BloodGroup" + st);
                }
                else
                {
                    pnlVerifyNotOk.Visible = true;
                    pnlVerifyOK.Visible = false;
                }
            }
            else
            {
                Response.Redirect("../Login");
            }


            string ID = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID, chk.stringCheck("select Image from Advertisement where ID=" + ID))));

            string ID2 = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd2.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID2, chk.stringCheck("select Image from Advertisement where ID=" + ID2))));

        }

        protected void btnVeryfy_Click(object sender, EventArgs e)
        {
            if (txtCode.Text != "")
            {
                string code = txtCode.Text;
                if (chk.stringCheck("select Authority from DonerRegistation where DonerID='" + Session["DonerUserID"].ToString() + "' ") == code)
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "update DonerRegistation set Authority='TRUE' where DonerID='" + Session["DonerUserID"].ToString() + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("../Donor/");
                    //pnlVerifyOK.Visible = true;
                    //pnlVerifyNotOk.Visible = false;
                }
                else
                {
                    lblDoctorResult.Text = "Verfication Code not Match";
                }
            }
            else
            {
                lblDoctorResult.Text = "Type Verfication Code.";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtAddress.Text != "" && txtFullName.Text != "" && txtMobile.Text != "" && ddlDonerBloodGroup.SelectedValue != "0" && ddlGender.SelectedValue != "0")
            {
                string Password = chk.stringCheck("select Password from DonerRegistation where DonerID='" + Session["DonerUserID"].ToString() + "' ");
                string Image = Session["DonerImage"].ToString();
                if (txtPassword.Text != "")
                {
                    Password = txtPassword.Text;
                }
                string name = ""; int err = 0;
                if (ProfilePhotoUploader.HasFile)
                {
                     string file = Path.GetExtension(ProfilePhotoUploader.FileName.ToLower());
                     if (file == ".jpg")
                     {
                         string ext = ".jpg";
                         name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                         ProfilePhotoUploader.SaveAs(Server.MapPath("~/Donor/Temp/" + name + ext));
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
                         Image = name + ext;
                     }
                     else
                     {
                         err++;
                         lblResult.Text = "Image is only .jpg";
                     }
                }

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update DonerRegistation set Fullname='" + txtFullName.Text + "',Password='" + Password + "',BloodGroup='" + ddlDonerBloodGroup.SelectedItem.ToString() + "',Mobile='" + txtMobile.Text + "',Gender='" + ddlGender.SelectedValue.ToString() + "',Photo='" + Image + "',Category='"+ddlDonerBloodGroup.SelectedValue.ToString()+"' where DonerID='" + Session["DonerUserID"].ToString() + "'";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                if (err == 0)
                {
                    lblResult.Text = "Update Sucessfully.";
                }                

            }
            else
            {
                lblResult.Text = "Fill All Froms Then Click Update.";
            }
        }
    }
}