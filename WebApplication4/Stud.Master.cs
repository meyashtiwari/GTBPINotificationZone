using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Stud : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("studhome.aspx");
        }
        protected void post_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("studpost.aspx");
        }
        protected void notify1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("studnotify.aspx");
        }
        protected void profile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("studprofile.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}