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
    public partial class AdminChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_changepw_Click(object sender, EventArgs e)
        {
            try
            {
                bool result;
                AdminService adminService = new AdminService();
                result=adminService.Change_AdminPassword(int.Parse(txt_adminid.Text),txt_currentpw.Text,txt_newpw.Text);
                if (result == true)
                {
                    txt_currentpw.Text = "";
                    txt_newpw.Text = "";
                    txt_cnewpw.Text = "";
                    txt_adminid.Text = "";
                    Result.Text = "Password Added successfully!!";

                }
                else
                {
                    txt_currentpw.Text = "";
                    txt_newpw.Text = "";
                    txt_cnewpw.Text = "";
                    txt_adminid.Text = "";
                    Result.Text = "Error!!Please check details again";

                }
            }
            catch (Exception)
            {
                Result.Text = "Error!!Cannot change password due to invalid credentials";

            }



        }
    }
}