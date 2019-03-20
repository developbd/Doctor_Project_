using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Check chk2 = new Check();
            lblCallcenterNumber.Text = chk2.stringCheck("select Logo from logo_tbl where ID=2");
            lblAddress.Text = chk2.stringCheck("select Logo from logo_tbl where ID=4");
            lblEmailAddress.Text = chk2.stringCheck("select Logo from logo_tbl where ID=3");
            LogoShow.ImageUrl = "../../images/Logo/" + chk2.stringCheck("select Logo from logo_tbl where ID=1");

            if (Session["DoctorUsername"] != null && Session["DocotorImage"] != null && Session["DoctorID"] != null && Session["DocotorFullName"] != null)
            {
                Check chk = new Check();

                string Verify = chk.stringCheck("select Verify from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'");
                string vr = "";
                if (Verify == "TRUE")
                {
                    vr = string.Format(@"<li>
                                                <a href='../Doctor/'>
                                                    <i class='fa fa-line-chart'></i>
                                                    <span>Dashboard</span>
                                                </a>
                                            </li>
                                            <li class='tg-warningmessage'>
                                                <a href='Service'>
                                                    <i class='fa fa-plus'></i>
                                                    <span>Add Schedul</span>
                                                </a>
                                            </li>
                                            <li class='tg-successmessage'>
                                                <a href='AppointmentsList.aspx'>
                                                    <i class='fa fa-calendar-check-o'></i>
                                                    <span>Appointments List</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href='{0}'>
                                                    <i class='fa fa-clone'></i><span>Today Serial</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href='Payment'>
                                                    <i class='fa  fa-money'></i>
                                                    <span>Payment</span>
                                                </a>
                                            </li>
                                             

                                ", "AppointmentsList?date=" + DateTime.Now.ToString("MM/dd/yyyy"));
                }


                pnlDoctorLoginPanel.Controls.Add(new LiteralControl(string.Format(
                    @"
                <div class=' tg-admin tg-user'>
                                <div class='tg-dropdown'>
                                    <figure class='tg-adminpic'>
                                        
                                        <a>
                                            <img src='{0}'  width='40px' height='40px' style='border-radius:50%;' alt='bdbay Doctor Image'></a>
                                    </figure>
                                    <a href='#' class='tg-usermenu tg-btndropdown'>
                                        <em>{1}</em>
                                    </a>
                                    <div class='dropdown-menu tg-dropdownbox tg-usermenu'>
                                        <ul>
                                             {2} 
                                            
                                            <li>
                                                <a href='logout'>
                                                    <i class='fa  fa-sign-out'></i>
                                                    <span>Logout</span>
                                                </a>
                                            </li>  
        
                                        </ul>
                                    </div>
                                </div>
                            </div>
", "../Doctor/Image/Profile/" + Session["DocotorImage"], Session["DocotorFullName"], vr)));

            }
            else if (Session["HospitalUsername"] != null && Session["PersonalImage"] != null && Session["HospitalID"] != null && Session["PersonalFullname"] != null && Session["HospitalName"] != null)
            {
                Check chk = new Check();
                string Verify = chk.stringCheck("select Verify from HospitalRegistation where HospitalID='" + Session["HospitalID"].ToString() + "'");
                string vr = "";
                if (Verify == "TRUE")
                {
                    vr = string.Format(@"
                                    <li class='tg-successmessage'>
											<a href = 'EditProfile'>
                                                <i class='fa fa-user'></i>
												<span>Edit Profile</span>
											</a>
										</li> 
                                        <li class='tg-warningmessage'>
                                            <a href='AddDoctor'>
                                                <i class='fa fa-user-md'></i>
												<span>Add Doctor</span>
											</a>
										</li>
										<li class='tg-successmessage'>
											<a href = 'Default'>
                                                <i class='fa fa-bars'></i>
												<span>Doctor List</span>
											</a>
										</li> 
                                             ");
                }


                pnlDoctorLoginPanel.Controls.Add(new LiteralControl(string.Format(
                    @"
                <div class=' tg-admin tg-user'>
                                <div class='tg-dropdown'>
                                    <figure class='tg-adminpic'>
                                        
                                        <a >
                                            <img src='{0}' width='40px' height='40px' style='border-radius:50%;' alt='bdbay Hospital Image'></a>
                                    </figure>
                                    <a href='#' class='tg-usermenu tg-btndropdown'>
                                        <em>{1}</em>
                                    </a>
                                    <div class='dropdown-menu tg-dropdownbox tg-usermenu'>
                                        <ul>
                                             {2}  
                                            <li>
                                                <a href='logout'>
                                                    <i class='fa  fa-sign-out'></i>
                                                    <span>Logout</span>
                                                </a>
                                            </li>                                 
                                        </ul>
                                    </div>
                                </div>
                            </div>
", "../Hospital/Image/Personal/Profile/" + Session["PersonalImage"], Session["PersonalFullname"], vr)));
            }
            else
            {
                pnlLogout_Show.Controls.Add(new LiteralControl(" <div class='tg-admin'><a class='tg-btn' href='Login'>Become A Member</a></div>"));

            }


        }

        protected void btnTodaySerial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Doctor/AppointmentsList?date=" + DateTime.Now.ToString("MM/dd/yyyy"));
        }
    }
}