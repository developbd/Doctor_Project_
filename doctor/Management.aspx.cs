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
    public partial class Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session["SuperAdminUsername"]= null;
                Session["SuperAdminFullname"] = null;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtLOGusername.Text) && !string.IsNullOrEmpty(txtLOGPassword.Text))
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                {
                    try
                    {
                        Check chk = new Check();
                        int CountCheck = chk.int32Check("select count(*) from AdminLogin where UserName='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                        if(CountCheck==1)
                        {
                            Session["SuperAdminUsername"] = txtLOGusername.Text;
                            Session["SuperAdminFullname"] = chk.stringCheck("select FullName from AdminLogin where UserName='" + txtLOGusername.Text + "' and Password='" + txtLOGPassword.Text + "'");
                            Response.Redirect("SuperAdmin/Dashboard.aspx");
                        }
                        else
                        {
                            lblloginResult.Text = "Invailed Username/Password!";
                        }
                        
                    }
                    catch(Exception err)
                    {
                        lblloginResult.Text = "Server Error: "+err.Message;
                    }

                }
            }
        }
    }
}