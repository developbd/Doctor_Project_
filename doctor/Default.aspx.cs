using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;

namespace doctor
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Division(15);
                ShowDetails();
                ShowDocHosDonFunc();
                sopnser();
            }
        }
        private void sopnser()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Sponsor order by ID DESC ";
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            int i = 1;
            string Fast_Div = "<div class='item'>";
            string Last_Div = "</div>";
            string Main = "";
            while (data.Read())
            {
                if(i==1)
                {
                    Main += Fast_Div;
                }
                Main +=string.Format("<figure><a href='{0}' >< img src='../images/Sponsor/{1}'></a></figure>",data["Link"].ToString(),data["Photo"].ToString());
                if (i==4)
                {
                    i = 1;
                    Main += Last_Div;
                }
                i++;
            }
            con.Close();
        }
        private void ShowDocHosDonFunc()
        {
            string Show = "";
            string doctor = "";
            string Hospital = "";
            string Donor = "";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select top 6 * from DoctorRegistation where Verify='TRUE' order by ID DESC ";
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while(data.Read())
            {
                string Doctor_ID = data["DoctorID"].ToString();
                string Name = data["FullName"].ToString();
                string qualifecation = data["Qualification"].ToString();
                string address = data["Address"].ToString();
                string mobile = data["Mobile"].ToString();
                string Catagory = data["Categories"].ToString();
                string Distric = data["District"].ToString();
                string link = "Appointment?="+Doctor_ID;
                string Image = "../Doctor/Image/PageView/"+ data["DoctorPhoto"].ToString();
                doctor += string.Format(@" <div class='tg-directpost doctors'>
                                       <figure class='tg-directpostimg'>
                                        <a href='{0}'>
                                            <img src='{1}' alt='image description'></a>
                                        <figcaption>
                                            <a class='tg-usericon tg-iconfeatured' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-bolt'></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class='tg-usericon tg-iconvarified' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-shield'></i>
                                                    <span>varified</span>
                                                </em>
                                            </a>
                                        </figcaption>
                                    </figure>
                                    <div class='tg-directinfo'>
                                        <div class='tg-leftarea'>
                                            <div class='tg-directposthead'>
                                                <h3><a href='{0}' > {2}</a></h3>
                                                <div class='tg-subjects'>{3}</div>
                                            </div>
                                            <ul class='tg-contactinfo'>
                                                <li><a><i class='fa fa-location-arrow'></i>
                                                    <address>{4}</address>
                                                </a></li>
                                                <li><a><i class='fa fa-phone'></i><span>{5}</span></a></li>
                                            </ul>
                                        </div>
                                        <div class='tg-rightarea'>
                                            <div class='tg-bookappoinment'>
                                                <a><i class='fa fa-info'></i>{6}<span>({7})</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>",link, Image,Name,qualifecation,address,mobile,Catagory,Distric);
            }
            con.Close();
            Show += doctor;
            cmd.CommandText = "select top 6 * from HospitalRegistation where Verify='TRUE' order by ID DESC";
            con.Open();
            SqlDataReader dataHospital = cmd.ExecuteReader();
            while(dataHospital.Read())
            {
                string Doctor_ID = dataHospital["HospitalID"].ToString();
                string Name = dataHospital["HospitalName"].ToString();
                string qualifecation = dataHospital["HospitalType"].ToString();
                string address = dataHospital["HospitalAddress"].ToString();
                string mobile = dataHospital["HospitalMoblile"].ToString();
                string Catagory = dataHospital["HospitalCategory"].ToString();
                string Distric = dataHospital["District"].ToString();
                string link = "information?=" + Doctor_ID;
                string Image = "../Hospital/Image/Hospital/PageView/" + dataHospital["HospitalPhoto"].ToString();
                Hospital += string.Format(@" <div class='tg-directpost hospitals'>
                                       <figure class='tg-directpostimg'>
                                        <a href='{0}'>
                                            <img src='{1}' alt='image description'></a>
                                        <figcaption>
                                            <a class='tg-usericon tg-iconfeatured' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-bolt'></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class='tg-usericon tg-iconvarified' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-shield'></i>
                                                    <span>varified</span>
                                                </em>
                                            </a>
                                        </figcaption>
                                    </figure>
                                    <div class='tg-directinfo'>
                                        <div class='tg-leftarea'>
                                            <div class='tg-directposthead'>
                                                <h3><a href='{0}' > {2}</a></h3>
                                                <div class='tg-subjects'>{3}</div>
                                            </div>
                                            <ul class='tg-contactinfo'>
                                                <li><a><i class='fa fa-location-arrow'></i>
                                                    <address>{4}</address>
                                                </a></li>
                                                <li><a><i class='fa fa-phone'></i><span>{5}</span></a></li>
                                            </ul>
                                        </div>
                                        <div class='tg-rightarea'>
                                            <div class='tg-bookappoinment'>
                                                <a><i class='fa fa-info'></i>{6}<span>({7})</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>", link, Image, Name, qualifecation, address, mobile, Catagory, Distric);

            }
            con.Close();
            Show += Hospital;
            cmd.CommandText = "select top 6 * from DonerRegistation where Authority='TRUE' order by ID DESC";
            con.Open();
            SqlDataReader dataDonor = cmd.ExecuteReader();
            while (dataDonor.Read())
            {
                string Doctor_ID = dataDonor["DonerID"].ToString();
                string Name = dataDonor["Fullname"].ToString();
                string qualifecation = dataDonor["Gender"].ToString();
                string address = dataDonor["Address"].ToString();
                string mobile = dataDonor["Mobile"].ToString();
                string Catagory = dataDonor["BloodGroup"].ToString();
                string Distric = dataDonor["District"].ToString();
                string link = "";
                string Image = "../Donor/PageView/" + dataDonor["Photo"].ToString();
                Donor += string.Format(@" <div class='tg-directpost spas'>
                                       <figure class='tg-directpostimg'>
                                        <a href='{0}'>
                                            <img src='{1}' alt='image description'></a>
                                        <figcaption>
                                            <a class='tg-usericon tg-iconfeatured' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-bolt'></i>
                                                    <span>featured</span>
                                                </em>
                                            </a>
                                            <a class='tg-usericon tg-iconvarified' href='#'>
                                                <em class='tg-usericonholder'>
                                                    <i class='fa fa-shield'></i>
                                                    <span>varified</span>
                                                </em>
                                            </a>
                                        </figcaption>
                                    </figure>
                                    <div class='tg-directinfo'>
                                        <div class='tg-leftarea'>
                                            <div class='tg-directposthead'>
                                                <h3><a href='{0}' > {2}</a></h3>
                                                <div class='tg-subjects'>Gender : {3}</div>
                                            </div>
                                            <ul class='tg-contactinfo'>
                                                <li><a><i class='fa fa-location-arrow'></i>
                                                    <address>{4}</address>
                                                </a></li>
                                                <li><a><i class='fa fa-phone'></i><span>{5}</span></a></li>
                                            </ul>
                                        </div>                                        
                                        <div class='tg-rightarea'>
                                            <div class='tg-bookappoinment'>
                                                <a style = 'color: red; font-size: 25px;' ><i class='fa fa-tint'> {6}</i></a>
                                        </div>
                                    </div>
                                    </div>
                                </div>", link, Image, Name, qualifecation, address, mobile, Catagory);

            }
            con.Close();
            Show += Donor;


            pnlShowDocHosDon.Controls.Add(new LiteralControl(Show));

        }
        private void ShowDetails()
        {
            Check chk = new Check();
            int Pay = chk.int32Check("select count(*) from DoctorPayment");
            int Total_Doctors = chk.int32Check("select count(*) from DoctorRegistation");
            int Blood_Donor = chk.int32Check("select count(*) from DonerRegistation");
            int Sec = 2000;
            pnlShowDetails.Controls.Add(new LiteralControl(string.Format(@"
               <div class='tg-counter'>
            	<figure><img src = 'images/icons/icon-05.png' alt='image description'></figure>
            	<h2><span data-from='0' data-to='{0}' data-speed='{3}' data-refresh-interval='50'></span></h2>
            	<h3>Happy Customers</h3>
            </div>
            <div class='tg-counter'>
            	<figure><img src = 'images/icons/icon-06.png' alt='image description'></figure>
            	<h2><span data-from='0' data-to='{1}' data-speed='{3}' data-refresh-interval='50'></span></h2>
            	<h3>Active Doctors</h3>
            </div>
            <div class='tg-counter'>
            	<figure><img src = 'images/icons/khun.png' alt='image description'></figure>
            	<h2><span data-from='0' data-to='{2}' data-speed='{3}' data-refresh-interval='50'></span></h2>
            	<h3>Blood Donors</h3>
            </div>

            ", Pay,Total_Doctors,Blood_Donor,Sec)));
        }
        private void District(int ID)
        {
            ddlDistrict.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from District where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDistrict.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDistrict.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Division(int ID)
        {
            ddlDivision.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDivision.Items.Add(new ListItem("Select Division", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDivision.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Upazila(int ID)
        {
            ddlUpazila.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Upazila where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlUpazila.Items.Add(new ListItem("Select Upazila", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlUpazila.Items.Add(new_Item);
            }
            con.Close();
        }
        protected void ddlDivision_TextChanged(object sender, EventArgs e)
        {
            District(0);
            Upazila(0);
            if (ddlDivision.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDivision.SelectedValue));
            }
        }

        protected void ddlDistrict_TextChanged(object sender, EventArgs e)
        {
            Upazila(0);
            if (ddlDistrict.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDistrict.SelectedValue));
            }
        }

        protected void btnScarch_Click(object sender, EventArgs e)
        {
            if (ddlDoctor.SelectedValue == "Doctor")
            {
                Response.Redirect("search?Div=" + ddlDivision.SelectedItem.ToString() + "&Dis=" + ddlDistrict.SelectedItem.ToString() + "&Upa=" + ddlUpazila.SelectedItem.ToString() + "&All=Doctors");
            }
            else if(ddlDoctor.SelectedValue == "Hospitals")
            {
                Response.Redirect("search?HDiv=" + ddlDivision.SelectedItem.ToString() + "&HDis=" + ddlDistrict.SelectedItem.ToString() + "&HUpa=" + ddlUpazila.SelectedItem.ToString() + "&All=Hospital");
            }
            else if (ddlDoctor.SelectedValue == "Blood")
            {
                Response.Redirect("search?BDiv=" + ddlDivision.SelectedItem.ToString() + "&BDis=" + ddlDistrict.SelectedItem.ToString() + "&BUpa=" + ddlUpazila.SelectedItem.ToString() + "&All=Donor");
            }

        }
    }
}