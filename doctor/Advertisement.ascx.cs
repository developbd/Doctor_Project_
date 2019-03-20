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
    public partial class Advertisement : System.Web.UI.UserControl
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowDoctors();
            Add();
        }
        private void ShowDoctors()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select top 6 * from DoctorRegistation where Verify='TRUE' order by NEWID()";
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();            
            while(data.Read())
            {
                pnlDoctors.Controls.Add(new LiteralControl(string.Format(@"
            <li>
            <figure><a href = '{0}' ><img src = '../Doctor/Image/Profile/{1}' Width='50' Height='50' alt = 'image description' ></a></figure>
                  <div class='tg-postcontent'>
            		<h5><a href = '{0}' > {2}</a></h5>
            		<span class='tg-subjects'>{3}</span>
            	</div>
            </li>

                ", "Appointment.aspx?=" + data["DoctorID"], data["DoctorPhoto"], data["FullName"], data["Categories"])));
            }
            con.Close();


          

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
            ", "click?="+ID2,chk.stringCheck("select Image from Advertisement where ID="+ID2))));

            string ID3 = chk.stringCheck("select top 1 ID from Advertisement order by NEWID()");
            pnlAdd3.Controls.Add(new LiteralControl(string.Format(@"
            <figure><a  target='_blank' href='{0}' ><img src = '../images/Advertisement/{1}' ></a></figure>
            ", "click?=" + ID3, chk.stringCheck("select Image from Advertisement where ID=" + ID3))));




        }

  
    }
}