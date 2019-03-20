using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.Doctor
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorUsername"] != null && Session["DocotorImage"] != null && Session["DoctorID"] != null && Session["DocotorFullName"] != null)
            {
                Check chk = new Check();
                if (chk.stringCheck("select Verify from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'") == "FALSE")
                {
                    Response.Redirect("Verify");
                }
                lblInfoMessege.Text = chk.stringCheck("select Command from DoctorRegistation where DoctorID='"+ Session["DoctorID"].ToString() + "'");
                lblTotalPatient.Text = chk.stringCheck("select count(*) from Serial where DoctorID='"+ Session["DoctorID"].ToString() + "'");
                lblTotalSchedul.Text = chk.stringCheck("select count(*) from Schedul where DoctorID='" + Session["DoctorID"].ToString() + "'");
            }
            else
            {
                Response.Redirect("~/Login");
            }


        }



    }
}
