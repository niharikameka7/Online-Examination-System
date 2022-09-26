using OnlineExam.DataLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.BusinessLayer
{
    public class InstructionsService
    {
        InstructionsRepository repository;
        public InstructionsService()
        {
            repository = new InstructionsRepository();
        }
        public void Add_Instruction(Instructions instructions)
        {
            try
            {
                repository.Add_Instruction(instructions);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Delete_Instruction(int Instruction_ID)
        {
            try
            {
                repository.Delete_Instruction(Instruction_ID);
            }
            catch (Exception)
            {

                throw;
            }
        }
        public void Update_Instruction(int Instruction_ID, string Instruction)

        {
            try

            {
                repository.Update_Instruction(Instruction_ID, Instruction);

            }
            catch (Exception)
            {

                throw;
            }
        }
        public List<Instructions> GetInstructions()
        {
            try
            {
                return repository.GetAllInstructions();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
