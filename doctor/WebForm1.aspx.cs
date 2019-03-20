using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
namespace doctor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  Response.Write("https://www.facebook.com/sharer/sharer.php?u="+ "http://bdbayonline.com/information?=");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                MailMessage objeto_mail = new MailMessage();
                SmtpClient client = new SmtpClient();
                client.Port = 80;
                client.Host = "smtpout.secureserver.net";
                client.Timeout = 1000000;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = true;

                objeto_mail.IsBodyHtml = true;
                client.Credentials = new System.Net.NetworkCredential("support@bddoctorspoint.com", "Monir@1981");
                objeto_mail.From = new MailAddress("support@bddoctorspoint.com");
                objeto_mail.To.Add(new MailAddress("tasherulislam@gmail.com"));
                objeto_mail.Subject = "Check";
                objeto_mail.Body = "asdas das da sasdasd";
                client.Send(objeto_mail);
            }
            catch (Exception er)
            {
                Response.Write(er);
            }
        }
    }
}