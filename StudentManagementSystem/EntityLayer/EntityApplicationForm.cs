using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    internal class EntityApplicationForm
    {
        private int applicationId;
        private int applicationLessonId;
        private int applicationStudentId;

        public int ApplicationId { get => applicationId; set => applicationId = value; }
        public int ApplicationLessonId { get => applicationLessonId; set => applicationLessonId = value; }
        public int ApplicationStudentId { get => applicationStudentId; set => applicationStudentId = value; }
    }
}
