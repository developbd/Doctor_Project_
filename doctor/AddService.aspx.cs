using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;



namespace doctor
{
    public partial class AddService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddldivision();
                ddlhospital();
            }
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);

        private void ddldivision()
        {
            ddlDivision.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDivision.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDivision.Items.Add(new_Item);
            }
            con.Close();
        }


        private void ddldistrict(int id)
        {
            ddlDistrict.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from District where LinkID="+id+" order by Name";
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

        private void ddlupozila(int id)
        {
            ddlUpazila.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Upazila where LinkID="+id+" order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlUpazila.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlUpazila.Items.Add(new_Item);
            }
            con.Close();
        }
        private void ddlhospital()
        {
            ddlHospetal.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Hospital order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlHospetal.Items.Add(new ListItem("Select District", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlHospetal.Items.Add(new_Item);
            }
            con.Close();
        }


        protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlDivision.SelectedValue!="0")
            {
                int Division = Convert.ToInt32(ddlDivision.SelectedValue);
                ddldistrict(Division);
                ddlUpazila.SelectedValue = "0";
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlDistrict.SelectedValue!="0")
            {
                int Distric = Convert.ToInt32(ddlDistrict.SelectedValue);
                ddlupozila(Distric);

            }
        }
    }
}