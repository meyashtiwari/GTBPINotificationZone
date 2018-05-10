using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace GTBPINotificationZone
{
    public partial class studprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s1"] == "0")
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    ussid.Text = Session["id"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from student where smart_card_id='" + ussid.Text + "'", con);
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        usname.Text = dr[1].ToString();
                        uscourse.Text = dr[2].ToString();
                        usyear.Text = dr[3].ToString();
                        uspassword.Text = dr[4].ToString();
                        ussec_ques1.Text = dr[5].ToString();
                        ussec_ans1.Text = dr[6].ToString();
                        ussec_ques2.Text = dr[7].ToString();
                        ussec_ans2.Text = dr[8].ToString();

                    }
                    con.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set smart_card_id='" + ussid.Text + "' , name='" + usname.Text + "',course='" + uscourse.Text + "',year='" + usyear.Text + "',password='" + uspassword.Text + "',sec_ques1='" + ussec_ques1.Text + "',sec_ans1='" + ussec_ans1.Text + "',sec_ques2='" + ussec_ques2.Text + "',sec_ans2='" + ussec_ans2.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
           
            SqlCommand cmd1 = new SqlCommand("update login set smart_card_id='" + ussid.Text + "',password='" + uspassword.Text + "' where smart_card_id='"+Session["id"].ToString()+"'", con);
            cmd1.ExecuteNonQuery();
            
            SqlCommand cmd2 = new SqlCommand("update post set smart_card_id='" + ussid.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd2.ExecuteNonQuery();
           
            SqlCommand cmd3 = new SqlCommand("update query set smart_card_id='" + ussid.Text + "' where smart_card_id='" + Session["id"].ToString() + "'", con);
            cmd3.ExecuteNonQuery();

            SqlCommand cmd4 = new SqlCommand("select *from faculty where smart_card_id='" + ussid.Text + "'", con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ussid.Text = dr[0].ToString();
                usname.Text = dr[1].ToString();
                uscourse.Text = dr[2].ToString();
                usyear.Text = dr[3].ToString();
                uspassword.Text = dr[4].ToString();
                ussec_ques1.Text = dr[5].ToString();
                ussec_ans1.Text = dr[6].ToString();
                ussec_ques2.Text = dr[7].ToString();
                ussec_ans2.Text = dr[8].ToString();

            }

            con.Close();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if ((args.Value.Length > 8) && (args.Value.Length < 20))
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}




        
     
      

        
    
