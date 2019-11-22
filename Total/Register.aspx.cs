using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnCentre
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //Add your Code here for Requirement 5a

                UserDetails user = new UserDetails();
                //Insert the code here to initialize the members of UserDetails class as per the details entered by the user.
                Session.Add("userDetails", user);

                //Redirect to Test.aspx Web page
                Response.RedirectToRoute("TestPageRoute");
            }
    }
}