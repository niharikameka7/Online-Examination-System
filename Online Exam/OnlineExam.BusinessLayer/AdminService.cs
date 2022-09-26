using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineExam.Entities;
using OnlineExam.DataLayer;
namespace OnlineExam.BusinessLayer
{
    public class AdminService
    {
        AdminRepository repository;
        public AdminService()
        {
            repository = new AdminRepository();
        }
        public void Add_Admin(Admin admin)
        {
            try
            {
                repository.Add_Admin(admin);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Delete_Admin(int Admin_ID)
        {
            try
            {
                repository.Delete_Admin(Admin_ID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update_Admin(int Admin_ID, string Admin_Name, string Admin_Email, string Admin_Password, string DateOfBirth, string Gender, string Mobile)

        {
            try
            {
                repository.Update_Admin(Admin_ID, Admin_Name, Admin_Email, Admin_Password, DateOfBirth, Gender, Mobile);

            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Admin> GetAdmins()
        {
            try
            {
                return repository.GetAllAdmins();
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int AdminExists(int Admin_ID,string Admin_Email,string Admin_Password)
        {
            try

            {
                int result;
                result=repository.AdminExists(Admin_ID,Admin_Email,Admin_Password);
                if(result==0 || result== 1)
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
        public bool Change_AdminPassword(int Admin_ID,String CurrentPassword,String NewPassword)
        {
            try
            {
                bool result;
                result=repository.Change_AdminPassword(Admin_ID,CurrentPassword,NewPassword);
                if(result== true)
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
