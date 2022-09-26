using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class AdminContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Admindetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAdminsDetails.aspx");

        }
        protected void Button_addadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAdmin.aspx");

        }
    }
}