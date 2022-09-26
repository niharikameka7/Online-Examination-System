using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class ExamInstructions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                InstructionDisplay();

            }
        }
        string s = ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString;

        public void InstructionDisplay()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                SqlCommand cmd = new SqlCommand($"select * from Instructions", con);
                try
                {
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        gridview_instructions.DataSource = rd;
                        gridview_instructions.DataBind();
                    }
                    else
                    {
                        Label_error.Visible = true;
                        Label_error.Text = "Sorry! There are no instructions in this exam";
                    }
                }
                catch (Exception ex)
                {
                    Label_error.Visible = true;
                    Label_error.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
                }
            }
        }

        protected void LinkButton_startExam_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                SqlCommand cmd = new SqlCommand($"select * from ExamResults where Student_ID={Session["Student_ID"]}", con);
                try
                {
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        Label_attempted.Visible = true;
                        Label_attempted.Text = "You have already attempted the test";
 
                    }
                    else
                    {
                        Response.Redirect("TakingExam.aspx");

                    }
                }
                catch (Exception)
                {
                    Label_error.Visible = true;
                    Label_error.Text = "  Something went wrong. Please try after sometime later";
                
            }
        }
        }

       
    }
}