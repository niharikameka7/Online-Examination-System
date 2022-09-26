using OnlineExam.DataLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.BusinessLayer
{
    public class QuestionService
    {
        QuestionRepository repository;
        public QuestionService()
        {
            repository = new QuestionRepository();
        }
        public void Add_Question(Question question)
        {
            try
            {
                repository.Add_Question(question);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Delete_Question(int Question_no)
        {
            try
            {
                repository.Delete_Question(Question_no);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update_Question(int Question_no, string Questions, string Option1, string Option2, string Option3, string Option4, string Qn_Answer)

        {
            try
            {
                repository.Update_Question(Question_no,Questions,Option1,Option2,Option3,Option4,Qn_Answer);

            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Question> GetQuestions()
        {
            try
            {
                return repository.GetAllQuestions();
            }
            catch (Exception)
            {

                throw;
            }
        }
        
    }
}
