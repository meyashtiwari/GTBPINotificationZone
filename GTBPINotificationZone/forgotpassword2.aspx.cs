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
    public partial class forgotpassword2 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s3"] != "1")
            {
                Response.Redirect("forgotpassword1.aspx");

            }


        }



        protected void Button1_Click(object sender, EventArgs e)
        {





            string a = Session["s2"].ToString();
            string x = Session["login_as"].ToString();



            if (x == "student")
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Update student set password='" + nfpassword.Text + "' where smart_card_id='" + a + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();



                con.Open();
                SqlCommand cmds = new SqlCommand("Update login set password='" + nfpassword.Text + "' where smart_card_id='" + a + "'", con);
                cmds.ExecuteNonQuery();
                con.Close();


                Response.Redirect("login.aspx");
            }
            if (x == "faculty")
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("Update faculty set password='" + nfpassword.Text + "' where smart_card_id='" + a + "'", con);
                cmd.ExecuteNonQuery();
                //con.Close();


                //con.Open();
                SqlCommand cmds = new SqlCommand("Update login set password='" + nfpassword.Text + "' where smart_card_id='" + a + "'", con);
                cmds.ExecuteNonQuery();
                con.Close();

                Response.Redirect("login.aspx");
            }



        }

       

        protected void nfpassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void f2CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if ((args.Value.Length >= 8) && (args.Value.Length <= 20))
                args.IsValid = true;
            else
                args.IsValid = false;
        }


    }
}