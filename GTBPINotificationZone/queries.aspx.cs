using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Drawing;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GTBPINotificationZone
{
    public partial class queries : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\bnz.mdf;Integrated Security=True;MultipleActiveResultSets=True;User Instance=True;trusted_connection=yes ");


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int i = 1;

                string s = "0";
                string pid = Session["postid"].ToString();

                con.Open();

                SqlCommand cmd = new SqlCommand("select count(*) from query where post_id='" + pid + "' ", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    s = dr[0].ToString();
                }
                if (s != "0")
                {

                    Label old = new Label();
                    old.Text = "old queries";
                    old.Font.Bold = true;
                    old.ForeColor = System.Drawing.Color.White;
                    old.BackColor = Color.Black;
                    old.Font.Size = 18;
                    old.Font.Name = " Lucida Handwriting ";
                    Panel1.Controls.Add(old);//label old placed on panel

                }

                string a = Session["id"].ToString();
                SqlCommand cmd1 = new SqlCommand("select * from query where post_id='" + pid + "' order by query_id DESC", con);
                SqlDataReader dr1;
                dr1 = cmd1.ExecuteReader();
                while ((dr1.Read()) && (i <= 5))
                {

                    i++;
                    string q_id = "";
                    q_id = dr1[0].ToString();
                    Label name1 = new Label();
                    Label content = new Label();
                    Label date = new Label();


                    name1.Font.Size = 20;
                    name1.Font.Bold = true;
                    name1.ForeColor = System.Drawing.Color.Black;
                    name1.Text = dr1[5].ToString();


                    content.Text = dr1[3].ToString();
                    content.Font.Size = 14;
                    content.Font.Bold = true;
                    content.Style["width"] = "858px";
                    content.ForeColor = System.Drawing.Color.Black;

                    date.Text = dr1[4].ToString();
                    date.ForeColor = System.Drawing.Color.Black;


                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                    Panel1.Controls.Add(name1);
                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                    Panel1.Controls.Add(date);
                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                    Panel1.Controls.Add(content);
                    Panel1.Controls.Add(new LiteralControl("<br/>"));

                   



                    if ((a == dr1[1].ToString()) || (Session["admins"] == "1"))
                    {
                        Button del = new Button();
                        del.ID = q_id;
                        del.Click += new EventHandler(this.delete_query);
                        del.Text = "delete";
                        del.BackColor = Color.Silver;
                        del.ForeColor = System.Drawing.Color.Black;
                        del.Font.Size = 13;
                        Panel1.Controls.Add(del);
                        Panel1.Controls.Add(new LiteralControl("<br/>"));
                    }

                    //query button for admin




                }
                con.Close();

            }
            catch (Exception ec)
            { }
        }        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                con.Open();

                string p = Session["postid"].ToString();
                string s= Session["id"].ToString();
                string b = "";
                SqlCommand cmd2 = new SqlCommand("select login_as from login where smart_card_id ='" + s + "' ", con);
                SqlDataReader dr2;
                dr2 = cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    b = dr2[0].ToString(); // b=student or teacher

                }

                string name = "";

                if (b == "student")
                {


                    SqlCommand cmd3 = new SqlCommand(" select name from student where smart_card_id='" + s + "'", con);
                    SqlDataReader dr3;
                    dr3 = cmd3.ExecuteReader();
                    while (dr3.Read())
                    {
                        name = dr3[0].ToString();
                    }
                    Session["name"] = name;//name of the person is logged in 
                }
                if (b == "faculty")
                {


                    SqlCommand cmd3 = new SqlCommand(" select name from faculty  where smart_card_id='" + s + "'", con);
                    SqlDataReader dr3;
                    dr3 = cmd3.ExecuteReader();
                    while (dr3.Read())
                    {
                        name = dr3[0].ToString();
                    }

                    Session["name"] = name;//name of the person is logged in 

                }

                if (b == "")
                {
                    Session["name"] = "admin";//name of the person is logged in 
                }

                string a = "";
                a = Session["name"].ToString();
                try
                {
                    SqlCommand cmd = new SqlCommand("insert into query values('" + s + "','" + Session["postid"].ToString() + "','" + TextBox1.Text + "','" + DateTime.Now.ToString() + "','" + a + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = "";
                    Response.Redirect("queries.aspx");
                }
                catch (Exception ec) { }
            }
            else 
            {
                Label10.Text = "enter your query";
            }
        }


        protected void delete_query(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string s = btn.ID;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from query where query_id='" + s + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("queries.aspx");
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            con.Open();
            string s = Session["id"].ToString();
            string b = "";
            SqlCommand cmd2 = new SqlCommand("select login_as from login where smart_card_id ='" + s + "' ", con);
            SqlDataReader dr2;
            dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                b = dr2[0].ToString(); // b=student or teacher

            }
            con.Close();
            if (b == "student")
            {

                Response.Redirect("studhome.aspx");

            }
            else
                if (b == "faculty")
                {
                    Response.Redirect("teachhome.aspx");
                }
                else
                    if(b=="")
                {
                    Response.Redirect("adminhome.aspx");
                }
        }
    }
   

}