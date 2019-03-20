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
    public partial class Click : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString[""] != null)
            {
                SqlCommand cmd = new SqlCommand();
                Check chk = new Check();
                string ID = Request.QueryString[""].ToString();
                int Count = chk.int32Check("select Click from Advertisement where ID="+ID);
                string Link = chk.stringCheck("select link from Advertisement where ID=" + ID);
                Count++;
                cmd.Connection = con;
                cmd.CommandText = "update Advertisement set Click="+Count+"  where ID="+ID;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Link);
            }
            else
            {
                Response.Redirect("Default");
            }
        }
    }
}