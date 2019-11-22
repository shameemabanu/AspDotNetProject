using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnCentre
{
    public partial class Result : System.Web.UI.Page
    {
        int cnt = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userDetails"] == null)
            {
                Response.RedirectToRoute("RegisterationPageRoute");
            }
            ArrayList al = (ArrayList)Session["AnswerList"];

            foreach (Answer k in al)
            {
                if (k.Result == "Correct")
                {

                    cnt++;
                }
            }

            UserDetails user = new UserDetails();
            user = (UserDetails)Session["userDetails"];
            user.score = cnt;
            user.enqStatus = "Pending";

            
            //Add your Code here for Requirement 5b

            //If insertion process is successful
            
                //Message.Text = String.Format("Thank you {0} {1}. Your details have been submitted successfully. Please wait for our call.", user.fname, user.lname);
                //Session.Abandon();
            
            //If insertion process fails
                //Page.Title = "Oops!!";
                //Message.Text = "Something strange happened. Please re-register using the registeration page.";
                //Session.Abandon();
            
        }
    }
}