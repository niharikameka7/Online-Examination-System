using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineExam.Entities
{
    public class Result
    {
        public int Student_ID { get; set; }
        public string Student_Email { get; set; }
        public string Student_Score { get; set; }
        public string ExamDate { get; set; }
    }
}
