using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.SuperAdmin
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Check chk = new Check();
            lblTotalBloodDoner.Text = chk.stringCheck("select count(*) from DonerRegistation");
            lblTotalDoctors.Text = chk.stringCheck("select count(*) from DoctorRegistation");
            lblTotalHospital.Text = chk.stringCheck("select count(*) from HospitalRegistation");
            lbltotalSerial.Text = chk.stringCheck("select count(*) from Serial");
            lbltodayserial.Text = chk.stringCheck("select count(*) from Serial where SubmitDate='"+DateTime.Now.ToString("dd/MM/yyyy")+"' ");

        }
    }
}