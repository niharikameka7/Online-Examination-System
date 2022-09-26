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
    public class ResultRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
        SqlCommand command = null;
        public void Add_Result(Result result)
        {
            try
            {
                command = new SqlCommand($"insert into ExamResults values({result.Student_ID},'{result.Student_Email}','{result.Student_Score}','{result.ExamDate}')", connection);
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
        public void Delete_Result(int Student_ID)
        {
            try
            {
                command = new SqlCommand($"delete from ExamResults where Student_ID={Student_ID}", connection);
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
        public void Update_Result(int Student_ID,string Student_Email,string Student_Score, string ExamDate)
        {
            try
            {
                command = new SqlCommand($"Update ExamResults set Student_Email='{Student_Email}',ExamDate='{ExamDate}',Student_Score='{Student_Score}' where Student_ID={Student_ID}", connection);
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
        public List<Result> GetAllResults()
        {
            try
            {
                List<Result> results = new List<Result>();
                command = new SqlCommand($"Select * from ExamResults", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Result result = new Result();
                    result.Student_ID= (int)dr["Student_ID"];
                    result.Student_Email = dr["Student_Email"].ToString();
                    result.Student_Score = dr["Student_Score"].ToString();
                    result.ExamDate = dr["ExamDate"].ToString();
                    results.Add(result);
                }
                return results;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
