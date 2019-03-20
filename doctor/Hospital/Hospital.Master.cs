using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.Hospital
{
    public partial class Hospital : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["HospitalUsername"] != null && Session["PersonalImage"] != null && Session["HospitalID"] != null && Session["PersonalFullname"] != null && Session["HospitalName"] != null)
            {
                lblName.Text = Session["PersonalFullname"].ToString();
                Check chk = new Check();
                ProfileImage.ImageUrl = "../Hospital/Image/Personal/Profile/" + chk.stringCheck("select PersonalPhoto from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'");
                lblHospitalName.Text = chk.stringCheck("select HospitalName from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'");
                if (chk.stringCheck("select Verify from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'") == "FALSE")
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
                <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
                ", "click.aspx?=" + ID, chk.stringCheck("select Image from Advertisement where ID=" + ID))));
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}