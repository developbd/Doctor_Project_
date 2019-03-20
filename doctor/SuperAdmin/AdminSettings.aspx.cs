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

namespace doctor.SuperAdmin
{
    public partial class AdminSettings : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Country();
                Session["CountryID"] = null;
                Session["DivisionID"] = null;
                Session["UpdazilaID"] = null;

            }
        }
        private void Country()
        {
            ddlCountry.Items.Clear();
            ddlCountry2.Items.Clear();
            ddlCountry3.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Country order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlCountry.Items.Add(new ListItem("Select Country", "0"));
            ddlCountry2.Items.Add(new ListItem("Select Country", "0"));
            ddlCountry3.Items.Add(new ListItem("Select Country", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlCountry.Items.Add(new_Item);
                ddlCountry2.Items.Add(new_Item);
                ddlCountry3.Items.Add(new_Item);
            }
            con.Close();
        }
        private void Division(int ID)
        {
            ddlDivision.Items.Clear();
            ddlDivision2.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDivision.Items.Add(new ListItem("Select Division", "0"));
            ddlDivision2.Items.Add(new ListItem("Select Division", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDivision.Items.Add(new_Item);
                ddlDivision2.Items.Add(new_Item);
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

        protected void btnAddCountry_Click(object sender, EventArgs e)
        {
            if(txtCountry.Text!="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Country (Name,Value) values(@Name,@Value)";
                cmd.Parameters.AddWithValue("@Name",txtCountry.Text);
                cmd.Parameters.AddWithValue("@Value",txtCountryValue.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblCountryResult.ForeColor = System.Drawing.Color.Green;
                lblCountryResult.Text = "Add Sucessfully";
                GridView1.DataBind();
                txtCountry.Text = "";
                txtCountryValue.Text = "";
            }
            else
            {
                lblCountryResult.ForeColor = System.Drawing.Color.Red;
                lblCountryResult.Text = "Country Name Type..";
            }
        }
        protected void btnDivision_Click(object sender, EventArgs e)
        {
            if(ddlCountry.SelectedValue!="0" && txtDivision.Text !="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Division (Name,Value,LinkID,LinkName) values(@Name,@Value,@LinkID,@LinkName)";
                cmd.Parameters.AddWithValue("@Name", txtDivision.Text);
                cmd.Parameters.AddWithValue("@Value", txtDivisionValue.Text);
                cmd.Parameters.AddWithValue("@LinkID", ddlCountry.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@LinkName",ddlCountry.SelectedItem.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblDivisionResult.ForeColor = System.Drawing.Color.Green;
                lblDivisionResult.Text = "Add Sucessfully..";
                GridView2.DataBind();
                txtDivision.Text = "";
                txtDivisionValue.Text = "";
                alldefault();
            }
            else
            {
                lblDivisionResult.ForeColor = System.Drawing.Color.Red;
                lblDivisionResult.Text = "Name/ Country Type..";
            }
        }
        protected void ddlCountry2_TextChanged(object sender, EventArgs e)
        {
            if(ddlCountry2.SelectedValue!="0")
            {
                Division(Convert.ToInt32(ddlCountry2.SelectedValue));
            }
        }
        protected void btnCheckDivision_Click(object sender, EventArgs e)
        {
            if(ddlCountry.SelectedValue!="0")
            {
                Session["CountryID"] = ddlCountry.SelectedValue.ToString();
            }
        }
        protected void btnDistrictAdd_Click(object sender, EventArgs e)
        {
            if(ddlCountry2.SelectedValue!="0" && ddlDivision.SelectedValue!="0" && txtDistrict.Text!="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into District (Name,Value,LinkID,LinkName) values(@Name,@Value,@LinkID,@LinkName)";
                cmd.Parameters.AddWithValue("@Name", txtDistrict.Text);
                cmd.Parameters.AddWithValue("@Value", txtDistrictValue.Text);
                cmd.Parameters.AddWithValue("@LinkID", ddlDivision.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@LinkName", ddlDivision.SelectedItem.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblDistrictResult.ForeColor = System.Drawing.Color.Green;
                lblDistrictResult.Text = "Add Sucessfully..";
                GridView3.DataBind();
                txtDistrict.Text = "";
                txtDistrictValue.Text = "";
                alldefault();
            }
            else
            {
                lblDistrictResult.ForeColor = System.Drawing.Color.Red;
                lblDistrictResult.Text = "Select Country/ Division/ District Name...";
            }



        }
        protected void btnDistrictCheck_Click(object sender, EventArgs e)
        {
            if (ddlCountry2.SelectedValue != "0" && ddlDivision.SelectedValue != "0" )
            {
                Session["DivisionID"] = ddlDivision.SelectedValue.ToString();
            }

        }
        protected void ddlCountry3_TextChanged(object sender, EventArgs e)
        {
            if(ddlCountry3.SelectedValue!="0")
            {
                Division(Convert.ToInt32(ddlCountry3.SelectedValue));
            }
        }
        protected void ddlDivision2_TextChanged(object sender, EventArgs e)
        {
            if(ddlDivision2.SelectedValue!="0")
            {
                District(Convert.ToInt32(ddlDivision2.SelectedValue));
            }
        }
        protected void btnUpazilaAdd_Click(object sender, EventArgs e)
        {
            if(ddlCountry3.SelectedValue!="0" && ddlDivision2.SelectedValue!="0" && ddlDistrict.SelectedValue!="0" && txtUpazila.Text!="")
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Upazila (Name,Value,LinkID,LinkName) values(@Name,@Value,@LinkID,@LinkName)";
                cmd.Parameters.AddWithValue("@Name", txtUpazila.Text);
                cmd.Parameters.AddWithValue("@Value",txtUpazilaValue.Text);
                cmd.Parameters.AddWithValue("@LinkID", ddlDistrict.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@LinkName", ddlDistrict.SelectedItem.ToString());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblDistrictResult.ForeColor = System.Drawing.Color.Green;
                lblDistrictResult.Text = "Add Sucessfully..";
                GridView4.DataBind();
                txtUpazila.Text = "";
                txtUpazilaValue.Text = "";
                alldefault();
            }
            else
            {
                lblUpazilaResult.ForeColor = System.Drawing.Color.Red;
                lblUpazilaResult.Text = " Country/ Division/ District/ Updazila name Type...";
            }
        }
        protected void btnUpazilaCheck_Click(object sender, EventArgs e)
        {
            if(ddlCountry3.SelectedValue != "0" && ddlDivision2.SelectedValue != "0" && ddlDistrict.SelectedValue != "0")
            {
                Session["UpdazilaID"] = ddlDistrict.SelectedValue.ToString();
            }
            else
            {
                lblUpazilaResult.ForeColor = System.Drawing.Color.Red;
                lblUpazilaResult.Text = " Country/ Division/ District/ Updazila name Type...";
            }
        }


        private void alldefault()
        {
            ddlCountry.SelectedValue = "0";
            ddlCountry2.SelectedValue = "0";
            ddlCountry3.SelectedValue = "0";
            ddlDistrict.SelectedValue = "0";
            ddlDivision.SelectedValue = "0";
            ddlDivision2.SelectedValue = "0";
            
        }

    }
}