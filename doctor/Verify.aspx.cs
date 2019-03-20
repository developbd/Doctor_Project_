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



//<sup><s>100</s></sup>
namespace doctor
{
    public partial class Verify : System.Web.UI.Page
    {
        string Error_Page = "Default";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Add();
            if(!IsPostBack)
            {
                Division(15);
                Session["Serial_ID"] = null;
                Session["Serial_Date"] = null;
                Session["Schedul_ID"] = null;
                Session["Serial_Doctor_ID"] = null;
            }
            if(Session["UserName"] != null &&  Session["UserImage"] != null && Session["UserID"] != null)
            {
                pnlLogin.Visible = true;
                pnlNoLogin.Visible = false;
            }
            else
            {
                pnlLogin.Visible = false;
                pnlNoLogin.Visible = true;
            }
            if(Request.QueryString["Did"]!=null && Request.QueryString["Sid"] != null && Request.QueryString["d"] != null)
            {
                string Doctor_ID = Request.QueryString["Did"].ToString();
                string Schedul_ID = Request.QueryString["Sid"].ToString();
                string Serial_Date = Request.QueryString["d"].ToString();
                Check chk = new Check();
                Decrypt de = new Decrypt();
                Serial_Date = Serial_Date.Replace(" ","+");
                Serial_Date = de.GetDecryptHashCode(Serial_Date);
                if(Serial_Date!="error" && chk.int32Check("select count(*) from DoctorRegistation where DoctorID='"+Doctor_ID+"'")==1 && chk.int32Check("select count(*) from Schedul where ID="+Schedul_ID)==1)
                {


                    var st = " from DoctorRegistation where DoctorID='" + Doctor_ID + "'";
                    DoctorImage.ImageUrl = "~/Doctor/Image/Profile/" + chk.stringCheck("select DoctorPhoto "+st);
                    lblDoctorName.Text = chk.stringCheck("select FullName "+st);
                    lblDoctorDeg.Text = chk.stringCheck("select Qualification " + st);
                    string Schdul_Payment = chk.stringCheck("select Payment from Schedul where ID="+Schedul_ID);
                    string Schdul_Payment_Title = "";
                    int Schdul_Price = chk.int32Check("select Fee from Schedul where ID=" + Schedul_ID);
                    int Additional_Price = chk.int32Check("select Taka from Normal_Serial_Price where ID=1");
                    int Vat = chk.int32Check("select Taka from Normal_Serial_Price where ID=2");
                    int Discount = chk.int32Check("select Discount from Schedul where ID="+ Schedul_ID);

                    lblAdditionalPrice_Title.Text = chk.stringCheck("select Payment_Title from Normal_Serial_Price where ID=1");
                    lblAdditionalPrice_Taka.Text = Additional_Price.ToString();
                    lblDiscount_Title.Text = Discount + "%";  
                    lblVat_Title.Text = Vat + "%";        
                    
                    //Serial_Date = Serial_Date.Replace("/"," / ");                  
                    lblSchedul_Date.Text = Serial_Date;

                    string Schedul_Author = chk.stringCheck("select Schedul from DoctorSchedulDateCancle where Doctor_ID='"+ Doctor_ID + "' and SchedulID='" + Schedul_ID + "' ");
                    if(Schedul_Author=="TRUE")
                    {
                        pnlCancleSchedul.Visible = true;
                        pnlSchedulOK.Visible = false;
                        lblReason.Text = chk.stringCheck("select Reasion from DoctorSchedulDateCancle where Doctor_ID = '" + Doctor_ID + "' and SchedulID = '" + Schedul_ID + "' ");

                    }
                    else
                    {
                        int This_Date_OFF = chk.int32Check("select count(*) from DoctorSchedulDateCancle where Doctor_ID='"+Doctor_ID+ "' and NoSchedulDate='"+ Serial_Date + "' and Schedul='FALSE'");
                        if(This_Date_OFF==1)
                        {
                            pnlCancleSchedul.Visible = true;
                            pnlSchedulOK.Visible = false;
                            lblReason.Text = chk.stringCheck("select Reasion from DoctorSchedulDateCancle where Doctor_ID = '" + Doctor_ID+ "' and NoSchedulDate = '"+ Serial_Date + "' and Schedul = 'FALSE'");
                        }
                        else
                        {
                            pnlSchedulOK.Visible = true;
                            pnlCancleSchedul.Visible = false;
                        }
                    }


                    double total=0;
                    double Vat_Taka = 0;
                    double Discount_Taka = 0;

                    if (Schdul_Payment=="TRUE")
                    {
                        Schdul_Payment_Title = "Payfast";

                        int Total_Taka = Schdul_Price;// main taka
                        double main_Price = Schdul_Price;
                        double d = (main_Price* Discount);
                        Discount_Taka = (int)Math.Ceiling(d / 100);
                        main_Price -= Discount_Taka;// main price - disount price
                        double v = (main_Price * Vat);
                        Vat_Taka = (int)Math.Ceiling(v / 100);
                        main_Price += Vat_Taka;
                        total = (int)Math.Ceiling(Additional_Price + main_Price);
                    }
                    else
                    {
                        Schdul_Payment_Title = "Pay in Doctor";

                        int Total_Taka = Schdul_Price;// main taka
                        double main_Price = Schdul_Price;
                        double d = (main_Price * Discount);
                        Discount_Taka = (int)Math.Ceiling(d / 100);
                        main_Price -= Discount_Taka;// main price - disount price
                        double v = (main_Price * Vat);
                        Vat_Taka = (int)Math.Ceiling(v / 100);
                        main_Price += Vat_Taka;
                        total = (int)Math.Ceiling(Additional_Price + main_Price);
                        total -= (Schdul_Price-Discount_Taka);
                    }
                    if (Discount != 0)
                    {
                        lblSerial_Taka.Text = Schdul_Price- Discount_Taka + " <sup><s>" + Schdul_Price + "</s></sup>";
                    }
                    else
                    {
                        lblSerial_Taka.Text = Schdul_Price.ToString();
                    }
                    lblVat_Taka.Text = Vat_Taka.ToString();
                    lblDiscount_Taka.Text = Discount_Taka.ToString();
                    lblAdditionalPrice_Taka_Top.Text = total.ToString();
                    lblTotal_Taka.Text = total.ToString();
                    lblSerial_Title.Text = Schdul_Payment_Title;
                    if(total==0)
                    {
                        pnlPayment.Visible = false;
                    }
                    else
                    {
                        pnlPayment.Visible = true;
                    }
                }
                else
                {
                    Response.Redirect(Error_Page);
                }
            }
            else
            {
                Response.Redirect(Error_Page);
            }
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

        protected void btnSerial_Click(object sender, EventArgs e)
        {
            string Doctor_ID = Request.QueryString["Did"].ToString();
            string Schedul_ID = Request.QueryString["Sid"].ToString();
            string Serial_Date = Request.QueryString["d"].ToString();
            Check chk = new Check();
            Decrypt de = new Decrypt();
            Serial_Date = Serial_Date.Replace(" ", "+");
            Serial_Date = de.GetDecryptHashCode(Serial_Date);
            if (Serial_Date != "error" && chk.int32Check("select count(*) from DoctorRegistation where DoctorID='" + Doctor_ID + "'") == 1 && chk.int32Check("select count(*) from Schedul where ID=" + Schedul_ID) == 1)
            {
                var st = " from DoctorRegistation where DoctorID='" + Doctor_ID + "'";

                string Schdul_Payment = chk.stringCheck("select Payment from Schedul where ID=" + Schedul_ID);
                string Schdul_Payment_Title = "";

                int Schdul_Price = chk.int32Check("select Fee from Schedul where ID=" + Schedul_ID);
                int Additional_Price = chk.int32Check("select Taka from Normal_Serial_Price where ID=1");
                int Vat = chk.int32Check("select Taka from Normal_Serial_Price where ID=2");
                int Discount = chk.int32Check("select Discount from Schedul where ID=" + Schedul_ID);

                int total = 0;
                double Vat_Taka = 0;
                double Discount_Taka = 0;

                if (Schdul_Payment == "TRUE")
                {
                    Schdul_Payment_Title = "Payfast";
                    int Total_Taka = Schdul_Price;// main taka
                    double main_Price = Schdul_Price;
                    double d = (main_Price * Discount);
                    Discount_Taka = (int)Math.Ceiling(d / 100);
                    main_Price -= Discount_Taka;// main price - disount price
                    double v = (main_Price * Vat);
                    Vat_Taka = (int)Math.Ceiling(v / 100);
                    main_Price += Vat_Taka;
                    total = (int)Math.Ceiling(Additional_Price + main_Price);
                }
                else
                {
                    Schdul_Payment_Title = "Pay in Doctor";
                    int Total_Taka = Schdul_Price;// main taka
                    double main_Price = Schdul_Price;
                    double d = (main_Price * Discount);
                    Discount_Taka = (int)Math.Ceiling(d / 100);
                    main_Price -= Discount_Taka;// main price - disount price
                    double v = (main_Price * Vat);
                    Vat_Taka = (int)Math.Ceiling(v / 100);
                    main_Price += Vat_Taka;
                    total = (int)Math.Ceiling(Additional_Price + main_Price);
                    total -= (int)(Schdul_Price - Discount_Taka);
                }
                if (total == 0)
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ok');", true);
                    if (Session["UserName"] != null && Session["UserImage"] != null && Session["UserID"] != null)
                    {
                        // --------------------- login person -----------------------
                    }
                    else
                    {
                        if (txtEmail.Text != "" && txtMobileNo.Text != "" && txtPatientName.Text != "" && ddlDistrict.SelectedValue != "0" && ddlDivision.SelectedValue != "0" && ddlUpazila.SelectedValue != "0")
                        {
                            SqlCommand cmd = new SqlCommand();
                            cmd.Connection = con;
                            cmd.CommandText = @"insert into Serial (SerialID,DoctorID,SchedulID,PatientName,UserOrNot,Email,MobileNo,Division,District,Upazila,Payment_T_F,OriginalPrice,SerialPrice,AdditionalPrice,DiscountPercentage,DicountTaka,VatPercentage,VatTaka,Total,SerialDate,SubmitDate,SerialActive,PaymentClear)
                            values (@SerialID,@DoctorID,@SchedulID,@PatientName,@UserOrNot,@Email,@MobileNo,@Division,@District,@Upazila,@Payment_T_F,@OriginalPrice,@SerialPrice,@AdditionalPrice,@DiscountPercentage,@DicountTaka,@VatPercentage,@VatTaka,@Total,@SerialDate,@SubmitDate,@SerialActive,@PaymentClear)";
                            RandomNumberGenarator rn = new RandomNumberGenarator();
                            rn.ResultDate = chk.int32Check("select Taka from Normal_Serial_Price where ID=4");
                            string Ser = rn.RandomStringNumber("Normal_Serial_ID");
                            cmd.Parameters.AddWithValue("@SerialID", Ser);
                            cmd.Parameters.AddWithValue("@DoctorID", Doctor_ID);
                            cmd.Parameters.AddWithValue("@SchedulID", Schedul_ID);
                            cmd.Parameters.AddWithValue("@PatientName", txtPatientName.Text);
                            cmd.Parameters.AddWithValue("@UserOrNot", "FALSE");
                            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text);
                            cmd.Parameters.AddWithValue("@Division", ddlDivision.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@District", ddlDistrict.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@Upazila", ddlUpazila.SelectedItem.ToString());
                            cmd.Parameters.AddWithValue("@Payment_T_F", "FALSE");
                            cmd.Parameters.AddWithValue("@OriginalPrice", Convert.ToInt32(Schdul_Price));
                            cmd.Parameters.AddWithValue("@SerialPrice", Convert.ToInt32(Schdul_Price - Discount_Taka));
                            cmd.Parameters.AddWithValue("@AdditionalPrice", Convert.ToInt32(Additional_Price));
                            cmd.Parameters.AddWithValue("@DiscountPercentage", Convert.ToInt32(Discount));
                            cmd.Parameters.AddWithValue("@DicountTaka", Convert.ToInt32(Discount_Taka));
                            cmd.Parameters.AddWithValue("@VatPercentage", Convert.ToInt32(Vat));
                            cmd.Parameters.AddWithValue("@VatTaka", Convert.ToInt32(Vat_Taka));
                            cmd.Parameters.AddWithValue("@Total", Convert.ToInt32(total));
                            cmd.Parameters.AddWithValue("@SerialDate", Serial_Date);
                            cmd.Parameters.AddWithValue("@SubmitDate", DateTime.Now.ToString("MM/dd/yyyy"));
                            cmd.Parameters.AddWithValue("@SerialActive", "FALSE");
                            cmd.Parameters.AddWithValue("@PaymentClear", "FALSE");
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Session["Serial_ID"] = Ser;
                            Session["Serial_Date"] = Serial_Date;
                            Session["Schedul_ID"] = Schedul_ID;
                            Session["Serial_Doctor_ID"] = Doctor_ID;

                            string Time = chk.stringCheck("select FastTime from Schedul where ID="+Schedul_ID) + "-" + chk.stringCheck("select LastTime from Schedul where ID="+Schedul_ID);
                            string STitle = chk.stringCheck("select Title from Schedul where ID=" + Schedul_ID);
                            mail m = new mail();
                            m.SendMail(txtEmail.Text, "Doctor Serial", "Sucessfully. (Doctor Serial ID: " + Ser + " Serial Date: " + Serial_Date + ") (" + STitle + ") Time: " + Time + ". Please Come 30 min Fast in serial Time.");
                            Response.Redirect("congratulations");
                        }
                        else
                        {
                            lblResult.ForeColor = Color.Red;
                            lblResult.Text = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type Email/ Mobile No/ Patient Name..";
                        }
                    }

                }
                else
                {// payment option
                    
                    if (Session["UserName"] != null && Session["UserImage"] != null && Session["UserID"] != null)
                    {

                        if(txtPatientName_Auto.Text!="")
                        {
                            string PaymentOption = "";
                            if (RBBank.Checked == true)
                            {
                                PaymentOption = "Bank";
                            }
                            else if (RBbkash.Checked == true)
                            {
                                PaymentOption = "Bkash";
                            }
                            else if (RBMasterCard.Checked == true)
                            {
                                PaymentOption = "MasterCard";
                            }
                            else if (RBPaypal.Checked == true)
                            {
                                PaymentOption = "Paypal";
                            }
                            else if (RBRocket.Checked == true)
                            {
                                PaymentOption = "Rocket";
                            }
                            else if (RBVisa.Checked == true)
                            {
                                PaymentOption = "Visa";
                            }
                            else
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Select Payment Mathord.');", true);
                                lblResult.Text = "Select Payment Mathord.";
                            }
                            if (PaymentOption != "")
                            {
                                Response.Redirect("Payment/?opt=" + PaymentOption);
                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Type Patient Name.');", true);
                            lblResult.Text = "Type Patient Name.";
                        }
                    }
                    else
                    {
                        if (txtEmail.Text != "" && txtMobileNo.Text != "" && txtPatientName.Text != "" && ddlDistrict.SelectedValue != "0" && ddlDivision.SelectedValue != "0" && ddlUpazila.SelectedValue != "0")
                        {
                            string PaymentOption = "";
                            if(RBBank.Checked==true)
                            {
                                PaymentOption = "Bank";
                            }
                            else if(RBbkash.Checked==true)
                            {
                                PaymentOption = "Bkash";
                            }
                            else if (RBMasterCard.Checked == true)
                            {
                                PaymentOption = "MasterCard";
                            }
                            else if (RBPaypal.Checked == true)
                            {
                                PaymentOption = "Paypal";
                            }
                            else if (RBRocket.Checked == true)
                            {
                                PaymentOption = "Rocket";
                            }
                            else if ( RBVisa.Checked == true)
                            {
                                PaymentOption = "Visa";
                            }
                            else
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Select Payment Mathord.');", true);
                                lblResult.Text = "Select Payment Mathord.";
                            }
                            if(PaymentOption!="")
                            {
                                Response.Redirect("Payment/?opt="+PaymentOption);
                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Type Full Details for Patient.');", true);
                            lblResult.Text = "Type Full Details for Patient.";
                        }
                    }
                }

            }
            else
            {
                Response.Redirect(Error_Page);
            }





        }


        private void Add()
        {
            //
            Check chk = new Check();
            string ID = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID, chk.stringCheck("select Image from Advertisement where ID=" + ID))));

            string ID2 = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd2.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID2, chk.stringCheck("select Image from Advertisement where ID=" + ID2))));

            string ID3 = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd3.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID3, chk.stringCheck("select Image from Advertisement where ID=" + ID3))));




        }


     }
}