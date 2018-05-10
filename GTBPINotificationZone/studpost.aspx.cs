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
    public partial class studpost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");

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
                    spcourse.DataSource = dt;
                    spcourse.DataBind();
                    spcourse.DataTextField = "name";
                    spcourse.DataBind();
                    spcourse.DataValueField = "--select--";
                    con.Close();
                }
                con.Open();

                int yr = 0;
                string s = spcourse.SelectedItem.Text;
                SqlCommand cmd1 = new SqlCommand("select year from course where name='" + s + "'", con);
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    yr = Convert.ToInt32(dr[0]);
                }
                con.Close();
               
            }

        }
        
        
        protected void spsubmit_Click(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            con.Open();
            string s = "null";
            string ex;
            try
            {
                if ((spfiles.HasFile) && (spdetails.Text == ""))
                {
                    s = Path.GetFileName(spfiles.FileName);
                    ex = Path.GetExtension(spfiles.FileName).ToLower();
                    if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".docx") || (ex == ".pptx"))
                    {
                        spfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);

                        SqlCommand cmd = new SqlCommand("insert into post values('" + sptopic.Text + "','" + spcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + spdetails.Text + "','" + s + "','" + spsub.Text + "','" + spyear.Text + "')", con);
                        cmd.ExecuteNonQuery();

                    }
                    else
                    {
                        Label1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                    }
                }
                if ((spfiles.HasFile) && (spdetails.Text != ""))
                {
                    s = Path.GetFileName(spfiles.FileName);
                    ex = Path.GetExtension(spfiles.FileName).ToLower();
                    if ((ex == ".jpg") || (ex == ".png") || (ex == ".jpeg") || (ex == ".docx") || (ex == ".pptx"))
                    {
                        spfiles.SaveAs(Server.MapPath("~\\uploads\\") + s);
                        SqlCommand cmd = new SqlCommand("insert into post values('" + sptopic.Text + "','" + spcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + spdetails.Text + "','" + s + "','" + spsub.Text + "','" + spyear.Text + "')", con);
                        cmd.ExecuteNonQuery();

                    }
                    else
                    {
                        Label1.Text = "enter file of type 'docx','png','jpeg','jpg','pptx'";
                    }
                }
                if ((!spfiles.HasFile) && (spdetails.Text != ""))
                {
                    SqlCommand cmd = new SqlCommand("insert into post values('" + sptopic.Text + "','" + spcourse.SelectedItem.Text + "','" + DateTime.Now.ToString() + "','" + id + "','" + spdetails.Text + "','" + s + "','" + spsub.Text + "','" + spyear.Text + "')", con);
                    cmd.ExecuteNonQuery();
                }
                if ((!spfiles.HasFile) && (spdetails.Text == ""))
                {
                    Label1.Text = "you have to enter the post information";
                }
                con.Close();
                spyear.Text = "";
                spsub.Text = "";
                sptopic.Text = "";
                spdetails.Text = "";
            }
            catch (Exception ec) { }
        }
    }
}