using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS; Database = GTBPINotificationSystem; Integrated Security = SSPI");
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["s1"] = "1";
            con.Open();
            SqlCommand cmds = new SqlCommand("select count(*) from login where smart_card_id='" + loginid.Text + "' and password='" + password.Text + "'", con); //for counting number of user with given id nd password
            SqlDataReader drs;
            drs = cmds.ExecuteReader();
            string s = "0";
            while (drs.Read())
            {

                s = drs[0].ToString();// count value

            }

            con.Close();
            if (s != "1") //if not valid user
            {
                Label1.Text = "enter correct smart card id if exiting user otherwise register yourself with the link below";
            }
            else //for valid uder
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from login where smart_card_id='" + loginid.Text + "' and password='" + password.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                string who = "";
                string id = "";
                while (dr.Read())
                {
                    who = dr[2].ToString();//either teacher or student
                    id = dr[0].ToString();

                }
                Session["login_as"] = who;

                con.Close();

                if (who == "student")
                {

                    if (s == "1")
                    {

                        Session["id"] = id;
                        Response.Redirect("studhome.aspx");


                    }
                    else
                    {
                        Label1.Text = "invalid id or password";
                        //Response.Redirect("login.aspx");

                    }
                }

                if (who == "faculty")
                {
                    if (s == "1")
                    {
                        Session["id"] = id;

                        Response.Redirect("teachhome.aspx");
                    }
                    else
                    {
                        Label1.Text = "invalid id or password";
                        //Response.Redirect("login.aspx");
                    }
                }
            }
        }

       
       
        }
    }
