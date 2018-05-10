using System;
using System.Data;
using System.Data.SqlClient;

namespace GTBPINotificationZone
{
    public partial class registerstud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["redirect"] == "1")
            {
                if (!IsPostBack)
                {

                    con.Open();

                    string com = "select name from course ";
                    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    scourse.DataSource = dt;
                    scourse.DataBind();
                    scourse.DataTextField = "name";
                    scourse.DataBind();
                    scourse.DataValueField = "--select--";
                    con.Close();

                    //for security questions

                    ssecurity_ques1.Items.Add("first phone number");
                    ssecurity_ques1.Items.Add("first car");
                    ssecurity_ques1.Items.Add("favourite teacher");
                    ssecurity_ques1.Items.Add("favourite game");
                    ssecurity_ques1.Items.Add("favourite colour");

                    ssecurity_ques2.Items.Add("first phone number");
                    ssecurity_ques2.Items.Add("first car");
                    ssecurity_ques2.Items.Add("favourite teacher");
                    ssecurity_ques2.Items.Add("favourite game");
                    ssecurity_ques2.Items.Add("favourite colour");

                }
            }
            else 
            {
                Response.Redirect("login.aspx");
            }
        }
        
        SqlConnection con = new SqlConnection("server=localhost\\SQLEXPRESS;Database = GTBPINOTIFICATIONDATABASE; Integrated Security=SSPI");


        protected void Button1_Click(object sender, EventArgs e)
        {

         
            string i1= "0";
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select count(*) from student where smart_card_id='" + sid.Text + "'", con);
            SqlDataReader dr;

            dr = cmd1.ExecuteReader();

            while (dr.Read())
            {
                i1 = dr[0].ToString();

            }
            con.Close();
            if (i1!="0") 
            {
                Label20.Text = "please enter valid smart card id and enter your details again";

                sid.Text = "";
                sname.Text = "";
                spassword.Text = "";
                sconfirmpassword.Text = "";
                ssecurity_ques1.Text = "";
                ssecurity_answer.Text = "";
                ssecurity_ques2.Text = "";
                ssecurity_answer0.Text = "";

            }
              
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into student values('" + sid.Text + "','" + sname.Text + "','" + scourse.SelectedItem.Text + "','" + syear.Text + "','" + spassword.Text + "','" + ssecurity_ques1.SelectedItem.Text + "','" + ssecurity_answer.Text + "','" + ssecurity_ques2.SelectedItem.Text + "','" + ssecurity_answer0.Text + "')", con);
                cmd.ExecuteNonQuery();
                string s = "student";
                con.Close();
                con.Open();
                SqlCommand cmd2 = new SqlCommand("insert into login values('" + sid.Text + "','" + spassword.Text + "','" + s + "')", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
                con.Close();
             }
            
        
       }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sid.Text= "" ;
            sname.Text = "" ;
            spassword.Text = "";
            syear.Text = "";
            sconfirmpassword.Text = "";
            
            ssecurity_answer.Text = "";
           
            ssecurity_answer0.Text = "";
        }

        protected void ssecurity_ques2_TextChanged(object sender, EventArgs e)
        {

        }

     

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}