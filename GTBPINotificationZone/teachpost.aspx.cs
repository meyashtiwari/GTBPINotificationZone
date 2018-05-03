using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace GTBPINotificationZone
{
    public partial class teachpost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;User Instance=True;trusted_connection=Yes");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] != "1")
            {
                Response.Redirect("login.aspx");
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
                    tpcourse.DataSource = dt;
                    tpcourse.DataBind();
                    tpcourse.DataTextField = "name";
                    tpcourse.DataBind();
                    tpcourse.DataValueField = "--select--";
                    con.Close();
                }
                con.Open();

                int yr = 0;
                string s = tpcourse.SelectedItem.Text;
                SqlCommand cmd1 = new SqlCommand("select year from course where name='" + s + "'", con);
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    yr = Convert.ToInt32(dr[0]);
                }
                con.Close();
               
            }
        }
       

        protected void tpsubmit_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            con.Open();
            string s = "null";
            string ex;
            try{
           
            if ((tpfiles.HasFile) && (tpdetails.Text == ""))
            {
                s = Path.GetFileName(tpfiles.FileName);
                ex = Path.GetExtension(tpfiles.FileName).ToLower();
                if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".pdf") || (ex == ".docx") || (ex == ".pptx"))
                {
                    tpfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);
                    
                    SqlCommand cmd = new SqlCommand("insert into post values('" + tptopic.Text + "','" + tpcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + tpdetails.Text + "','" + s + "','" + tpsub.Text + "','" + tpyear.Text + "')", con);
                    cmd.ExecuteNonQuery();

                }
                else
                {
                    Label1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                }
            }
            if ((tpfiles.HasFile) && (tpdetails.Text != ""))
            {
                s = Path.GetFileName(tpfiles.FileName);
                ex = Path.GetExtension(tpfiles.FileName).ToLower();
                if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".docx") || (ex == ".pptx"))
                {
                    tpfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);
                    SqlCommand cmd = new SqlCommand("insert into post values('" + tptopic.Text + "','" + tpcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + tpdetails.Text + "','" + s + "','" + tpsub.Text + "','" + tpyear.Text + "')", con);
                    cmd.ExecuteNonQuery();

                }
                else
                {
                    Label1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                }
            }
            if ((!tpfiles.HasFile) && (tpdetails.Text != ""))
            {
                SqlCommand cmd = new SqlCommand("insert into post values('" + tptopic.Text + "','" + tpcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + tpdetails.Text + "','" + s + "','" + tpsub.Text + "','" + tpyear.Text + "')", con);
                cmd.ExecuteNonQuery();
            }
            if ((!tpfiles.HasFile) && (tpdetails.Text == ""))
            {
                Label1.Text = "you have to enter the post information";
            }
            con.Close();
            tpyear.Text = "";
            tpsub.Text = "";
            tptopic.Text = "";
            tpdetails.Text = "";
        }
        catch (Exception ec) { }
        }
    } 
}