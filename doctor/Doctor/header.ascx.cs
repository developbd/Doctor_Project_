using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.Doctor
{
    public partial class header : System.Web.UI.UserControl
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
                string vr = "";
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
										                                          

                                ");



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
                                                <a href='../logout'>
                                                    <i class='fa  fa-sign-out'></i>
                                                    <span>Logout</span>
                                                </a>
                                            </li>  
        
                                        </ul>
                                    </div>
                                </div>
                            </div>
", "../Doctor/Image/Profile/" +chk.stringCheck("select DoctorPhoto from DoctorRegistation where DoctorID='" + Session["DoctorID"].ToString() + "'"), Session["DocotorFullName"], vr)));
            }
        }
    }
}