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

    public partial class teachprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;MultipleActiveResultSets=True;User Instance=True;trusted_connection=yes ");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] == "0")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    utid.Text = Session["id"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select *from faculty where smart_card_id='" + utid.Text + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        utname.Text = dr[1].ToString();
                        utpassword.Text = dr[2].ToString();
                        utdpt.Text = dr[3].ToString();
                        utsec_ques1.Text = dr[4].ToString();
                        utsec_ans1.Text = dr[5].ToString();
                        utsec_ques2.Text = dr[6].ToString();
                        utsec_ans2.Text = dr[7].ToString();


                    }
                    con.Close();
                }
            }
        }

        protected void tupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update faculty set smart_card_id='" + utid.Text + "' , name='" + utname.Text+"',password='" + utpassword.Text + "',sec_ques1='" + utsec_ques1.Text + "',sec_ans1='" + utsec_ans1.Text + "',sec_ques2='" + utsec_ques2.Text + "',sec_ans2='" + utsec_ans2.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("update login set smart_card_id='" + utid.Text + "',password='" + utpassword.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            con.Open();

            SqlCommand cmd2 = new SqlCommand("update post set smart_card_id='" + utid.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("update query set smart_card_id='" + utid.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            con.Open();
            SqlCommand cmd4 = new SqlCommand("select *from faculty where smart_card_id='" + utid.Text + "'", con);
            SqlDataReader dr;
            dr = cmd4.ExecuteReader();
            while (dr.Read())
            {
                utid.Text = dr[0].ToString();
                utname.Text = dr[1].ToString();
                utpassword.Text = dr[2].ToString();
                utdpt.Text = dr[3].ToString();
                utsec_ques1.Text = dr[4].ToString();
                utsec_ans1.Text = dr[5].ToString();
                utsec_ques2.Text = dr[6].ToString();
                utsec_ans2.Text = dr[7].ToString();


            }

            con.Close();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if ((args.Value.Length > 8) && (args.Value.Length < 20))
                args.IsValid = true;
            else
                args.IsValid = false;
        }

    }
}