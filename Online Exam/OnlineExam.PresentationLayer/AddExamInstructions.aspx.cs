using OnlineExam.BusinessLayer;
using OnlineExam.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineExam.PresentationLayer
{
    public partial class AddExamInstructions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit(object sender, EventArgs e)
        {
            try { 
            Instructions instructions = new Instructions();
            instructions.Instruction = txt_instruction.Text;
            instructions.Instruction_ID = int.Parse(txt_id.Text);
            InstructionsService instructionService = new InstructionsService();
            instructionService.Add_Instruction(instructions);
                Result.Text = "Instruction Added!!";
                txt_id.Text = "";
            txt_instruction.Text = "";
        }
            catch(Exception) 
                {
                    txt_id.Text = "";
                    txt_instruction.Text = "";
                    Result.Text = "Check again";
            }
        }
    }
}