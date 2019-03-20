using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Input;

namespace doctor.Admin
{
    public partial class DoctorVerify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Country();
            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void btnScarchAll_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from DoctorRegistation order by ID", con);            
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
            
        }
        private void Country()
        {
            ddlCountry.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Country order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlCountry.Items.Add(new ListItem("Select Country", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlCountry.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Division(int ID)
        {
            ddlDvision.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDvision.Items.Add(new ListItem("Select Division", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDvision.Items.Add(new_Item);
            }
            con.Close();
        }
        private void District(int ID)
        {
            ddlDistrict.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from District where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDistrict.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDistrict.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Upazila(int ID)
        {
            ddlUpazila.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Upazila where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlUpazila.Items.Add(new ListItem("Select Upazila", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlUpazila.Items.Add(new_Item);
            }
            con.Close();
        }
        protected void ddlCountry_TextChanged(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue != "0")
            {
                Division(Convert.ToInt32(ddlCountry.SelectedValue));
            }
        }
        protected void ddlDvision_TextChanged(object sender, EventArgs e)
        {
            if (ddlDvision.SelectedValue != "0")
            {
                District(Convert.ToInt32(ddlDvision.SelectedValue));
            }
        }
        protected void ddlDistrict_TextChanged(object sender, EventArgs e)
        {
            if (ddlDistrict.SelectedValue != "0")
            {
                Upazila(Convert.ToInt32(ddlDistrict.SelectedValue));
            }
        }
        protected void btnScarchCountry_Click(object sender, EventArgs e)
        {
            if(ddlCountry.SelectedValue!="0" && ddlDistrict.SelectedValue!="0" && ddlDvision.SelectedValue!="0" && ddlUpazila.SelectedValue!="0")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where Country='"+ddlCountry.SelectedItem.ToString()+ "' and Division='"+ddlDvision.SelectedItem.ToString() + "' and District='"+ddlDistrict.SelectedItem.ToString() + "' and Upazila='"+ddlUpazila.SelectedItem.ToString() + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                ddlCountry.SelectedValue = "0"; ddlDistrict.SelectedValue = "0"; ddlDvision.SelectedValue = "0"; ddlUpazila.SelectedValue = "0";

            }
        }
        protected void btnScarchRegistationNumber_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDoctorRegistationNumber.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where RegistationNumber='" + txtDoctorRegistationNumber.Text + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                txtDoctorRegistationNumber.Text = "";
            }
        }
        protected void btnScarchDocetorFullname_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDoctorFullName.Text))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where FullName>='" + txtDoctorFullName.Text + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                txtDoctorFullName.Text = "";
                 
            }
        }
        protected void btnScarchVerify_Click(object sender, EventArgs e)
        {
            if(ddlverify.SelectedValue!="0")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where Verify='" + ddlverify.SelectedValue.ToString() + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                ddlverify.SelectedValue = "0";
            }
        }
        protected void btnScarchAuthority_Click(object sender, EventArgs e)
        {
            if (ddlAuthority.SelectedValue != "0")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where Authorise='" + ddlAuthority.SelectedValue.ToString() + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                ddlAuthority.SelectedValue = "0";
            }
        }
        protected void btnScarchLoginParmit_Click(object sender, EventArgs e)
        {
            if (ddlLoginParmit.SelectedValue != "0")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from DoctorRegistation where LoginParmit='" + ddlLoginParmit.SelectedValue.ToString() + "' order by ID", con);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
                ddlLoginParmit.SelectedValue = "0";
            }
        }
        protected void btnAutority_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            string Authority = chk.stringCheck("select Authorise from DoctorRegistation where ID="+ID+"");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            if(Authority=="TRUE")
            {
                RandomNumberGenarator rn = new RandomNumberGenarator();
                rn.ResultDate = 5;
                cmd.CommandText = "update DoctorRegistation set Authorise='"+rn.RandomStringNumber("Authority") +"' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Authority is Dectived.');", true);

            }
            else
            {
                cmd.CommandText = "update DoctorRegistation set Authorise='TRUE' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Authority is Actived.');", true);
            }
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from DoctorRegistation where ID="+ID, con);
            SqlDataReader dr = cmd2.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
            
          //  Response.Redirect("http://www.google.com/"+e.CommandArgument.ToString());
        }
        protected void btnVerify_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            string Verify = chk.stringCheck("select Verify from DoctorRegistation where ID=" + ID + "");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            if (Verify == "TRUE")
            {
                cmd.CommandText = "update DoctorRegistation set Verify='FALSE' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Verify is Deactived.');", true);

            }
            else
            {
                cmd.CommandText = "update DoctorRegistation set Verify='TRUE' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Verify is Actived.');", true);
            }
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from DoctorRegistation where ID=" + ID, con);
            SqlDataReader dr = cmd2.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }
        protected void btnLoginPermit_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            string LoginParmit = chk.stringCheck("select LoginParmit from DoctorRegistation where ID=" + ID + "");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            if (LoginParmit == "TRUE")
            {
                cmd.CommandText = "update DoctorRegistation set LoginParmit='FALSE' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Login Permition is Deactived.');", true);

            }
            else
            {
                cmd.CommandText = "update DoctorRegistation set LoginParmit='TRUE' where ID=" + ID + "";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Login Permition is Actived.');", true);
            }
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from DoctorRegistation where ID=" + ID, con);
            SqlDataReader dr = cmd2.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }
        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            Check chk = new Check();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from DoctorRegistation where ID=" + ID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from DoctorRegistation", con);
            SqlDataReader dr = cmd2.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();
        }

    }
}