using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.SuperAdmin
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString[""] != null)
            {
                txtEmail.Text = Request.QueryString[""].ToString();
                txtSubject.Text = "Feedback BD Doctors Point";
            }
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "" && txtMessege.Text != "" && txtSubject.Text != "")
            {
                mail m = new mail();
                if(m.SendMail(txtEmail.Text,txtSubject.Text,txtMessege.Text))
                {
                    lblResult.Text = "Messege Send.";
                    txtSubject.Text = "";
                    txtMessege.Text = "";
                    txtEmail.Text = "";
                }
                else
                {
                    lblResult.Text = "Messege Not Send.";
                    txtSubject.Text = "";
                    txtMessege.Text = "";
                    txtEmail.Text = "";
                }
            }
            else
            {
                lblResult.Text = "Fill all Froms.";
            }
        }
    }
}