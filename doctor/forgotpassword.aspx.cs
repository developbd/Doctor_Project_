using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Check chk = new Check();
        mail m = new mail();
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "")
            {
                string Password = "";
                if (ddlSelectLogin.SelectedValue == "DLOGIN")
                {                    
                    if (chk.int32Check("select count(*) from DonerRegistation where Email='" + txtEmail.Text + "' ") == 1)
                    {
                        Password = chk.stringCheck("select Password from DonerRegistation where Email='" + txtEmail.Text + "'");
                        m.SendMail(txtEmail.Text,"Forgot Password","Password: "+Password);
                        lblResult.Text = "Messege is send Please Check Your Mail.";
                    }
                    else
                    {
                        lblResult.Text = "Email Not Found.";
                    }
                }
                else if (ddlSelectLogin.SelectedValue == "HLONIG")
                {
                    if (chk.int32Check("select count(*) from HospitalRegistation where PersonalEmail='" + txtEmail.Text + "' ") == 1)
                    {
                        Password = chk.stringCheck("select password from HospitalRegistation where PersonalEmail='" + txtEmail.Text + "'");
                        m.SendMail(txtEmail.Text, "Forgot Password", "Password: " + Password);
                        lblResult.Text = "Messege is send Please Check Your Mail.";
                    }
                    else
                    {
                        lblResult.Text = "Email Not Found.";
                    }
                }
                else if (ddlSelectLogin.SelectedValue == "BDLOGIN")
                {
                    if (chk.int32Check("select count(*) from DoctorRegistation where Email='" + txtEmail.Text + "' ") == 1)
                    {
                        Password = chk.stringCheck("select Password from DoctorRegistation where Email='" + txtEmail.Text + "'");
                        m.SendMail(txtEmail.Text, "Forgot Password", "Password: " + Password);
                        lblResult.Text = "Messege is send Please Check Your Mail.";
                    }
                    else
                    {
                        lblResult.Text = "Email Not Found.";
                    }
                }

            }
            else
            {
                lblResult.Text = "Type Your Email.";
            }
        }
    }
}