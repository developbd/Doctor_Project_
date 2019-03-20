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
    public partial class Sponsor : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txtlink.Text!="" && FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName.ToLower());
                if(ext==".png")
                {
                    string Name = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "insert into Sponsor (Photo,Link) values(@Photo,@Link)";
                    cmd.Parameters.AddWithValue("@Photo",Name+ext);
                    cmd.Parameters.AddWithValue("@Link",txtlink.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FileUpload1.SaveAs(Server.MapPath("../images/Temp/"+Name+ext));
                    System.Drawing.Image obj;
                    Bitmap newimage;
                    obj = System.Drawing.Image.FromFile(Server.MapPath("../images/Temp/" + Name + ext));
                    ImageFormat imgformat = obj.RawFormat;
                    newimage = new Bitmap(obj, 370, 69);
                    newimage.Save(Server.MapPath("../images/Sponsor/" + Name + ext), imgformat);
                    lblResult.ForeColor = Color.Green;
                    lblResult.Text = "Sucessfully Insert Sponsor.";
                }
                else
                {
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "Upload Sponsor logo only png.";
                }
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "Upload link and Sponsor logo.";
            }
        }
    }
}