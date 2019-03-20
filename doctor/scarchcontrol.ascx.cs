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

namespace doctor
{
    public partial class scarchcontrol : System.Web.UI.UserControl
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DoctorDBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Division(15);
            }
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
        private void Division(int ID)
        {
            ddlDivision.Items.Clear();
            con.Open();
            SqlCommand Show = new SqlCommand();
            Show.Connection = con;
            Show.CommandText = @"select ID, Name from Division where LinkID=" + ID + " order by Name";
            SqlDataReader DATA;
            DATA = Show.ExecuteReader();
            ddlDivision.Items.Add(new ListItem("Select Division", "0"));
            while (DATA.Read())
            {
                ListItem new_Item = new ListItem();
                new_Item.Text = DATA["Name"].ToString();
                new_Item.Value = DATA["ID"].ToString();
                ddlDivision.Items.Add(new_Item);
            }
            con.Close();
        }
        protected void ddlIteams_TextChanged(object sender, EventArgs e)
        {
            ddllist.Items.Clear();
           SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            if(ddlIteams.SelectedValue.ToString() == "Doctor")
            {
                cmd.CommandText = "select * from DoctorCatagoris";
                con.Open();
                SqlDataReader data = cmd.ExecuteReader();                
                while(data.Read())
                {
                    ddllist.Items.Add(new ListItem(data["Catagoris"].ToString(), data["ID"].ToString()));
                }
                con.Close();
            }
            else if(ddlIteams.SelectedValue.ToString() == "Hospitals")
            {
                cmd.CommandText = "select * from Hospital";
                con.Open();
                SqlDataReader data = cmd.ExecuteReader();
                while (data.Read())
                {
                    ddllist.Items.Add(new ListItem(data["Name"].ToString(), data["ID"].ToString()));
                }
                con.Close();
            }
            else if (ddlIteams.SelectedValue.ToString() == "Blood")
            {
                cmd.CommandText = "select * from bloodGroup";
                con.Open();
                SqlDataReader data = cmd.ExecuteReader();
                while (data.Read())
                {
                    ddllist.Items.Add(new ListItem(data["BloodGroup"].ToString(), data["Value"].ToString()));
                }
                con.Close();
            }
        }

        protected void ddlDivision_TextChanged(object sender, EventArgs e)
        {
            if(ddlDivision.SelectedValue!="0")
            {
                District(Convert.ToInt32(ddlDivision.SelectedValue));
            }
        }

        protected void btnScarch_Click(object sender, EventArgs e)
        {
            if (txtScarch.Text != "")
            {
                if(ddlIteams.SelectedValue== "Doctor")
                {
                    Response.Redirect("search?Cat=" + ddllist.SelectedItem.ToString() + "&Dis=" + ddlDistrict.SelectedItem.ToString() + "&txt=" + txtScarch.Text);
                }
                else if(ddlIteams.SelectedValue == "Hospitals")
                {
                    Response.Redirect("search?HCat=" + ddllist.SelectedItem.ToString() + "&HDis=" + ddlDistrict.SelectedItem.ToString() + "&Htxt=" + txtScarch.Text);
                }
                else if (ddlIteams.SelectedValue == "Blood")
                {
                    Response.Redirect("search?BCat=" + ddllist.SelectedItem.ToString() + "&BDis=" + ddlDistrict.SelectedItem.ToString() + "&Btxt=" + txtScarch.Text);
                }                
            }
            else
            {
                if (ddlIteams.SelectedValue == "Doctor")
                {
                    Response.Redirect("search?Cat=" + ddllist.SelectedItem.ToString() + "&Dis=" + ddlDistrict.SelectedItem.ToString() + "&txt=%%");
                }
                else if (ddlIteams.SelectedValue == "Hospitals")
                {
                    Response.Redirect("search?HCat=" + ddllist.SelectedItem.ToString() + "&HDis=" + ddlDistrict.SelectedItem.ToString() + "&txt=%%");
                }
                else if (ddlIteams.SelectedValue == "Blood")
                {
                    Response.Redirect("search?BCat=" + ddllist.SelectedItem.ToString() + "&BDis=" + ddlDistrict.SelectedItem.ToString() + "&txt=%%");
                }
            }
        }
    }
}