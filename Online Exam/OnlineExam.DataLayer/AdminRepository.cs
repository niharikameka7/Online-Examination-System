using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineExam.Entities;
using System.Configuration;
namespace OnlineExam.DataLayer
{
    public class AdminRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
        SqlCommand command = null;

        public void Add_Admin(Admin admin)
        {
            try
            {
                command = new SqlCommand($"insert into Admin values({admin.Admin_ID},'{admin.Admin_Name}','{admin.Admin_Email}','{admin.Admin_Password}','{admin.Gender}','{admin.DateOfBirth}','{admin.Mobile}')", connection);
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
        public void Delete_Admin(int Admin_ID)
        {
            try
            {
                command = new SqlCommand($"delete from Admin where Admin_ID={Admin_ID}", connection);
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
        public void Update_Admin(int Admin_ID, string Admin_Name, string Admin_Email, string Admin_Password, string DateOfBirth, string Gender, string Mobile)
        {
            try
            {
                command = new SqlCommand($"update Admin set Mobile='{Mobile}',Admin_Email='{Admin_Email}',Admin_Name='{Admin_Name}',DateOfBirth='{DateOfBirth}',Gender='{Gender}' where Admin_ID={Admin_ID}", connection);
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
        public List<Admin> GetAllAdmins()
        {
            try
            {
                List<Admin> admins = new List<Admin>();
                command = new SqlCommand($"Select * from Admin", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Admin admin= new Admin();
                    admin.Admin_ID = (int)dr["Admin_ID"];
                    admin.Admin_Name = dr["Admin_Name"].ToString();
                    admin.Admin_Email = dr["Admin_Email"].ToString();
                    admin.Gender = dr["Gender"].ToString();
                    admin.DateOfBirth = dr["DateOfBirth"].ToString();
                    admin.Mobile = dr["Mobile"].ToString();
                    admins.Add(admin); 
                }
                return admins;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int AdminExists(int Admin_ID,string Admin_Email, string Admin_Password)
        {
            try
            {
                command = new SqlCommand($"Select * from Admin where Admin_ID={Admin_ID} and Admin_Email ='{Admin_Email}' and Admin_Password='{Admin_Password}'", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    return 1;
                   
                }
                else{
                   return 0;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        public bool Change_AdminPassword(int Admin_ID,String CurrentPassword,String NewPassword)
        {
            try
            {
                if (NewPassword!=" ")
                {
                    command = new SqlCommand($"update Admin set Admin_Password='{NewPassword}' where Admin_ID={Admin_ID} and Admin_Password='{CurrentPassword}'", connection);
                    connection.Open();
                   int result=command.ExecuteNonQuery();
                    if (result == 1) { return true; }                       
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
