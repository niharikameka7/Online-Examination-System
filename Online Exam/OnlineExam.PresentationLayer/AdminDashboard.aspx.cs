using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
        
 
}