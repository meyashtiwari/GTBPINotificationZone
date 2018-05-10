using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace GTBPINotificationZone
{
    public partial class teachnotify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] != "1")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");
                con.Open();
                SqlCommand cmd = new SqlCommand("select top 12 post_id,post_topic from post order by post_id desc", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    LinkButton linkbtn = new LinkButton();
                    linkbtn.Font.Bold = true;
                    linkbtn.Font.Size = 15;
                    linkbtn.BackColor = Color.Blue;
                    linkbtn.ForeColor = System.Drawing.Color.White;
                    linkbtn.Text = dr[1].ToString();
                    linkbtn.ID = dr[0].ToString();
                    linkbtn.Click += new EventHandler(linkbtn_Click);
                    Panel1.Controls.Add(new LiteralControl("&nbsp")); Panel1.Controls.Add(new LiteralControl("&nbsp")); Panel1.Controls.Add(new LiteralControl("&nbsp")); Panel1.Controls.Add(new LiteralControl("&nbsp")); Panel1.Controls.Add(new LiteralControl("&nbsp"));
                    Panel1.Controls.Add(linkbtn);
                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                    Panel1.Controls.Add(new LiteralControl("<br/>"));
                }
            }
        

        }

        protected void linkbtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string s = btn.ID;
            Session["postid1"] = s;
            Response.Redirect("notify.aspx");
        }

    }

 }
