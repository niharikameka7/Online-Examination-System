using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class SetTime : System.Web.UI.Page
    { string t="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
                SqlCommand cmd = null;
                cmd = new SqlCommand($"select * from Time", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read()) { t = dr["ExamTime"].ToString(); }
                Label_status.Text = Label_status.Text + t;
            }
        }

        protected void add_time_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
                SqlCommand cmd = null;
                cmd = new SqlCommand($"update Time set ExamTime='{TextBox_timer.Text}'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                TextBox_timer.Text = "";
                Result.Visible = true;
                Result.Text = "Exam Time Updated successfully!!";
            }
            catch (Exception)
            {
                Result.Visible = true;
                Result.Text = "Error!!Please enter valid inputs";

            }
        }

        protected void txt_change(object sender, EventArgs e)
        {
            Label_status.Text = "Current Exam time is: "+Server.HtmlEncode(TextBox_timer.Text);

        }
    }
}