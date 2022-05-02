using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using EntityLayer;

namespace DataAccessLayer
{
    public class DALessons
    {
        public static List<EntityLesson> LessonList()
        {
            List<EntityLesson> lessonsList = new List<EntityLesson>();
            SqlCommand cmdLessonList = new SqlCommand("Select * From TBLDERSER", Connection.cnntn);
            if (cmdLessonList.Connection.State != ConnectionState.Open)
            {
                cmdLessonList.Connection.Open();
            }
            SqlDataReader dr = cmdLessonList.ExecuteReader();
            while (dr.Read())
            {
                EntityLesson entLesson = new EntityLesson();
                entLesson.LessonId = Convert.ToInt32(dr["DersID"].ToString());
                entLesson.LessonName = dr["DersAd"].ToString();
                entLesson.MinQuota = Convert.ToInt32(dr["DersMinKontenjan"].ToString());
                entLesson.MaxQuota = Convert.ToInt32(dr["DersMaxKontenjan"].ToString());

                lessonsList.Add(entLesson);
            }
            dr.Close();
            return lessonsList;
        }

    }
}
