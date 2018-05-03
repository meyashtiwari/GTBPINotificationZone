using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace GTBPINotificationZone
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS; AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security = True ; User Instance = True; trusted_Connection = yes");
        
        protected void Page_Load(object sender, EventArgs e)
        {
             int n = Convert.ToInt32(Request.QueryString["n"]);
                if (n != 1)
                {
                    Response.Redirect("login.aspx");
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
               
                
                    Session["s1"] = "1";

                    con.Open();
                    SqlCommand cmd = new SqlCommand("select count(*) from login where smart_card_id='" + fsmartcard_id.Text + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    string s = "";

                    while (dr.Read())
                    {
                        s = dr[0].ToString();//value for s in login table

                    }
                    if (s != "1")
                    {
                        fsmartcard_id.Text = "";
                        Label1.Text = "enter valid smart card id";
                    }

                    else //if id match found
                    {

                        Session["s2"] = fsmartcard_id.Text.ToString();

                        Response.Redirect("forgotpassword1.aspx");
                    }


                    con.Close();
                
            }
            catch (Exception ec)
            { }
       
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}