using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class ExamSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_ExamResult_Click(object sender, EventArgs e)
        {
          
           Label_result.Text="Your Exam Score: "+Session["Student_Result"].ToString();
        }
    }
}