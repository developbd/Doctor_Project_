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

namespace doctor.SuperAdmin
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Check chk = new Check();
                txtChargeTitle.Text = chk.stringCheck("select Payment_Title from Normal_Serial_Price where ID=1");
                txtChargeTaka.Text = chk.stringCheck("select Taka from Normal_Serial_Price where ID=1");
                txtDiscount.Text = chk.stringCheck("select Taka from Normal_Serial_Price where ID=3");
                txtSerialNumber.Text = chk.stringCheck("select Taka from Normal_Serial_Price where ID=4");
                txtVat.Text = chk.stringCheck("select Taka from Normal_Serial_Price where ID=2");

            }
        }

        protected void btnAdvertisement_Click(object sender, EventArgs e)
        {
            if(txtChargeTaka.Text!="" && txtChargeTitle.Text!="" && txtDiscount.Text!="" && txtSerialNumber.Text !="" && txtVat.Text!="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "update Normal_Serial_Price set Payment_Title='"+txtChargeTitle.Text+"', Taka="+Convert.ToInt32(txtChargeTaka.Text)+" where ID=1";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update Normal_Serial_Price set Taka=" + Convert.ToInt32(txtDiscount.Text) + " where ID=3";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update Normal_Serial_Price set Taka=" + Convert.ToInt32(txtVat.Text) + " where ID=2";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.CommandText = "update Normal_Serial_Price set Taka=" + Convert.ToInt32(txtSerialNumber.Text) + " where ID=4";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblResult.ForeColor = Color.Green;
                lblResult.Text = "update sucessfully..";
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "some text are empty...";
            }
        }
    }
}