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
    public partial class Advertisement : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdvertisement_Click(object sender, EventArgs e)
        {
            if(txtAdvertisementLink.Text!="" && FileUploadAdvertisement.HasFile)
            {
                
                string fileExt = Path.GetExtension(FileUploadAdvertisement.FileName.ToLower());
                string ext = "";
                if(fileExt==".jpg")
                {
                    ext = ".jpg";
                }
                else if(fileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (fileExt == ".png")
                {
                    ext = ".png";
                }
                else if (fileExt == ".gif")
                {
                    ext = ".gif";
                }
                else
                {
                    lblAdvertisementResult.ForeColor = Color.Red;
                    lblAdvertisementResult.Text = "Image File (*.jpg, *.jpeg, *.png, *.gif)";
                }
                if(ext!="")
                {
                    string ImageName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into Advertisement(title,link,Image,Click) values(@title,@link,@Image,@Click)";
                    cmd.Parameters.AddWithValue("@title",txtTitle.Text);
                    cmd.Parameters.AddWithValue("@link",txtAdvertisementLink.Text);
                    cmd.Parameters.AddWithValue("@Image",ImageName+ext);
                    cmd.Parameters.AddWithValue("@Click",Convert.ToInt32(0));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    txtAdvertisementLink.Text = "";
                    txtTitle.Text = "";
                    lblAdvertisementResult.ForeColor = Color.Green;
                    lblAdvertisementResult.Text = "Sucessfully Advertisement";
                    FileUploadAdvertisement.SaveAs(Server.MapPath("../images/Advertisement/Temp/"+ ImageName + ext));
                    GridView1.DataBind();
                    System.Drawing.Image obj;
                    Bitmap newimage;
                    obj = System.Drawing.Image.FromFile(Server.MapPath("../images/Advertisement/Temp/" + ImageName + ext));
                    ImageFormat imgformat = obj.RawFormat;
                    newimage = new Bitmap(obj, 263, 270);
                    newimage.Save(Server.MapPath("../images/Advertisement/" + ImageName + ext), imgformat);

                }



            }
            else
            {
                lblAdvertisementResult.ForeColor = Color.Red;
                lblAdvertisementResult.Text = "Advertisement Link/ Image File Upload.";
            }
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            if(FileUploadUpdate.HasFile)
            {
                string fileExt = Path.GetExtension(FileUploadUpdate.FileName.ToLower());
                string ext = "";
                if (fileExt == ".jpg")
                {
                    ext = ".jpg";
                }
                else if (fileExt == ".jpeg")
                {
                    ext = ".jpeg";
                }
                else if (fileExt == ".png")
                {
                    ext = ".png";
                }
                else if (fileExt == ".gif")
                {
                    ext = ".gif";
                }
                else
                {
                    lblAdvertisementResult.ForeColor = Color.Red;
                    lblAdvertisementResult.Text = "Image File (*.jpg, *.jpeg, *.png, *.gif)";
                }
                if (ext != "")
                {
                    string ImageName = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "update Advertisement set Image='"+ ImageName+ext + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblAdvertisementResult.ForeColor = Color.Green;
                    lblAdvertisementResult.Text = "Sucessfully Update.";
                    GridView1.DataBind();
                    FileUploadUpdate.SaveAs(Server.MapPath("../images/Advertisement/Temp/" + ImageName + ext));
                    System.Drawing.Image obj;
                    Bitmap newimage;
                    obj = System.Drawing.Image.FromFile(Server.MapPath("../images/Advertisement/Temp/" + ImageName + ext));
                    ImageFormat imgformat = obj.RawFormat;
                    newimage = new Bitmap(obj, 263, 270);
                    newimage.Save(Server.MapPath("../images/Advertisement/" + ImageName + ext), imgformat);

                }
            }
            else
            {
                lblAdvertisementResult.ForeColor = Color.Red;
                lblAdvertisementResult.Text = "Image File Upload.";
            }
        }
    }
}