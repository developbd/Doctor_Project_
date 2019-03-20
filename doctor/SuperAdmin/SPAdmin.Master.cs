using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor.SuperAdmin
{
    public partial class SPAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SuperAdminUsername"] != null &&
            Session["SuperAdminFullname"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Management.aspx");
            }
        }
    }
}