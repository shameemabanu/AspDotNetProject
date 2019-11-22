    using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnCentre
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userDetails"] == null)
            {
                Response.Redirect("Register.aspx");
            }
            ArrayList al = new ArrayList();
            Session.Add("AnswerList", al);
        }

        protected void StartTest_Click(object sender, EventArgs e)
        {
            
        }
    }
}