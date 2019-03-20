using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;


namespace doctor
{
    public partial class Appointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString[""]!=null)
            {
                Calendar cal = new Calendar();
                string Today_Week = cal.TodaysDate.DayOfWeek.ToString();
                string Saturday="", Sunday="", Monday="", Tuesday = "", Wednesday = "", Thursday = "", Friday = "";

                if (Today_Week == "Saturday")
                {
                    lblSatureday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                }

                if (Today_Week == "Sunday")
                {
                    lblSatureday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                }

                if (Today_Week == "Monday")
                {
                    lblSatureday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");

                }

                if (Today_Week == "Tuesday")
                {
                    lblSatureday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                }

                if (Today_Week == "Wednesday")
                {
                    lblSatureday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                }

                if (Today_Week == "Thursday")
                {
                    lblSatureday.Text = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblThusday.Text = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                }

                if (Today_Week == "Friday")
                {
                    lblSatureday.Text = cal.TodaysDate.AddDays(1).ToString("MMMM dd, yyyy");
                    lblSunday.Text  = cal.TodaysDate.AddDays(2).ToString("MMMM dd, yyyy");
                    lblMonday.Text  = cal.TodaysDate.AddDays(3).ToString("MMMM dd, yyyy");
                    lblTusday.Text  = cal.TodaysDate.AddDays(4).ToString("MMMM dd, yyyy");
                    lblWetnesday.Text  = cal.TodaysDate.AddDays(5).ToString("MMMM dd, yyyy");
                    lblThusday.Text  = cal.TodaysDate.AddDays(6).ToString("MMMM dd, yyyy");
                    lblFriday.Text  = cal.TodaysDate.Date.ToString("MMMM dd, yyyy");

                    Saturday = cal.TodaysDate.AddDays(1).ToString("MM/dd/yyyy");
                    Sunday = cal.TodaysDate.AddDays(2).ToString("MM/dd/yyyy");
                    Monday = cal.TodaysDate.AddDays(3).ToString("MM/dd/yyyy");
                    Tuesday = cal.TodaysDate.AddDays(4).ToString("MM/dd/yyyy");
                    Wednesday = cal.TodaysDate.AddDays(5).ToString("MM/dd/yyyy");
                    Thursday = cal.TodaysDate.AddDays(6).ToString("MM/dd/yyyy");
                    Friday = cal.TodaysDate.Date.ToString("MM/dd/yyyy");
                }
                Encrypt en = new Encrypt();
                Saturday = en.HashCode(Saturday);
                Sunday = en.HashCode(Sunday);
                Monday = en.HashCode(Monday);
                Tuesday = en.HashCode(Tuesday);
                Wednesday = en.HashCode(Wednesday);
                Thursday = en.HashCode(Thursday);
                Friday = en.HashCode(Friday);
                Check chk = new Check();
                var Doctor_ID = Request.QueryString[""].ToString();
                var std = " from DoctorRegistation where DoctorID='"+ Doctor_ID + "'";
                string link = "http://doctor.bdbayonline.com/Appointment?=" + Doctor_ID;
                string Facebook = string.Format("https://www.facebook.com/sharer/sharer.php?u={0}", link);
                string Twitter = string.Format("https://twitter.com/intent/tweet?url={0}&text={1}", link, chk.stringCheck("select FullName " + std));
                string Googlep = string.Format("https://plus.google.com/share?url={0}", link);
                string Linkdin = string.Format("http://www.linkedin.com/shareArticle?mini=true&url={0}&title={1}", link, chk.stringCheck("select FullName " + std));
                pnlShare.Controls.Add(new LiteralControl(string.Format(@"<li class='tg-facebook'>
                                                    <a target='_blank' class='tg-roundicontext' href='{0}'>
														<em class='tg-usericonholder'>
															<i class='fa fa-facebook-f'></i>
															<span>share on facebook</span>
														</em>
													</a>
												</li>
												<li class='tg-twitter'>
													<a target='_blank' class='tg-roundicontext' href='{1}'>
														<em class='tg-usericonholder'>
															<i class='fa fa-twitter'></i>
															<span>share on twitter</span>
														</em>
													</a>
												</li>
												<li class='tg-linkedin'>
													<a target='_blank' class='tg-roundicontext' href='{2}'>
                                                        <em class='tg-usericonholder'>
															<i class='fa fa-linkedin'></i>
															<span>share on linkdin</span>
														</em>
													</a>
												</li>
												<li class='tg-googleplus'>
													<a target='_blank' class='tg-roundicontext' href='{3}'>
														<em class='tg-usericonholder'>
															<i class='fa fa-google-plus'></i>
															<span>share on googl+</span>
														</em>
													</a>
												</li> ", Facebook, Twitter, Linkdin, Googlep)));



                if (chk.int32Check("select count(*) from DoctorRegistation where DoctorID='" + Doctor_ID + "'") == 1)
                {
                    var st = " from DoctorRegistation where DoctorID='" + Doctor_ID + "'";
                    DoctorImage.ImageUrl = "~/Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto " + st);
                    lblDoctorCategory.Text = chk.stringCheck("select Categories " + st);
                    lblDoctorName.Text = chk.stringCheck("select FullName " + st);
                    lblDoctorQualification.Text = chk.stringCheck("select Qualification " + st);
                    lblDoctorDescription.Text = chk.stringCheck("select DoctorDetails " + st);

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Saturday");
                    con.Open();
                    SqlDataReader d = cmd.ExecuteReader();
                    int erck = 0;
                    while (d.Read())
                    {
                        erck++;
                        pnlSaturday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
                    <span> &#2547; {5}</span>
					</li >
                ", "Verify?Did="+Doctor_ID+"&Sid="+d["ID"]+"&d="+Saturday, d["Title"], d["FastTime"], d["LastTime"], d["Address"], d["Fee"])));

                    }
                    con.Close();

                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Sunday");
                    con.Open();
                    SqlDataReader d2 = cmd.ExecuteReader();
                    int erck2 = 0;
                    while (d2.Read())
                    {
                        erck2++;
                        pnlSunday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d2["ID"] + "&d=" + Sunday, d2["Title"], d2["FastTime"], d2["LastTime"], d2["Address"], d2["Fee"])));

                    }
                    con.Close();

                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Monday");
                    con.Open();
                    SqlDataReader d3 = cmd.ExecuteReader();
                    int erck3 = 0;
                    while (d3.Read())
                    {
                        erck3++;
                        pnlMonday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d3["ID"] + "&d=" + Monday, d3["Title"], d3["FastTime"], d3["LastTime"], d3["Address"], d3["Fee"])));

                    }
                    con.Close();

                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Tuesday");
                    con.Open();
                    SqlDataReader d4 = cmd.ExecuteReader();
                    int erck4 = 0;
                    while (d4.Read())
                    {
                        erck4++;
                        pnlTuesday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d4["ID"] + "&d=" + Tuesday, d4["Title"], d4["FastTime"], d4["LastTime"], d4["Address"], d4["Fee"])));

                    }
                    con.Close();
                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Wednesday");
                    con.Open();
                    SqlDataReader d5 = cmd.ExecuteReader();
                    int erck5 = 0;
                    while (d5.Read())
                    {
                        erck5++;
                        pnlWednesday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d5["ID"] + "&d=" + Wednesday, d5["Title"], d5["FastTime"], d5["LastTime"], d5["Address"], d5["Fee"])));

                    }
                    con.Close();

                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Thursday");
                    con.Open();
                    SqlDataReader d6 = cmd.ExecuteReader();
                    int erck6 = 0;
                    while (d6.Read())
                    {
                        erck6++;
                        pnlThursday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d6["ID"] + "&d=" + Thursday, d6["Title"], d6["FastTime"], d6["LastTime"], d6["Address"], d6["Fee"])));

                    }
                    con.Close();
                    //----------------------------------------------------------------------------------------------
                    cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}'", Doctor_ID, "Friday");
                    con.Open();
                    SqlDataReader d7 = cmd.ExecuteReader();
                    int erck7 = 0;
                    while (d7.Read())
                    {
                        erck7++;
                        pnlFriday.Controls.Add(new LiteralControl(string.Format(@" 
                    <li>
					<span><a class='Schedul_CSS' href='{0}'>{1}</a>&nbsp;&nbsp;<b class='fontsmall'> <i class='fa fa-clock-o fontsmall'></i> {2} - {3}</b>&nbsp;&nbsp;<i class='fa fa-exclamation-circle tg-tooltip' data-toggle='tooltip' data-placement='top' title='{4}'></i></span>
					<span> &#2547; {5}</span>
					</li >
                ", "Verify?Did=" + Doctor_ID + "&Sid=" + d7["ID"] + "&d=" +Friday, d7["Title"], d7["FastTime"], d7["LastTime"], d7["Address"], d7["Fee"])));

                    }
                    con.Close();
                    string Empty = "<span class='centerAll'> No Schedul are Available.</span>";
                    if(erck==0)
                    {
                        pnlSaturday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck2 == 0)
                    {
                        pnlSunday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck3 == 0)
                    {
                        pnlMonday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck4 == 0)
                    {
                        pnlTuesday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck5 == 0)
                    {
                        pnlWednesday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck6 == 0)
                    {
                        pnlThursday.Controls.Add(new LiteralControl(Empty));
                    }
                    if (erck7 == 0)
                    {
                        pnlFriday.Controls.Add(new LiteralControl(Empty));
                    }

                    
                    
                    





                }

            }
            else
            {
                Response.Redirect("Default");
            }

        }


    }
}