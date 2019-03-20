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
namespace doctor.Doctor
{
    public partial class delete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["DSID"]!=null && Request.QueryString["ref"]!=null)
            {
                string ID = Request.QueryString["DSID"].ToString();
                string Page = Request.QueryString["ref"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from Schedul where ID="+ID;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Page);


            }
            
        }
    }
}