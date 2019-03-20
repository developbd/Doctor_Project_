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

namespace doctor.SuperAdmin
{
    public partial class logo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Check chk = new Check();
                Image1.ImageUrl = "../images/Logo/" + chk.stringCheck("select Logo from logo_tbl where ID=1");
                txtEmail.Text = chk.stringCheck("select Logo from logo_tbl where ID=3");
                txtCallcenter.Text = chk.stringCheck("select Logo from logo_tbl where ID=2");
                txtAddress.Text = chk.stringCheck("select Logo from logo_tbl where ID=4");
            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void btnchange_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string ext = "";
                string FileExt = Path.GetExtension(FileUpload1.FileName.ToLower());
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
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = "Logo Upload (*.jpg, *,jpeg, *.png)";
                }
                if(ext!="")
                {
                    string FileName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "update logo_tbl set Logo='"+ FileName +ext+ "' where ID=1";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FileUpload1.SaveAs(Server.MapPath("../images/Temp/"+ FileName + ext));
                    System.Drawing.Image obj;
                    Bitmap newimage;
                    obj = System.Drawing.Image.FromFile(Server.MapPath("../images/Temp/" + FileName + ext));
                    ImageFormat imgformat = obj.RawFormat;
                    newimage = new Bitmap(obj, 370, 69);
                    newimage.Save(Server.MapPath("../images/Logo/" + FileName + ext), imgformat);
                    lblResult.Text = "Sucessfully Logo Change.";
                    lblResult.ForeColor = Color.Green;
                    Check chk = new Check();
                    Image1.ImageUrl = "../images/Logo/" + chk.stringCheck("select Logo from logo_tbl where ID=1");
                }

            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Logo upload.";
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtAddress.Text != "" && txtCallcenter.Text != "" && txtEmail.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update logo_tbl set Logo='"+txtAddress.Text+"' where ID=4";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update logo_tbl set Logo='" + txtCallcenter.Text + "' where ID=2";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update logo_tbl set Logo='" + txtEmail.Text + "' where ID=3";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblUpdateResult.ForeColor = Color.Green;
                lblUpdateResult.Text = "Update Sucessfully.";
            }
            else
            {
                lblUpdateResult.ForeColor = Color.Red;
                lblUpdateResult.Text = "Empty Box Fill All Date.";
            }
        }


    }
}