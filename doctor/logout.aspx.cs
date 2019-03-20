using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["DoctorUsername"] = null; 
            Session["DocotorImage"] = null;
            Session["DoctorID"] = null;
            Session["DocotorFullName"] = null;
            Session["HospitalUsername"] = null;
            Session["PersonalImage"] = null;
            Session["HospitalID"] = null;
            Session["PersonalFullname"] = null;
            Session["HospitalName"] = null;
            Response.Redirect("Default");
        }
    }
}