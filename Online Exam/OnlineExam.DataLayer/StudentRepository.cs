using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineExam.Entities;
namespace OnlineExam.DataLayer
{
    public class StudentRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
        SqlCommand command = null;

        public void Add_Student(Student student)
        {
            try
            {
                command = new SqlCommand($"insert into Student values({student.Student_ID},'{student.Student_Name}','{student.Student_Email}','{student.Student_Password}','{student.Gender}','{student.DateOfBirth}','{student.Mobile}')", connection);
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
        public void DeleteStudent(int studentid)
        {
            try
            {
                command = new SqlCommand($"delete from Student where Student_ID={studentid}", connection);
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
        public void UpdateStudent(int Student_ID,string Student_Name,string Student_Email,string Student_Password,string DateOfBirth,string Gender,string Mobile)
        {
            try
            {
                command = new SqlCommand($"Update Student set Mobile='{Mobile}',Student_Email='{Student_Email}',Student_Password='{Student_Password}',DateOfBirth='{DateOfBirth}',Student_Name='{Student_Name}',Gender='{Gender}' where Student_ID={Student_ID}", connection);
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
        public Student GetStudentById(int Student_ID)
        {
            try
            {
                Student student = null;
                command = new SqlCommand($"Select * from Student where Student_ID={Student_ID}", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    student = new Student();
                    student.Student_ID = (int)dr["Student_ID"];
                    student.Student_Name = dr["Student_Name"].ToString();
                    student.Student_Email = dr["Student_Email"].ToString();
                    student.Student_Password = dr["Student_Password"].ToString();
                    student.Gender = dr["Gender"].ToString();
                    student.DateOfBirth = dr["DateOfBirth"].ToString();
                    student.Mobile = dr["Mobile"].ToString();
                    
                }
                return student;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Student> GetAllStudents()
        {
            try
            {
                List<Student> students = new List<Student>();
                command = new SqlCommand($"Select * from Student", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Student student = new Student();
                    student.Student_ID = (int)dr["Student_ID"];
                    student.Student_Name = dr["Student_Name"].ToString();
                    student.Student_Email = dr["Student_Email"].ToString();
                    student.Student_Password = dr["Student_Password"].ToString();
                    student.Gender = dr["Gender"].ToString();
                    student.DateOfBirth = dr["DateOfBirth"].ToString();
                    student.Mobile = dr["Mobile"].ToString();
                    students.Add(student);
                }
                return students;
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
                    command = new SqlCommand($"Select * from Student where Student_ID={Student_ID} and Student_Email ='{Student_Email}' and Student_Password='{Student_Password}'", connection);
                    connection.Open();
                    SqlDataReader dr = command.ExecuteReader();
                    if (dr.HasRows)
                    {
                        return 1;

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
        public bool Change_StudentPassword(int Student_ID, String CurrentPassword, String NewPassword)
        {
            try
            {
                if (NewPassword != "")
                {
                    command = new SqlCommand($"update Student set Student_Password='{NewPassword}' where Student_ID={Student_ID} and Student_Password='{CurrentPassword}'", connection);
                    connection.Open();
                   int result= command.ExecuteNonQuery();
                    
                    if (result==1)
                    {
                        return true;
                    }
                    else { return false; }
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
            finally
            {
                connection.Close();
            }
        }
    }
    }

