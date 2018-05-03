using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GTBPINotificationZone
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminnotify.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminpost.aspx");
        }
        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }
        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminprofile.aspx");
        }
        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminupdate.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("adminlogin.aspx");
        }
    }
}