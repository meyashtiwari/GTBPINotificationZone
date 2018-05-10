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
    public partial class adminprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");

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
                    adminid.Text = Session["admin1"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from admin where smart_card_id='" + adminid.Text + "' ", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        admin_password.Text = dr[1].ToString();
                        admin_secques.Text = dr[2].ToString();
                        admin_secans.Text = dr[3].ToString();
                        admin_secques1.Text = dr[4].ToString();
                        admin_secans1.Text = dr[5].ToString();

                    }
                    con.Close();
                }
            }

        }
        
       /* protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }*/

        protected void aproupdate_Click(object sender, EventArgs e)
        {
            string s = Session["admin1"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("update admin set smart_card_id='"+adminid.Text+"', password='" + admin_password.Text + "',sec_ques1='" + admin_secques.Text + "',sec_ans1='" + admin_secans.Text + "',sec_ques2='" + admin_secques1.Text + "',sec_ans2='" + admin_secans1.Text + "' where smart_card_id='" +s + "'", con);
            cmd1.ExecuteNonQuery();
           
            SqlCommand cmd2 = new SqlCommand("update post set smart_card_id='" + adminid.Text + "' where smart_card_id='" + s + "'", con);
            cmd2.ExecuteNonQuery();
           
            SqlCommand cmd3 = new SqlCommand("update query set smart_card_id='" + adminid.Text + "' where smart_card_id='" + s + "'", con);
            cmd3.ExecuteNonQuery();
           
            SqlCommand cmd4 = new SqlCommand("select * from admin where smart_card_id='" + adminid.Text + "' ", con);
            SqlDataReader dr;
            dr = cmd4.ExecuteReader();
            while (dr.Read())
            {
                admin_password.Text = dr[1].ToString();
                admin_secques.Text = dr[2].ToString();
                admin_secans.Text = dr[3].ToString();
                admin_secques1.Text = dr[4].ToString();
                admin_secans1.Text = dr[5].ToString();
            }

            con.Close();
        }

       
    }
}