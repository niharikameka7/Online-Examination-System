using OnlineExam.DataLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.BusinessLayer
{
    public class StudentService
    {
        StudentRepository repository;
        public StudentService()
        {
            repository = new StudentRepository();
        }
        public void Add_Student(Student student)
        {
            try
            {
                repository.Add_Student(student);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void DeleteStudent(int Student_ID)
        {
            try
            {
                repository.DeleteStudent(Student_ID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void UpdateStudent(int Student_ID, string Student_Name, string Student_Email, string Student_Password, string DateOfBirth, string Gender, string Mobile)

        {
            try
            {
                repository.UpdateStudent(Student_ID,Student_Name,Student_Email,Student_Password,DateOfBirth,Gender,Mobile);

            }
            catch (Exception)
            {

                throw;
            }
        }
        public Student GetStudentById(int Student_ID)
        {
            try
            {
                return repository.GetStudentById(Student_ID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int StudentExists(int Student_ID, string Student_Email, string Student_Password)
        {
            try

            {
                int result;
                result = repository.StudentExists(Student_ID, Student_Email, Student_Password);
                if (result == 0 || result == 1)
                {
                    return result;
                }
                else
                {
                    return 0;
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Student> GetStudents()
        {
            try
            {
                return repository.GetAllStudents();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool Change_StudentPassword(int Student_ID, String CurrentPassword, String NewPassword)
        {
            try
            {
                bool result;
                result = repository.Change_StudentPassword(Student_ID, CurrentPassword, NewPassword);
                if (result == true)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

}

