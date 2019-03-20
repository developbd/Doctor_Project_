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

namespace doctor.Doctor
{
    public partial class Service : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DoctorUsername"] == null && Session["DocotorImage"] == null && Session["DoctorID"] == null && Session["DocotorFullName"] == null)
            { Response.Redirect("~/Login"); }
            Show_Sunday_Schedul();
            Show_Saturday_Schedul();
            Show_Monday_Schedul();
            Show_Tuesday_Schedul();
            Show_Wednesday_Schedul();
            Show_Thursday_Schedul();
            Show_Friday_Schedul();
        }

        private void Show_Saturday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ",Session["DoctorID"].ToString(), "Saturday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while(data.Read())
            {
                string pay = "";
                if(data["Payment"].ToString()== "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"]+")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlSaturday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"],data["FastTime"],data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay,data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Sunday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Sunday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlSunday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>            
    
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"]+"&ref=Service",pay,data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Monday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Monday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlMonday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay, data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Tuesday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Tuesday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlTuesday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay, data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Wednesday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Wednesday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlWednesday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay, data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Thursday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Thursday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlThursday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay, data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        private void Show_Friday_Schedul()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = string.Format("select * from Schedul where DoctorID='{0}' and Week='{1}' ", Session["DoctorID"].ToString(), "Friday");
            con.Open();
            SqlDataReader data = cmd.ExecuteReader();
            while (data.Read())
            {
                string pay = "";
                if (data["Payment"].ToString() == "FALSE")
                {
                    pay = "Pay in Doctor(&#2547;" + data["Fee"] + ")";
                }
                else
                {
                    pay = "Payfast (&#2547;" + data["Fee"] + ")";
                }
                pnlFriday.Controls.Add(new LiteralControl(string.Format(@"
<span class='tg-radio'><input type='radio' id='firstavailableslot{5}' name='firstavailableslot'><label for='firstavailableslot62'><a class='tg-btndelete' href='{3}'><i class='fa fa-minus'></i></a>
						  <span>{0}</span><a href='{6}' style='font-size:11px;' class='tg-scheduletime'>{1}-{2}</a>	
						  <span class='tg-description'>{4}</span>
		</label>
    </span>                 
                    ", data["Title"], data["FastTime"], data["LastTime"], "delete?DSID=" + data["ID"] + "&ref=Service",pay, data["ID"], "AppointmentsList.aspx?Sid=" + data["ID"])));
            }
            con.Close();

        }
        protected void btnAddSchedul_Click(object sender, EventArgs e)
        {

            if (ddlFastTime.SelectedValue != "0" && ddlLastTime.SelectedValue != "0" && ddlWeek.SelectedValue != "0" && txtAddress.Text !="" && txtfee.Text !="" && ddlPAY.SelectedValue!="0")
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "insert into Schedul (Title,FastTime,LastTime,Week,Date,Schedul,DoctorID,Address,Fee,Payment,Discount) values(@Title,@FastTime,@LastTime,@Week,@Date,@Schedul,@DoctorID,@Address,@Fee,@Payment,@Discount)";
                    if (txtTitle.Text == "")
                    {
                        cmd.Parameters.AddWithValue("@Title", "Schedul");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                    }
                    cmd.Parameters.AddWithValue("@FastTime", ddlFastTime.SelectedItem.ToString() + ddlFastTimeAP.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@LastTime", ddlLastTime.SelectedItem.ToString() + ddlLasttimeAP.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Week", ddlWeek.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("dd-MM-yy"));
                    cmd.Parameters.AddWithValue("@Schedul", "TRUE");
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    cmd.Parameters.AddWithValue("@Fee", Convert.ToInt32(txtfee.Text));
                    cmd.Parameters.AddWithValue("@DoctorID", Session["DoctorID"].ToString());
                    cmd.Parameters.AddWithValue("@Payment", ddlPAY.SelectedValue.ToString());
                    int err = 0;
                    if (txtDiscount.Text != "")
                    {
                        int DS = Convert.ToInt32(txtDiscount.Text);
                        if (DS >= 0 && DS <= 100)
                        {
                            cmd.Parameters.AddWithValue("@Discount", DS);
                        }
                        else
                        {
                            err++;
                            lblResult.ForeColor = System.Drawing.Color.Red;
                            lblResult.Text += "Discount Must be 0-100 %.";
                        }
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@Discount", Convert.ToInt32(0));
                    }

                    if (err == 0)
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        lblResult.ForeColor = System.Drawing.Color.Green;
                        lblResult.Text = "Schedul Added. ";
                        ddlFastTime.SelectedValue = "0";
                        ddlLastTime.SelectedValue = "0";
                        ddlWeek.SelectedValue = "0";
                        txtAddress.Text = "";
                        txtfee.Text = "";
                        txtDiscount.Text = "";
                        ddlPAY.SelectedValue = "0";
                        Show_Sunday_Schedul();
                        Show_Saturday_Schedul();
                        Show_Monday_Schedul();
                        Show_Tuesday_Schedul();
                        Show_Wednesday_Schedul();
                        Show_Thursday_Schedul();
                        Show_Friday_Schedul();
                    }


                    
                }
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Please Select Itams.";
            }


        }

        protected void ddlWeek_Cancle_TextChanged(object sender, EventArgs e)
        {
            ddlSchedul.Items.Clear();
            if (ddlWeek_Cancle.SelectedValue!="0")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select * from Schedul where Week='" +ddlWeek_Cancle.SelectedValue.ToString()+ "' and DoctorID='"+ Session["DoctorID"].ToString() + "'";
                con.Open();
                SqlDataReader data = cmd.ExecuteReader();                
                ddlSchedul.Items.Add(new ListItem("Select Schedul", "0"));
                while(data.Read())
                {
                    ddlSchedul.Items.Add(new ListItem(data["FastTime"].ToString() + "-" + data["LastTime"].ToString(), data["ID"].ToString()));
                }
                con.Close();
            }
        }

        protected void btnAddDate_Click(object sender, EventArgs e)
        {
            Check chk = new Check();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            if (txtReason.Text !="" && ddlWeek_Cancle.SelectedValue!="0" && ddlSchedul.SelectedValue!="0")
            {
                if (chk.int32Check("select count(*) from DoctorSchedulDateCancle where Doctor_ID='" + Session["DoctorID"].ToString() + "' and SchedulID='" + ddlSchedul.SelectedValue.ToString() + "'") == 0)
                {
                    cmd.CommandText = "insert into DoctorSchedulDateCancle (Doctor_ID,NoSchedulDate,Reasion,Schedul,SchedulID,week) values(@Doctor_ID,@NoSchedulDate,@Reasion,@Schedul,@SchedulID,@week)";
                    cmd.Parameters.AddWithValue("@Doctor_ID", Session["DoctorID"].ToString());
                    cmd.Parameters.AddWithValue("@NoSchedulDate", "N/A");
                    cmd.Parameters.AddWithValue("@Reasion", txtReason.Text);
                    cmd.Parameters.AddWithValue("@Schedul", "TRUE");
                    cmd.Parameters.AddWithValue("@SchedulID", ddlSchedul.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@week", ddlWeek_Cancle.SelectedValue.ToString());
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblCancleResult.Text = "Sucessfully Schedul Cancle.";
                    lblCancleResult.ForeColor = System.Drawing.Color.Green;
                    txtDate.Text = "";
                    txtReason.Text = "";
                    ddlWeek_Cancle.SelectedValue = "0";
                    ddlSchedul.SelectedValue = "0";
                    GridView1.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sucessfully Schedul Cancle.');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Already Insert This Schedul.');", true);
                }
            }
            else if(txtDate.Text != "" && txtReason.Text != "")
            {

                if (chk.int32Check("select count(*) from DoctorSchedulDateCancle where Doctor_ID='" + Session["DoctorID"].ToString() + "' and NoSchedulDate='" + txtDate.Text + "'") == 0)
                {
                    cmd.CommandText = "insert into DoctorSchedulDateCancle (Doctor_ID,NoSchedulDate,Reasion,Schedul,SchedulID,week) values(@Doctor_ID,@NoSchedulDate,@Reasion,@Schedul,@SchedulID,@week)";
                    cmd.Parameters.AddWithValue("@Doctor_ID", Session["DoctorID"].ToString());
                    cmd.Parameters.AddWithValue("@NoSchedulDate", txtDate.Text);
                    cmd.Parameters.AddWithValue("@Reasion", txtReason.Text);
                    cmd.Parameters.AddWithValue("@Schedul", "FALSE");
                    cmd.Parameters.AddWithValue("@SchedulID", "N/A");
                    cmd.Parameters.AddWithValue("@week", "N/A");
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblCancleResult.Text = "Sucessfully Schedul Cancle This Date.";
                    lblCancleResult.ForeColor = System.Drawing.Color.Green;
                    txtDate.Text = "";
                    txtReason.Text = "";
                    ddlWeek_Cancle.SelectedValue = "0";
                    ddlSchedul.SelectedValue = "0";
                    GridView1.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sucessfully Schedul Cancle This Date.');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Already Insert This Date.');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please Type Schedul Cancle Date and Cancle Reason.');", true);
                lblCancleResult.ForeColor = System.Drawing.Color.Red;
                lblCancleResult.Text = "Please Type Schedul Cancle Date and Cancle Reason.";
            }
        }


    }
}