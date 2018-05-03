using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GTBPINotificationZone
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(Request.QueryString["n"]);
            if (n != 1)
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["redirect"] = "1";
            Response.Redirect("registerstud.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["redirect"] = "1";
            Response.Redirect("registerteach.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}