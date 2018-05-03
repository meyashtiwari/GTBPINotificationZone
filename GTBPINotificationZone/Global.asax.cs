using System;


namespace GTBPINotificationZone
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["admins"] = "0"; //for admin button redirection
            Session["admin1"] = "0"; //for admin id
            Session["stud1"] = "0";
            Session["teach1"] = "0";
            Session["s1"] = "0";
            Session["s2"] = "0";
            Session["s3"] = "0";
            Session["postid1"] = "0";//
            Session["postid"] = "0";//post id to be transfer on query page
            Session["login_as"] = "0"; // student or faculty
            Session["id"] = "0"; // id of the already logged in person
            Session["name"] = "0";//name of the person logged in
            Session["redirect"] = "0";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}