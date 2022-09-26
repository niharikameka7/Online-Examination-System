using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student_name"] != null)
            {
                Label_name.Text = Session["Student_name"].ToString();
                Label_name.Text += ",";
            }
        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx",true);

        }

        protected void LinkButton_takeExam_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExamInstructions.aspx");

        }

        protected void Button_ChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentChangePassword.aspx");

        }
    }
}