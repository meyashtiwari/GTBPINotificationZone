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
    public partial class registerteach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["redirect"] == "1")
            {
                if (!IsPostBack)
                {
                    //for security questions

                    tsecurity_ques1.Items.Add("first phone number");
                    tsecurity_ques1.Items.Add("first car");
                    tsecurity_ques1.Items.Add("favourite teacher");
                    tsecurity_ques1.Items.Add("favourite game");
                    tsecurity_ques1.Items.Add("favourite colour");

                    tsecurity_ques2.Items.Add("first phone number");
                    tsecurity_ques2.Items.Add("first car");
                    tsecurity_ques2.Items.Add("favourite teacher");
                    tsecurity_ques2.Items.Add("favourite game");
                    tsecurity_ques2.Items.Add("favourite colour");

                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=yes");

        protected void submit_Click(object sender, EventArgs e)
        { 
            string i1= "0";
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select count(*) from faculty where smart_card_id='" + tid.Text + "'", con);
            SqlDataReader dr;

            dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                i1 = dr[0].ToString();

            }
            con.Close();
            if (i1 != "0")
            {
                Label19.Text = "please enter valid smart card id and enter your details again";
                tid.Text = "";
                tname.Text = "";
                tdept.Text = "";
                tpassword.Text = "";
                tconfirmpassword.Text = "";
               
                tsecurity_answer.Text = "";
               
                tsecurity_answer0.Text = "";



            }


            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into faculty values('" + tid.Text + "','" + tname.Text + "','" + tpassword.Text + "','" + tdept.Text + "','" + tsecurity_ques1.Text + "','" + tsecurity_answer.Text + "','" + tsecurity_ques2.Text + "','" + tsecurity_answer0.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                string t = "faculty";
                
                con.Open();
                SqlCommand cmd2 = new SqlCommand("insert into login values('" + tid.Text + "','" + tpassword.Text + "','" + t + "')", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
                con.Close();
               
                
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            tid.Text = "";
            tname.Text = "";
            tdept.Text = "";
            tpassword.Text = "";
            tconfirmpassword.Text = "";
            tsecurity_ques1.Text = "";
            tsecurity_answer.Text = "";
            tsecurity_ques2.Text = "";
            tsecurity_answer0.Text = "";
       
        }

        protected void tpassword_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        
    }
}