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
    public partial class information : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString[""] != null)
            {
                Calendar cal = new Calendar();
                var Hospital_ID = Request.QueryString[""].ToString();
                Check chk = new Check();
                if (chk.int32Check("select count(*) from HospitalRegistation where HospitalID='" + Hospital_ID + "'") == 1)
                {
                    var st = " from HospitalRegistation where HospitalID='" + Hospital_ID + "'";
                    HospitalImage.ImageUrl = "~/Hospital/Image/Hospital/Profile/" + chk.stringCheck("select HospitalPhoto " + st);
                    lblHospitalCategory.Text = chk.stringCheck("select HospitalCategory " + st);
                    lblHospitalName.Text = chk.stringCheck("select HospitalName " + st);
                    lblHospitalQualification.Text = chk.stringCheck("select HospitalShift " + st);
                    lblHospitalDescription.Text = chk.stringCheck("select HospitalDetails " + st);
                    string link = "http://doctor.bdbayonline.com/information?=" + Hospital_ID;
                    string Facebook = string.Format("https://www.facebook.com/sharer/sharer.php?u={0}", link);
                    string Twitter = string.Format("https://twitter.com/intent/tweet?url={0}&text={1}",link, chk.stringCheck("select HospitalName " + st));
                    string Googlep = string.Format("https://plus.google.com/share?url={0}",link);
                    string Linkdin = string.Format("http://www.linkedin.com/shareArticle?mini=true&url={0}&title={1}", link, chk.stringCheck("select HospitalName " + st));
                    pnlSgare.Controls.Add(new LiteralControl(string.Format(@"<li class='tg-facebook'>
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
												</li> ", Facebook,Twitter,Linkdin,Googlep)));
                }

            }
            else
            {
                Response.Redirect("Default");
            }

        }
    }
}