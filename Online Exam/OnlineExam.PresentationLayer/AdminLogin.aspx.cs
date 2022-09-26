using OnlineExam.BusinessLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button_submit_Click(object sender, EventArgs e)
        {
            try {
                int result;
                AdminService adminService = new AdminService();
                result = adminService.AdminExists(int.Parse(txt_adminid.Text), txt_username.Text, txt_pw.Text);
                if (result == 0)
                {
                    Result.Text="Please Enter Valid details!!";
                    txt_adminid.Text = "";
                    txt_username.Text = "";
                    txt_pw.Text = "";
                }
                else
                {
                    Session["Admin_name"] = txt_username.Text;
                    Response.Redirect("AdminDashboard.aspx");
                }
            }
            catch (Exception)
            {
                Result.Text="No Admin!!";

                
            }
            }
    }
}