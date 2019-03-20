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


namespace doctor.Doctor
{
    public partial class AppointmentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorUsername"] == null && Session["DocotorImage"] == null && Session["DoctorID"] == null && Session["DocotorFullName"] == null)
            { Response.Redirect("~/Login"); }
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["Sid"] != null)
                    {
                        GridSess.Visible = false;
                        GridScarch.Visible = false;
                        GridQuery.Visible = true;
                    }
                    else if (Request.QueryString["date"] != null)
                    {
                        gridDate.Visible = true;
                        GridSess.Visible = false;
                        GridScarch.Visible = false;
                        GridQuery.Visible = false;
                    }
                }
            }
        }

        protected void btnScarch_Click(object sender, EventArgs e)
        {
            GridSess.Visible = false;
            gridDate.Visible = false;
            GridScarch.Visible = true;
            GridQuery.Visible = false;
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentsList");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        protected void btnDoctorSee_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Check chk = new Check();
            string Chk_Doc_Ser = chk.stringCheck("select SerialActive from Serial where ID="+ID);
            string Set = "";
            if(Chk_Doc_Ser=="TRUE")
            {
                Set = "FALSE";
            }
            else
            {
                Set = "TRUE";
            }
            SqlCommand cmd = new SqlCommand();
            cmd.Connection =  con;
            cmd.CommandText = "update Serial set SerialActive='"+Set+"' where ID="+ID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridQuery.DataBind();
            GridScarch.DataBind();
            GridSess.DataBind();
            gridDate.DataBind();
        }

        protected void btnPaymentClear_Command(object sender, CommandEventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string ID = e.CommandArgument.ToString();
            Check chk = new Check();
            string Doctor_ID = chk.stringCheck("select DoctorID from Serial where ID="+ID);
            string Serial_Number = chk.stringCheck("select SerialID from Serial where ID=" + ID);
            string Schedul_ID = chk.stringCheck("select SchedulID from Serial where ID=" + ID);
            string Schedul_Date = chk.stringCheck("select SerialDate from Serial where ID=" + ID);
            string Taka = chk.stringCheck("select SerialPrice from Serial where ID=" + ID);
            string Submit_Date = DateTime.Now.ToString("MM/dd/yyyy");
            string PatientName = chk.stringCheck("select PatientName from Serial where ID=" + ID);
            string Chk_Doc_Ser = chk.stringCheck("select PaymentClear from Serial where ID=" + ID);
            string Set = "";
            if (Chk_Doc_Ser == "TRUE")
            {
                Set = "FALSE";
                if(chk.int32Check("select count(*) from DoctorPayment where SerialNumber='"+Serial_Number+"'")==1)
                {
                    cmd.CommandText = "delete from DoctorPayment where SerialNumber='"+ Serial_Number + "'";
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                Set = "TRUE";
                cmd.CommandText = @"insert into DoctorPayment (DoctorID,SerialNumber,SchedulID,SchedulDate,SubmitDate,Payment,PatientName) 
                Values (@DoctorID,@SerialNumber,@SchedulID,@SchedulDate,@SubmitDate,@Payment,@PatientName)";
                cmd.Parameters.AddWithValue("@DoctorID", Doctor_ID);
                cmd.Parameters.AddWithValue("@SerialNumber", Serial_Number);
                cmd.Parameters.AddWithValue("@SchedulID", Schedul_ID);
                cmd.Parameters.AddWithValue("@SchedulDate", Schedul_Date);
                cmd.Parameters.AddWithValue("@SubmitDate", Submit_Date);
                cmd.Parameters.AddWithValue("@Payment",Convert.ToInt32(Taka));
                cmd.Parameters.AddWithValue("@PatientName", PatientName);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            
            cmd.CommandText = "update Serial set PaymentClear='" + Set + "' where ID=" + ID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridQuery.DataBind();
            GridScarch.DataBind();
            GridSess.DataBind();
            gridDate.DataBind();


        }
    }
}