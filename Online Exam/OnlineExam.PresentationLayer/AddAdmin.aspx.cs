using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using OnlineExam.BusinessLayer;
using OnlineExam.Entities;
namespace OnlineExam.PresentationLayer
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            try
            {
              Admin admin = new Admin();
                admin.Admin_Name= name.Text;
               admin.Gender =RadioButtonList_Gender.Text;
                admin.Admin_ID = int.Parse(txt_adminid.Text);
               admin.DateOfBirth = txt_date.Text;
                admin.Mobile = mobile.Text;
                admin.Admin_Email=txt_email.Text;
                admin.Admin_Password = txt_newpw.Text;
                AdminService adminService = new AdminService();
                adminService.Add_Admin(admin);
                   txt_adminid.Text = "";
                     txt_newpw.Text = "";
                     txt_cnewpw.Text = "";
                     txt_email.Text = "";
                      RadioButtonList_Gender.SelectedIndex=-1;
                     name.Text = "";
                     txt_date.Text = "";
                     mobile.Text = "";
               status.Text= "Admin Added successfully!!";


            }
            catch (Exception)
            {
               status.Text="Error!!Please enter valid inputs";

            }
        }
    }
}