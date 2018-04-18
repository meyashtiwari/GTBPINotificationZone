using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class adminupdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admins"] != "1")
            {
                Response.Redirect("adminlogin.aspx");
            }
           
        }

        protected void del10_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select login_as from login where smart_card_id='" + ac_del.Text + "' ", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            string s = "0";
            while (dr.Read())
            {
                s = dr[0].ToString();
            }
            con.Close();
            if (s != "0")
            {
                con.Open();
                if (s == "student")
                {
                    SqlCommand cmd1 = new SqlCommand("delete from login where smart_card_id='" + ac_del.Text + "' ", con);
                    cmd1.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("delete from student where smart_card_id='" + ac_del.Text + "' ", con);
                    cmd2.ExecuteNonQuery();
                    SqlCommand cmd3 = new SqlCommand("delete from post where smart_card_id='" + ac_del.Text + "' ", con);
                    cmd3.ExecuteNonQuery();
                    SqlCommand cmd4 = new SqlCommand("delete from query where smart_card_id='" + ac_del.Text + "' ", con);
                    cmd4.ExecuteNonQuery();
                    ac_del.Text = "";
                    Label1.Text = "account deleted";
                }
                else
                    if (s == "faculty")
                    {
                        SqlCommand cmd1 = new SqlCommand("delete from login where smart_card_id='" + ac_del.Text + "' ", con);
                        cmd1.ExecuteNonQuery();
                        SqlCommand cmd2 = new SqlCommand("delete from faculty where smart_card_id='" + ac_del.Text + "' ", con);
                        cmd2.ExecuteNonQuery();
                        SqlCommand cmd3 = new SqlCommand("delete from post where smart_card_id='" + ac_del.Text + "' ", con);
                        cmd3.ExecuteNonQuery();
                        SqlCommand cmd4 = new SqlCommand("delete from query where smart_card_id='" + ac_del.Text + "' ", con);
                        cmd4.ExecuteNonQuery();
                        ac_del.Text = "";
                        Label1.Text = "account deleted";
                    }
                con.Close();
            }
            else
            {
                ac_del.Text = "";
                Label1.Text = "please enter correct smart card id";
            }
            }

    }
}