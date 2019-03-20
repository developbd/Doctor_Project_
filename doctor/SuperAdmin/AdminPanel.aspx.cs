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
    public partial class AdminPanel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text!="" && txtPassword.Text !="" && txtFullname.Text!="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into AdminLogin (UserName,Password,FullName) values(@UserName,@Password,@FullName)";
                cmd.Parameters.AddWithValue("@UserName",txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password",txtPassword.Text);
                cmd.Parameters.AddWithValue("@FullName",txtFullname.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblResult.ForeColor = Color.Green;
                lblResult.Text = "Insert Sucessfully.";
                GridView1.DataBind();
                txtFullname.Text = "";
                txtPassword.Text = "";
                txtUsername.Text = "";
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "Fill the Froms.";
            }
        }
    }
}