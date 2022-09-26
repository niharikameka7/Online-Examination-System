using OnlineExam.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                int result;
                StudentService studentService = new StudentService();
                result = studentService.StudentExists(int.Parse(txt_studentid.Text), txt_username.Text, txt_pw.Text);
                if (result == 0)
                {
                    Result.Text="Please Enter Valid details!!";
                    txt_studentid.Text = "";
                    txt_username.Text = "";
                    txt_pw.Text = "";
                }
                else
                {
                    Session["Student_name"]=txt_username.Text;
                    Session["Student_ID"] = txt_studentid.Text;
                    Response.Redirect("StudentDashboard.aspx");

                }
            }
            catch (Exception)
            {
               Result.Text="No Student matched!!";


            }
        }
    }
}