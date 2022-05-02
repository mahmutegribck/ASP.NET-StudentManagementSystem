using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityTeacher
    {
        private int teacherId;
        private string teacherName;
        private int teacherBranch;

        public int TeacherId { get => teacherId; set => teacherId = value; }
        public string TeacherName { get => teacherName; set => teacherName = value; }
        public int TeacherBranch { get => teacherBranch; set => teacherBranch = value; }
    }
}
