using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using OnlineExam.Entities;
using OnlineExam.BusinessLayer;
namespace OnlineExam.PresentationLayer
{
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void submit(object sender, EventArgs e)
        {
            try
            {
                 Student student = new Student();
                 student.Student_ID = int.Parse(id.Text);
                student.Student_Name = name.Text;
                student.Student_Email = txt_username.Text;
                student.Student_Password= txt_pw.Text;
                student.Gender = RadioButtonList_Gender.Text;
                student.DateOfBirth=txt_date.Text;
                student.Mobile = mobile.Text;
                StudentService studentService = new StudentService();
                studentService.Add_Student(student);
                txt_username.Text = "";
                name.Text = "";
                txt_pw.Text = "";
                stu_cpw.Text = "";
                id.Text = "";
                txt_date.Text = "";
                RadioButtonList_Gender.SelectedIndex = -1;
                mobile.Text = "";
                status.Text = "Student Added successfully!!";


            }
            catch (Exception)
            {
                status.Text = "Error!!Please enter valid inputs";

            }



        }

        protected void Button_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}