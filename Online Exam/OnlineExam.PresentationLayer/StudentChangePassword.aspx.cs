using OnlineExam.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class StudentChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_changepw_Click(object sender, EventArgs e)
        {
            try
            {
                bool result;
                StudentService studentService = new StudentService();
                result = studentService.Change_StudentPassword(int.Parse(txt_studentid.Text), txt_currentpw.Text, txt_newpw.Text);
                if (result == true)
                {
                    txt_currentpw.Text = "";
                    txt_newpw.Text = "";
                    txt_cnewpw.Text = "";
                    txt_studentid.Text = "";
                    Result.Text="Password Changed Successfully!!";
                }
                else
                {
                    txt_currentpw.Text = "";
                    txt_newpw.Text = "";
                    txt_cnewpw.Text = "";
                    txt_studentid.Text = "";
                    Result.Text="Error!!Please check details again";

                }
            }
            catch (Exception)
            {
               Result.Text="Error!!Cannot Change Password due to invalid details";

            }

        }
    }
}