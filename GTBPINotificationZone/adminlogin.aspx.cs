using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GTBPINotificationZone
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["admins"] = "1";
            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from admin where smart_card_id='" + adminid.Text + "' AND password='" + adminpassword.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            string s="0";
            while (dr.Read())
            {
                s = dr[0].ToString();           
            }
            if (s != "0")
            {
                Session["admins"] = "1";
                Session["admin1"] = adminid.Text.ToString();
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Label1.Text = "enter correct smart card id and password";
            }
            con.Close();
           
        }
    }
}