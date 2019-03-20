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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorUsername"] == null && Session["DocotorImage"] == null && Session["DoctorID"] == null && Session["DocotorFullName"] == null)
            { Response.Redirect("~/Login"); }
            TodayOayment_FN();
        }
        private void TodayOayment_FN()
        {
            Check chk = new Check();
            string today = DateTime.Now.ToString("MM/dd/yyyy");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from DoctorPayment where DoctorID='"+ Session["DoctorID"].ToString() + "' and SubmitDate='"+ today + "'";
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            int total_Taka = 0;
            while(data.Read())
            {
                total_Taka += Convert.ToInt32(data["Payment"]);
                pnlTodayPayment.Controls.Add(new LiteralControl(string.Format(@"                
                <li><em>Serial No: <strong class='colorsup'>{0}</strong>  Patient Name: <strong class='colorsup'>{1}</strong></em> <span>&#2547; {2}</span> </li>
                ",data["SerialNumber"], data["PatientName"], data["Payment"])));

            }
            con.Close();
            lblTotalPayment.Text = total_Taka.ToString();
        }

        protected void btnScarch_Click(object sender, EventArgs e)
        {
            gridDate.Visible = true;
            gridSess.Visible = false;
        }
    }
}