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
    public partial class forgotpassword1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS; AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security = True ; User Instance = True; trusted_Connection = yes");
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["s2"].ToString();
            con.Open();
            SqlCommand cmds = new SqlCommand("select * from login where smart_card_id='" + a + "'", con);
            SqlDataReader drs;
            drs = cmds.ExecuteReader();
            string who = "";
            while (drs.Read())
            {
                who = drs[2].ToString();
            }
            Session["login_as"] = who;
            //TextBox1.Text = who;
            con.Close();







            if (Session["s1"] != "1")
            {
                Response.Redirect("forgotpassword.aspx");

            }
            else
            {
                if (who == "student")
                {
                    string s2 = Session["s2"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from student where smart_card_id='" + s2 + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        f1Label1.Text = dr[5].ToString();
                        f1Label2.Text = dr[7].ToString();

                    }

                    con.Close();
                }
                if (who == "faculty")
                {
                    string s2 = Session["s2"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from faculty where smart_card_id='" + s2 + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        f1Label1.Text = dr[4].ToString();
                        f1Label2.Text = dr[6].ToString();

                    }

                    con.Close();
                }
            }


        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            //TextBox1.Text=Session["login_as"].ToString();

            Session["s3"] = "1";
            //TextBox1.Text = Session["login_as"].ToString();
            string x = Session["login_as"].ToString();



            if (x == "student")
            {
                con.Open();
                string s1 = "";
                SqlCommand cmd = new SqlCommand("select count(*) from student where sec_ans1='" + ans1.Text + "' and sec_ans2='" + ans2.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s1 = dr[0].ToString();
                }
                if (s1 != "1")
                {
                    ans1.Text = "";
                    ans2.Text = "";
                    Label1.Text = "enter correct answers";
                }
                else
                {
                    Response.Redirect("forgotpassword2.aspx");
                }
                con.Close();
            }

            else
            {



                if (x == "faculty")
                {
                    con.Open();
                    string s1 = "";
                    SqlCommand cmd = new SqlCommand("select count(*) from faculty where sec_ans1='" + ans1.Text + "' and sec_ans2='" + ans2.Text + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        s1 = dr[0].ToString();
                    }
                    if (s1 != "1")
                    {
                        ans1.Text = "";
                        ans2.Text = "";
                        Label1.Text = "enter correct answers";
                    }
                    else
                    {
                        Response.Redirect("forgotpassword2.aspx");
                    }
                    con.Close();
                }
            }




        }
    }
}