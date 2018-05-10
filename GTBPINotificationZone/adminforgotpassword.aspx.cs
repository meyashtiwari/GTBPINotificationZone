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
    public partial class adminforgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(Request.QueryString["n"]);
            if (n != 1)
            {
                Response.Redirect("adminlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["admins"] = "1";
                SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select count(*) from admin where smart_card_id='" + admin_id.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                string s = "0";
                while (dr.Read())
                {
                    s = dr[0].ToString();
                }
                if (s != "0")
                {
                    Session["admin1"] = admin_id.Text.ToString();
                    Response.Redirect("adminforgotpassword1.aspx");
                }

                else
                {
                    Label1.Text = "try again! you have entered wrong smart card id";
                }
            }
            catch (Exception ec)
            { }
             
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}