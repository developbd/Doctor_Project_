using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doctor
{
    public partial class congratulations : System.Web.UI.Page
    {
        private string Error_Page = "Default";
        protected void Page_Load(object sender, EventArgs e)
        {
            Add();
            if(Session["Serial_ID"] != null && Session["Serial_Date"] != null && Session["Schedul_ID"] != null &&  Session["Serial_Doctor_ID"] != null)
            {
                string Serial_No = Session["Serial_ID"].ToString();
                string Serial_Date = Session["Serial_Date"].ToString();
                string Schedul_No = Session["Schedul_ID"].ToString();
                string Doctor_ID = Session["Serial_Doctor_ID"].ToString();
                Check chk = new Check();
                lblDate.Text = Serial_Date;
                lblDoctorAddress.Text = chk.stringCheck("select Address from Schedul where ID="+Schedul_No);
                lblSerialNumber.Text = Serial_No;
                lblTotalPatient.Text = chk.stringCheck("select count(*) from Serial where SchedulID='" + Schedul_No+ "' and SerialDate='"+ Serial_Date + "'");
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