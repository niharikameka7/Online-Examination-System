using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExam.PresentationLayer
{
    public partial class TakingExam : System.Web.UI.Page
    {
        string t = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["CountdownTimer"] == null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
                SqlCommand cmd = null;
                cmd = new SqlCommand($"select * from Time", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
               while(dr.Read()) { t = dr["ExamTime"].ToString(); }
                Session["CountdownTimer"] = new CountDownTimer(TimeSpan.Parse(t));
                (Session["CountdownTimer"] as CountDownTimer).Start();
            }
            if (Session["Student_ID"] == null)
            {
                Response.Redirect("StudentLogin.aspx");

            }

            if (!IsPostBack)
            {

                QuestionDisplay();

            }
            
        }
        string s = ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString;

        public void QuestionDisplay()
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                SqlCommand cmd = new SqlCommand($"select * from Question", con);
                try
                {
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        gridview_examquestion.DataSource = rd;
                        gridview_examquestion.DataBind();
                    }
                    else
                    {
                        Label_error.Visible = true;
                        Label_error.Text = "Sorry! There are no questions in this exam";
                    }
                }
                catch (Exception ex)
                {
                    Label_error.Visible = true;
                    Label_error.Text = "Something went wrong. Please try after sometime later</br> Contact you developer for this problem" + ex.Message;
                }
            }
        }
        int select_number = 0;
      public int correct_number = 0;
      int wrong_number = 0;
        int count = 0;
        protected void LinkButton_finishExam_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gridview_examquestion.Rows)
            {
                Label li = row.FindControl("lblid") as Label;
                RadioButton r1 = row.FindControl("option_one") as RadioButton;
                RadioButton r2 = row.FindControl("option_two") as RadioButton;
                RadioButton r3 = row.FindControl("option_three") as RadioButton;
                RadioButton r4 = row.FindControl("option_four") as RadioButton;

                if (r1.Checked == true)
                {
                    select_number = 1;
                }
                else if (r2.Checked == true)
                {
                    select_number = 2;
                }
                else if (r3.Checked == true)
                {
                    select_number = 3;
                }
                else if (r4.Checked == true)
                {
                    select_number = 4;
                }

                CheckAnwer(li.Text);
            }
            SaveResult(correct_number);


        }
        public void CheckAnwer(string qid)
        {
            using (SqlConnection con = new SqlConnection(s))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "select * from Question where Question_no = @questionid" + count;
                cmd.Parameters.AddWithValue("@questionid" + count, qid);
                cmd.Connection = con;

                try
                {
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        if (select_number == Convert.ToInt32(rd["Qn_Answer"]))
                        {

                            correct_number = correct_number + 1;
                            break;
                        }
                        else
                        {
                            wrong_number = wrong_number + 1;
                            break;
                        }
                    }
                    count++;

                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
        public void SaveResult(int score)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
            SqlCommand cmd = null;
            try
            {
                cmd = new SqlCommand($"insert into ExamResults values({Session["Student_ID"]},'{Session["Student_name"].ToString()}','{score.ToString()}','{DateTime.Now.ToString("MM/dd/yyyy")}')", con);
                con.Open();
                cmd.ExecuteNonQuery();
              Session["Student_Result"] = correct_number;
                Response.Redirect("ExamSubmit.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.StackTrace);
            }
        }
        protected void ExamTimer_Tick(object sender, EventArgs e)
        {
            if (Session["CountdownTimer"] != null)
            {
                Label_timer.Text = "Remaining Time Left : ";
                Label_timer.Text =Label_timer.Text+ (Session["CountdownTimer"] as CountDownTimer).TimeLeft.ToString();
            }
        }
        public class CountDownTimer
        {
            public TimeSpan TimeLeft;
            System.Threading.Thread thread;
            public CountDownTimer(TimeSpan original)
            {
                this.TimeLeft = original;
            }
            public void Start()
            {
                thread = new System.Threading.Thread(() =>
                {
                    while (true)
                    {
                        System.Threading.Thread.Sleep(1000);
                        TimeLeft = TimeLeft.Subtract(TimeSpan.Parse("00:00:01"));
                    }
                });
                thread.Start();
            }
        }
       

    }

    }
