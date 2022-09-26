using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class ExamDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_setexam_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetExam.aspx");
        }

        protected void Button_QnDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuestionsDetails.aspx");


        }

        protected void Button_Examins_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddExamInstructions.aspx");

        }

        protected void Button_Examinsdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewInstructionsDetails.aspx");

        }

        protected void Button_settime_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetTime.aspx");

        }
    }
}