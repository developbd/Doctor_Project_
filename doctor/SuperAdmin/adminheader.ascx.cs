using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.SuperAdmin
{
    public partial class adminheader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Check chk2 = new Check();
            lblCallcenterNumber.Text = chk2.stringCheck("select Logo from logo_tbl where ID=2");
            lblAddress.Text = chk2.stringCheck("select Logo from logo_tbl where ID=4");
            lblEmailAddress.Text = chk2.stringCheck("select Logo from logo_tbl where ID=3");
            LogoShow.ImageUrl = "../../images/Logo/" + chk2.stringCheck("select Logo from logo_tbl where ID=1");

            if (Session["SuperAdminUsername"] != null && Session["SuperAdminFullname"] != null)
            {
                Check chk = new Check();

                
                string vr = "";
                
                    vr = string.Format(@"<li>
											<a href='Dashboard'>
												<i class='fa fa-line-chart'></i>
												<span>Dashboard</span>
											</a>
										</li>
										<li>
											<a href='HospitalAdd'>
												<i class='fa fa-user'></i>
												<span>Add a Hospital</span>
											</a>
										</li>
                                        <li>
											<a href='HospitalOption'>
												<i class='fa fa-user'></i>
												<span>Hospital Settings</span>
											</a>
										</li>
										<li>
											<a href='DoctorAdd'>
												<i class='fa fa-calendar-check-o'></i>
												<span>Add a Doctor</span>
											</a>
										</li>
                                        <li>
											<a href='DoctorVerify'>
												<i class='fa fa-calendar-check-o'></i>
												<span>Doctor Settings</span>
											</a>
										</li>
                                        <li>
											<a href='BloodDonor'>
												<i class='fa fa-heart'></i>
												<span>Blood Donor</span>
											</a>
										</li>
										
                                        <li>
											<a href='AdminPanel'>
												<i class='fa fa-clone'></i>
												<span>Admin</span>
											</a>
										</li>
										<li>
											<a href='AdminSettings'>
												<i class='fa fa-arrow-up'></i>
												<span>Country Settings</span>
											</a>
										</li>
										<li>
											<a href='Advertisement'>
												<i class='fa fa-gears'></i>
												<span>Advertisement</span>
											</a>
										</li>
                                        <li>
											<a href='Sponsor'>
												<i class='fa fa-gears'></i>
												<span>Sponsor</span>
											</a>
										</li>
                                            <li>
											<a href='serial'>
												<i class='fa fa-eye'></i>
												<span>Serial</span>
											</a>
										</li>
										<li>
											<a href='Payment'>
												<i class='fa fa-eye'></i>
												<span>Payment</span>
											</a>
										</li>                                        <li>
											<a href='logo'>
												<i class='fa fa-eye'></i>
												<span>Logo</span>
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
", "../images/images.jpg" , Session["SuperAdminFullname"], vr)));
            }
            

        }
    }
}