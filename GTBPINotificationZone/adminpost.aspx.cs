using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

namespace GTBPINotificationZone
{
    public partial class adminpost : System.Web.UI.Page
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

                    con.Open();

                    string com = "select name from course ";
                    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    apcourse.DataSource = dt;
                    apcourse.DataBind();
                    apcourse.DataTextField = "name";
                    apcourse.DataBind();
                    con.Close();
                }
               
            }
        }
         
        protected void apsubmit_Click(object sender, EventArgs e)
        {
            string id = Session["admin1"].ToString();
            con.Open();
            string s = "null";
            string ex;
            try
            {

                if ((apfiles.HasFile) && (apdetails.Text == ""))
                {
                    s = Path.GetFileName(apfiles.FileName);
                    ex = Path.GetExtension(apfiles.FileName).ToLower();
                    if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".docx") || (ex == ".pptx"))
                    {
                        apfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);
                        SqlCommand cmd = new SqlCommand("insert into post values('" + aptopic.Text + "','" + apcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + apdetails.Text + "','" + s + "','" + apsub.Text + "','" + apyear.Text + "')", con);
                        cmd.ExecuteNonQuery();

                    }
                    else
                    {
                        aLabel1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                    }
                }
                if ((apfiles.HasFile) && (apdetails.Text != ""))
                {
                    s = Path.GetFileName(apfiles.FileName);
                    ex = Path.GetExtension(apfiles.FileName).ToLower();
                    if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".docx") || (ex == ".pptx"))
                    {
                        apfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);
                        SqlCommand cmd = new SqlCommand("insert into post values('" + aptopic.Text + "','" + apcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + apdetails.Text + "','" + s + "','" + apsub.Text + "','" + apyear.Text + "')", con);
                        cmd.ExecuteNonQuery();

                    }
                    else
                    {
                        aLabel1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                    }
                }
                if ((!apfiles.HasFile) && (apdetails.Text != ""))
                {
                    SqlCommand cmd = new SqlCommand("insert into post values('" + aptopic.Text + "','" + apcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + apdetails.Text + "','" + s + "','" + apsub.Text + "','" + apyear.Text + "')", con);
                    cmd.ExecuteNonQuery();
                }
                if ((!apfiles.HasFile) && (apdetails.Text == ""))
                {
                    aLabel1.Text = "you have to enter the post information";
                }
                con.Close();
                apyear.Text = "";
                apdetails.Text = "";
                apsub.Text = "";
                aptopic.Text = "";
            }
            catch (Exception ec) { }
        }

        protected void aptopic_TextChanged(object sender, EventArgs e)
        {

        }
    }
}