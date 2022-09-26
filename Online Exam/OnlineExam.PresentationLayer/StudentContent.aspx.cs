using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class StudentContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_StudentExamdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStudentExamDetails.aspx");

        }
        protected void Button_studentdetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentDetails.aspx");

        }
        protected void Button_addstudents_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudents.aspx");
        }



    }    }