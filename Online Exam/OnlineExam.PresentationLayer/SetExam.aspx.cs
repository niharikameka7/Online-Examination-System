using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using OnlineExam.BusinessLayer;
using OnlineExam.Entities;
using System.Reflection;
using System.Xml.Linq;

namespace OnlineExam.PresentationLayer
{
    public partial class SetExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void clear_Click(object sender, EventArgs e)
        {
            qn_id.Text = "";
            qn.Text = "";
            qn_o1.Text = "";
            qn_o2.Text = "";
            qn_o3.Text = "";
            qn_o4.Text = "";
            rdo_correctanswer.SelectedIndex = -1;
        }

        
        protected void add_qn_Click(object sender, EventArgs e)
        {
         
            try
            {
                Question question = new Question();
                question.Question_no = int.Parse(qn_id.Text);
                question.Questions = qn.Text;
                question.Option1 = qn_o1.Text;
                question.Option2 = qn_o2.Text;
                question.Option3 = qn_o3.Text;
                question.Option4= qn_o4.Text;
                question.Qn_Answer= rdo_correctanswer.SelectedValue;
                QuestionService questionService = new QuestionService();
                questionService.Add_Question(question);
                Result.Text = "Question Added successfully!!";
                
                }

               catch (Exception)
            {
                Result.Text = "Error!!Please enter valid inputs";

            }
           
        }

       
    }
}

