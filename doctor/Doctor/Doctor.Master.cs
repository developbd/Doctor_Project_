using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.Doctor
{
    public partial class Doctor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                if (Session["DoctorUsername"] != null && Session["DocotorImage"] != null && Session["DoctorID"] != null && Session["DocotorFullName"] != null)
                {
                    lblName.Text = Session["DocotorFullName"].ToString();
                    Check chk = new Check();
                    ProfileImage.ImageUrl = "../Doctor/Image/Profile/" +chk.stringCheck("select DoctorPhoto from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'");
                    lblQualification.Text = chk.stringCheck("select Qualification from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'");
                    if (chk.stringCheck("select Verify from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'") == "FALSE")
                    {
                        pnlShowSidebar.Visible = false;
                        pnlvr.Visible = false;
                    }
                    else
                    {
                        pnlShowSidebar.Visible = true;
                        pnlvr.Visible = true;
                        veryfyplace.Controls.Add(new LiteralControl("Verified"));
                    }
                string ID = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
                pnlAdd.Controls.Add(new LiteralControl(string.Format(@"
                <figure><a target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
                ", "click?=" + ID, chk.stringCheck("select Image from Advertisement where ID=" + ID))));

               }
                else
                {
                    Response.Redirect("../Login");
                }
            }

        protected void btnTodaySerial_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentsList?date=" + DateTime.Now.ToString("MM/dd/yyyy"));
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["DoctorUsername"] = null;
            Session["DocotorImage"] = null;
            Session["DoctorID"] = null;
            Session["DocotorFullName"] = null;
            Response.Redirect("~/Default");

        }
    }
}