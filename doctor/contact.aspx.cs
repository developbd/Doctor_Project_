using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace doctor
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            if (txtDetails.Text != "" && txtEmail.Text != "" && txtName.Text != "")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into contactus (Name,Email,Details,time) values(@Name,@Email,@Details,@time)";
                cmd.Parameters.AddWithValue("@Name",txtName.Text);
                cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
                cmd.Parameters.AddWithValue("@Details",txtDetails.Text);
                cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString("dd MMM yyyy"));
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtDetails.Text = "";
                txtEmail.Text = "";
                txtName.Text = "";
                lblResult.Text = "Messege is Send. We will send you Feedback.";
            }
            else
            {
                lblResult.Text = "Please Fill All from and Submit.";
            }
        }
    }
}