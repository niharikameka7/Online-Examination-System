using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.Entities
{
    public class Student
    {
        public int Student_ID { get; set; }
        public string Student_Name { get; set; }
        public string Student_Password { get; set; }
        public string Student_Email { get; set; }
        public string Mobile { get; set; }
        public string DateOfBirth { get; set; }
        public string Gender { get; set; }
    }
}
