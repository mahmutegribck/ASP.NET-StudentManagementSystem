using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class DALTeacher
    {
        public static List<EntityTeacher> TeacherList()
        {

            List<EntityTeacher> teacherList = new List<EntityTeacher>();

            SqlCommand cmdTeacherList = new SqlCommand("Select * From TBLOGRETMEN", Connection.cnntn);
            if (cmdTeacherList.Connection.State != ConnectionState.Open)
            {
                cmdTeacherList.Connection.Open();
            }
            SqlDataReader dr = cmdTeacherList.ExecuteReader();
            while (dr.Read())
            {
                EntityTeacher entTeacher = new EntityTeacher();

                entTeacher.TeacherName = dr["OgretmenAdSoyad"].ToString();
                teacherList.Add(entTeacher);
            }
            dr.Close();
            return teacherList;
        }
    }
}
