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
    public partial class adminforgotpassword1 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=Yes");
        
               
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admins"] != "1")
            {
                Response.Redirect("adminlogin.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    string id = Session["admin1"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from admin where smart_card_id='" + id + "'", con);
                    SqlDataReader dr;

                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        afLabel2.Text = dr[2].ToString();

                        afLabel5.Text = dr[4].ToString();

                    }
                    con.Close();

                }
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Session["admin1"].ToString();
            string s = "0";
            string s1 = "0";
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from admin where smart_card_id='" + id + "'", con);
            SqlDataReader dr;

            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                 s = dr[3].ToString();

                 s1 = dr[5].ToString();

            }
            if ((ans1.Text == s) && (ans2.Text == s1))
            {
                Response.Redirect("adminforgotpassword2.aspx");
            }
            else
            {
                aLabel7.Text = "enter correct answers";            
            }


            con.Close();
        }
    }
}