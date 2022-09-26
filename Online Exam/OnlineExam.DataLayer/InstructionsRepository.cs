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
    public class InstructionsRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["onlineexam_projectConn"].ConnectionString);
        SqlCommand command = null;

        public void Add_Instruction(Instructions instructions)
        {
            
            try
            {
                command = new SqlCommand($"insert into Instructions values({instructions.Instruction_ID},'{instructions.Instruction}')", connection);
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
            public void Delete_Instruction(int Instruction_ID)
            {
                try
                {
                    command = new SqlCommand($"delete from Instructions where Instruction_ID={Instruction_ID}", connection);
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
        public void Update_Instruction(int Instruction_ID, string Instruction)
        {
            try
            {
                command = new SqlCommand($"update Instructions set Instruction='{Instruction}' where Instruction_ID={Instruction_ID}", connection);
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
        public List<Instructions> GetAllInstructions()
        {
            try
            {
                List<Instructions> instruction = new List<Instructions>();
                command = new SqlCommand($"Select * from Instructions", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Instructions instructions = new Instructions();
                    instructions.Instruction_ID = (int)dr["Instruction_ID"];
                    instructions.Instruction = dr["Instruction"].ToString();
                    instruction.Add(instructions);
                }
                return instruction;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
