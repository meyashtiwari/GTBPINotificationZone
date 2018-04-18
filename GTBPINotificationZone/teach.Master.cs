using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class teach : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void home1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("teachhome.aspx");
        }
        protected void post1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("teachpost.aspx");
        }
        protected void notify2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("teachnotify.aspx");
        }
        protected void profile1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("teachprofile.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}