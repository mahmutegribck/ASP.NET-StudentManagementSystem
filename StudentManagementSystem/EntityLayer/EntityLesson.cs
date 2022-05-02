using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityLesson
    {
        private string lessonName;
        private int minQuota;
        private int maxQuota;
        private int lessonId;

        public string LessonName { get => lessonName; set => lessonName = value; }
        public int MinQuota { get => minQuota; set => minQuota = value; }
        public int MaxQuota { get => maxQuota; set => maxQuota = value; }
        public int LessonId { get => lessonId; set => lessonId = value; }
    }
}
