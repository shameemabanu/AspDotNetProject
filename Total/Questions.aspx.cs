using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using System.Collections;

namespace LearnCentre
{
   
    public partial class Questions : System.Web.UI.Page
    {
        Answer a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userDetails"] == null)
            {
                Response.RedirectToRoute("RegisterationPageRoute");
            }
            UserDetails user = new UserDetails();
            user = (UserDetails)Session["userDetails"];
            user.quizID = Int32.Parse(RouteData.Values["QuizID"].ToString());
            Session["userDetails"] = user;
            DetailsView1.DataBind();
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            DataRowView dr = (DataRowView)DetailsView1.DataItem;
            a = new Answer();
            a.QuestionID = dr["QuestionOrder"].ToString();
            a.CorrectAnswer = dr["CorrectAnswer"].ToString();
            a.UserAnswer = DropDownList1.SelectedValue.ToString();

            ArrayList al = new ArrayList();
            al = (ArrayList)Session["AnswerList"];
            al.Add(a);

            Session.Add("AnswerList", al);

            if (DetailsView1.PageIndex == DetailsView1.PageCount - 1)
            {
                Response.RedirectToRoute("ResultPageRoute");
            }
            else
            {
                DetailsView1.PageIndex++;
            }

            if (DetailsView1.PageIndex == DetailsView1.PageCount - 1)
            {
                Next.Text = "Finish";
            }
            DropDownList1.SelectedIndex = 0;
        }
    }
}