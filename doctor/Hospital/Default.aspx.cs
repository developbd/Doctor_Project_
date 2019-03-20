using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Input;

namespace doctor.Hospital
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from DoctorRegistation where ID=" + ID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from DoctorRegistation", con);
            SqlDataReader dr = cmd2.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }
        protected void btndoctorSchedul_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            Session["DoctorUsername"] = chk.stringCheck("select Username from DoctorRegistation where ID="+ID);
            Session["DocotorImage"] = chk.stringCheck("select DoctorPhoto from DoctorRegistation where ID=" + ID);
            Session["DoctorID"] = chk.stringCheck("select DoctorID from DoctorRegistation where ID=" + ID);
            Session["DocotorFullName"] = chk.stringCheck("select FullName from DoctorRegistation where ID=" + ID);
            Response.Redirect("~/Doctor/");
        }



    }
}