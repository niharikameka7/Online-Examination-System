using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.DataLayer
{
    public class QuestionRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
        SqlCommand command = null;

        public void Add_Question(Question question)
        {
            try
            {
                command = new SqlCommand($"insert into Question values({question.Question_no},'{question.Questions}','{question.Option1}','{question.Option2}','{question.Option3}','{question.Option4}','{question.Qn_Answer}')", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;

            }
            finally
            {
                connection.Close();
            }
        }
        public void Delete_Question(int Question_no)
        {
            try
            {
                command = new SqlCommand($"delete from Question where Question_no={Question_no}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void Update_Question(int Question_no, string Questions, string Option1, string Option2, string Option3, string Option4, string Qn_Answer)
        {
            try
            {
                command = new SqlCommand($"update Question set Question='{Questions}',Option1='{Option1}',Option2='{Option2}',Option3='{Option3}',Option4='{Option4}',Qn_Answer='{Qn_Answer}' where Question_no={Question_no}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public List<Question> GetAllQuestions()
        {
            try
            {
                List<Question> questions = new List<Question>();
                command = new SqlCommand($"Select * from Question", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Question question = new Question();
                    question.Question_no = (int)dr["Question_no"];
                    question.Questions= dr["Question"].ToString();
                    question.Option1 = dr["Option1"].ToString();
                    question.Option2= dr["Option2"].ToString();
                    question.Option3 = dr["Option3"].ToString();
                    question.Option4= dr["Option4"].ToString();
                    question.Qn_Answer= dr["Qn_Answer"].ToString();
                    questions.Add(question);
                }
                return questions;
            }
            catch (Exception)
            {

                throw;
            }
        }
       
    }
}
