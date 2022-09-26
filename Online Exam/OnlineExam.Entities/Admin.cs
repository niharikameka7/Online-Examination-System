using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.Entities
{
    public class Admin
    {
        public int Admin_ID { get; set; } 
        public string Admin_Name{ get; set; }
        public string Admin_Password{ get; set; }
        public string Admin_Email{ get; set; }
        public string Mobile{ get; set; }
        public string DateOfBirth{ get; set; }
        public string Gender{ get; set; }

    }
}
