using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class Footer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Check chk2 = new Check();
            lblCallcenter.Text = chk2.stringCheck("select Logo from logo_tbl where ID=2");
            lblAddress.Text = chk2.stringCheck("select Logo from logo_tbl where ID=4");
            lblEmail.Text = chk2.stringCheck("select Logo from logo_tbl where ID=3");
            LogoImage.ImageUrl = "../../images/Logo/" + chk2.stringCheck("select Logo from logo_tbl where ID=1");
        }
    }
}