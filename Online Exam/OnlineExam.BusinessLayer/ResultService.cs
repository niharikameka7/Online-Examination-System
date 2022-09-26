using OnlineExam.DataLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.BusinessLayer
{
    public class ResultService
    {
        ResultRepository repository;
        public ResultService()
        {
            repository = new ResultRepository();
        }
        public void Update_Result(int Student_ID,string Student_Email,string Student_Score, string ExamDate)

        {
            try
            {
                repository.Update_Result(Student_ID,Student_Email, Student_Score, ExamDate);

            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Add_Result(Result result)
        {
            try
            {
                repository.Add_Result(result);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Delete_Result(int Student_ID)
        {
            try
            {
                repository.Delete_Result(Student_ID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Result> GetResults()
        {
            try
            {
                return repository.GetAllResults();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
