using System;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.WebControls;
using System.Net;

namespace GTBPINotificationZone
{
    public partial class teachhome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI; MultipleActiveResultSets = true");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] != "1")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                con.Open();
                string s1, s3, s4, id1;
                string[] d_time;
                string s2 = "0";
                string[] ext;

                SqlCommand cmd1, cmd2;
                SqlDataReader dr1, dr2;

                SqlCommand cmd = new SqlCommand("select * from post order by post_id DESC ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    id1 = dr[0].ToString();//post id
                    s1 = dr[4].ToString();//smart card id of the person posted the post
                   


                    //outer panel of home page.
                    Panel outer = new Panel();
                    outer.BorderStyle = BorderStyle.Groove;
                    outer.Style["border-radius"] = "5px";
                    outer.BorderColor = Color.Black;
                    outer.Style["width"] = "600px";

                    outer.BackColor = Color.WhiteSmoke;
                    Panel1.Controls.Add(new LiteralControl(" &nbsp")); 
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp")); 
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                    Panel1.Controls.Add(outer);

                    //inner subpanel1
                    Panel inner1 = new Panel();
                    inner1.BackColor = Color.WhiteSmoke;


                    //inner subpanel2
                    Panel inner2 = new Panel();
                    inner2.BackColor = Color.WhiteSmoke;



                    //controls to be uploaded.

                    Label name = new Label();    //label for name of the user who posted the info.

                    Label course = new Label();  //course for which the info is intended.

                    Label sem = new Label();     //semester of the course

                    Label sub = new Label();     //subject of which info is posted

                    Label date1 = new Label();  //date at which info is posted

                    Label time1 = new Label();  //time at which info is posted

                    Label content = new Label();    //content of the post


                    //fatching name of the user who posted the info

                    name.Font.Size = 15;
                    name.Font.Bold = true;
                    name.Font.Name = "Calibri";
                    name.Style["TextAlign"] = "top_left";

                    cmd1 = new SqlCommand("select login_as from login where smart_card_id='" + s1 + "'", con);
                    dr1 = cmd1.ExecuteReader();
                    while (dr1.Read())
                    {

                        s2 = dr1[0].ToString();

                    }
                    if (s2 == "0")
                    {
                        name.Text = "admin";

                    }


                    if (s2 == "student")
                    {
                        cmd2 = new SqlCommand("select name from student where smart_card_id='" + s1 + "'", con);
                        dr2 = cmd2.ExecuteReader();
                        while (dr2.Read())
                        {
                            name.Text = dr2[0].ToString();

                        }

                    }
                    if (s2 == "faculty")
                    {
                        cmd2 = new SqlCommand("select name from faculty where smart_card_id='" + s1 + "'", con);
                        dr2 = cmd2.ExecuteReader();
                        while (dr2.Read())
                        {
                            name.Text = dr2[0].ToString();

                        }

                    }
                    outer.Controls.Add(name);

                    outer.Controls.Add(inner1);
                    outer.Controls.Add(inner2);
                    //fatching course,semester,subject,date,topic of the post.

                    course.Font.Size = 13;
                    course.Font.Name = "Calibri";
                    course.Text = dr[2].ToString();
                    course.Style["color"] = "#999999";

                    sem.Font.Size = 13;
                    sem.Style["color"] = "#999999";
                    sem.Font.Name = "Calibri";
                    if (dr[8].ToString() == "1")
                        sem.Text = ", 1st Year";
                    else if (dr[8].ToString() == "2")
                        sem.Text = ", 2nd Year";
                    else
                        sem.Text = ", 3rd Year";

                    sub.Font.Size = 13;
                    sub.Font.Name = "Calibri";
                    sub.Text = dr[7].ToString();
                    sub.Style["color"] = "#999999";


                    d_time = dr[3].ToString().Split(' ');
                    date1.Font.Size = 13;
                    date1.Font.Name = "Calibri";
                    date1.Text = d_time[0];
                    date1.Style["color"] = "#999999";


                    time1.Font.Size = 13;
                    time1.Font.Name = "Calibri";
                    time1.Text = d_time[1];
                    time1.Style["color"] = "#999999";

                    inner1.Controls.Add(course);
                    inner1.Controls.Add(sem);
                    inner1.Controls.Add(new LiteralControl("<br/>"));
                    inner1.Controls.Add(sub);
                    inner1.Controls.Add(new LiteralControl("<br/>"));
                    inner1.Controls.Add(date1);
                    inner1.Controls.Add(new LiteralControl("<br/>"));
                    inner1.Controls.Add(time1);
                    inner1.Controls.Add(new LiteralControl("<br/>"));
                    inner1.Controls.Add(new LiteralControl("<br/>"));

                    //content and uploads of post.
                    s3 = dr[5].ToString();
                    s4 = dr[6].ToString();
                    if ((s3 == "") && (s4 != "null")) //when file is uploaded
                    {
                        ext = s4.Split('.');
                        if ((ext[1] == "jpg") || (ext[1] == "jpeg") || (ext[1] == "png"))  //download button for images
                        {
                            System.Web.UI.WebControls.Image uploads = new System.Web.UI.WebControls.Image();    //images if any
                            uploads.Style["width"] = "275px";
                            uploads.Style["height"] = "183px";

                            uploads.ImageUrl = "~\\uploads\\" + s4;
                            inner2.Controls.Add(uploads);
                            inner2.Controls.Add(new LiteralControl("<br/>"));
                            //download button
                            Button download1 = new Button();
                            download1.Text = "Download Image";
                            download1.ID = id1 + " c";
                            download1.Font.Size = 14;
                            download1.BorderStyle = BorderStyle.Groove;
                            download1.Style["width"] = "150px";
                            download1.Style["height"] = "36px";
                            download1.Click += new EventHandler(this.download1_Click);
                            inner2.Controls.Add(download1);
                            inner2.Controls.Add(new LiteralControl("<br/>"));
                        }
                        else
                            if ((ext[1] == "pdf") || (ext[1] == "docx") || (ext[1] == "pptx"))   //download button for text files    
                            {
                                //download button
                                inner2.Controls.Add(new LiteralControl("<br/>"));
                                LinkButton download = new LinkButton();
                                download.Font.Size = 14;
                                download.Text ="Download from here -> "+ dr[1].ToString();
                                download.ID = id1 + " b";
                                download.Click += new EventHandler(this.download_Click);
                                inner2.Controls.Add(download);
                                inner2.Controls.Add(new LiteralControl("<br/>"));
                            }
                    }
                    else
                        if ((s3 != "") && (s4 != "null"))// file and content are uploaded
                        {
                            
                            content.Text = s3;
                            content.Font.Size = 13;
                            content.Font.Bold = true;
                            content.Style["color"] = "Black";
                            content.Style["width"] = "520px";
                            content.Style["height"] = "180px";
                            inner2.Controls.Add(content);
                            inner2.Controls.Add(new LiteralControl("<br/>"));
                            ext = s4.Split('.');
                            if ((ext[1] == "jpg") || (ext[1] == "jpeg") || (ext[1] == "png"))  //download button for images
                            {
                                System.Web.UI.WebControls.Image uploads = new System.Web.UI.WebControls.Image();    //images if any
                                uploads.Style["width"] = "275px";
                                uploads.Style["height"] = "183px";

                                uploads.ImageUrl = "~\\uploads\\" + s4;
                                inner2.Controls.Add(uploads);
                                inner2.Controls.Add(new LiteralControl("<br/>"));
                                //download button
                                Button download1 = new Button();
                                download1.Font.Size = 14;
                                download1.Text = "Download Image";
                                download1.ID = id1 + " c";
                                download1.BorderStyle = BorderStyle.Groove;
                                download1.Style["width"] = "150px";
                                download1.Style["height"] = "36px";
                                download1.Click += new EventHandler(this.download1_Click);
                                
                                inner2.Controls.Add(download1);
                                inner2.Controls.Add(new LiteralControl("<br/>"));
                            }
                            else
                                if ((ext[1] == "pdf") || (ext[1] == "docx") || (ext[1] == "pptx"))   //download button for text files    
                                {
                                    //download button
                                    inner2.Controls.Add(new LiteralControl("<br/>"));
                                    LinkButton download = new LinkButton();
                                    download.Text = "Download from here -> "+dr[1].ToString();
                                    download.ID = id1 + " b";
                                    download.Font.Size = 14;
                                    download.Style["width"] = "28px";
                                    download.Style["height"] = "15px";
                                    download.Click += new EventHandler(this.download_Click);
                                    inner2.Controls.Add(download);
                                    inner2.Controls.Add(new LiteralControl("<br/>"));
                                }
                        }
                        else
                        {
                            content.Text = s3;              //when only text is there
                            content.Font.Size = 13;
                            content.Font.Bold = true;
                            content.Style["color"] = "Black";
                            content.Style["width"] = "520px";
                            content.Style["height"] = "180px";
                            inner2.Controls.Add(content);
                        }

                    if (Session["id"].ToString() == dr[4].ToString())
                    {
                        //button for delete post
                        Button del = new Button();
                        del.ID = id1;
                        del.Click += new EventHandler(this.test1);
                        del.Style["width"] = "76px";
                        del.Style["height"] = "36px";
                        del.Text = "delete";
                        del.Font.Bold = true;
                        del.BorderColor = Color.Black;
                        del.Font.Size = 16;
                        del.BorderStyle = BorderStyle.Groove;


                        //button for query on post
                        Button query = new Button();
                        query.Style["width"] = "76px";
                        query.Style["height"] = "36px";
                        query.Text = "query";
                        query.ID = id1 + " a";
                        query.Font.Bold = true;
                        query.BorderColor = Color.Black;
                        query.Font.Size = 16;
                        query.Click += new EventHandler(this.query_Click);
                        query.BorderStyle = BorderStyle.Groove;




                        Panel1.Controls.Add(new LiteralControl("<br/>"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(del);
                        Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(query);
                        Panel1.Controls.Add(new LiteralControl("<br/>")); Panel1.Controls.Add(new LiteralControl("<br/>"));
                    }
                    else
                    {
                        //button for query on post
                        Button query = new Button();
                        query.Style["width"] = "76px";
                        query.Style["height"] = "36px";
                        query.Text = "query";
                        query.Font.Bold = true;
                        query.BorderColor = Color.Black;
                        query.Font.Size = 16;
                        query.ID = id1 + " a";
                        query.Click += new EventHandler(this.query_Click);


                        query.BorderStyle = BorderStyle.Groove;

                        Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp")); Panel1.Controls.Add(new LiteralControl(" &nbsp"));
                        Panel1.Controls.Add(query);
                        Panel1.Controls.Add(new LiteralControl("<br/>")); Panel1.Controls.Add(new LiteralControl("<br/>"));
                    }
                }
                con.Close();
            }
        }



        protected void test1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string s = btn.ID;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from post where post_id='" + s + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("teachhome.aspx");
        }


        protected void query_Click(object sender, EventArgs e)
        {
            Button btn1 = (Button)sender;
            string[] s = btn1.ID.Split(' ');
            int pid = Convert.ToInt32(s[0]);
            Session["postid"] = s[0];
            Response.Redirect("queries.aspx");
        }

        protected void download_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            string[] s = lbtn.ID.Split(' ');
            int pid = Convert.ToInt32(s[0]);
            string s1 = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("select post_uploads from post where post_id='" + pid + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                s1 = "~//uploads//" + dr[0].ToString();
            }
            con.Close();


            try
            {
                string strURL = s1;
                WebClient req = new WebClient();
                HttpResponse response = HttpContext.Current.Response;
                response.Clear();
                response.ClearContent();
                response.ClearHeaders();
                response.Buffer = true;
                response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(strURL) + "\"");
                byte[] data = req.DownloadData(Server.MapPath(strURL));
                response.BinaryWrite(data);
                response.End();
            }
            catch (Exception ex)
            {
            }

        }
        protected void download1_Click(object sender, EventArgs e)
        {

            Button lbtn = (Button)sender;
            string[] s = lbtn.ID.Split(' ');
            int pid = Convert.ToInt32(s[0]);
            string s1 = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("select post_uploads from post where post_id='" + pid + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                s1 = "~//uploads//" + dr[0].ToString();
            }
            con.Close();


            try
            {
                string strURL = s1;
                WebClient req = new WebClient();
                HttpResponse response = HttpContext.Current.Response;
                response.Clear();
                response.ClearContent();
                response.ClearHeaders();
                response.Buffer = true;
                response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(strURL) + "\"");
                byte[] data = req.DownloadData(Server.MapPath(strURL));
                response.BinaryWrite(data);
                response.End();
            }
            catch (Exception ex)
            {
            }
        }
        
    }

}