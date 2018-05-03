using System;
using System.Data.SqlClient;

namespace GTBPINotificationZone
{
    public partial class adminforgotpassword2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=Yes");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["admins"] != "1")
            {
                Response.Redirect("adminlogin.aspx");
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = Session["admin1"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("update admin set password='" + anfpassword.Text +"' where smart_card_id='" + s + "'", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("adminlogin.aspx");
        }
       
    }
}