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
    public class DALStudent
    {
        public static int StudentAdd(EntityStudent parameterAdd)
        {
            SqlCommand cmdAdd = new SqlCommand("insert into TBLOGRENCI(OgrenciAd, OgrenciSoyad, OgrenciNo, OgrenciMail, OgrenciSifre) values (@p1,@p2,@p3,@p4,@p5)", Connection.cnntn);
            if (cmdAdd.Connection.State != ConnectionState.Open)
            {
                cmdAdd.Connection.Open();
            }
            cmdAdd.Parameters.AddWithValue("@p1", parameterAdd.Name);
            cmdAdd.Parameters.AddWithValue("@p2", parameterAdd.Surname);
            cmdAdd.Parameters.AddWithValue("@p3", parameterAdd.Number);
            cmdAdd.Parameters.AddWithValue("@p4", parameterAdd.Mail);
            cmdAdd.Parameters.AddWithValue("@p5", parameterAdd.Password);

            return cmdAdd.ExecuteNonQuery();
        }
        public static List<EntityStudent> StudentList()
        {
            List<EntityStudent> studentValues = new List<EntityStudent>();
            SqlCommand cmdList = new SqlCommand("Select * From TBLOGRENCI", Connection.cnntn);
            if (cmdList.Connection.State != ConnectionState.Open)
            {
                cmdList.Connection.Open();
            }
            SqlDataReader dr = cmdList.ExecuteReader();
            while (dr.Read())
            {
                EntityStudent entStdnt = new EntityStudent();
                entStdnt.Id = Convert.ToInt32(dr["OgrenciID"].ToString());
                entStdnt.Name = dr["OgrenciAd"].ToString();
                entStdnt.Surname = dr["OgrenciSoyad"].ToString();
                entStdnt.Number = dr["OgrenciNo"].ToString();
                entStdnt.Mail = dr["OgrenciMail"].ToString();
                entStdnt.Password = dr["OgrenciSifre"].ToString();
                entStdnt.Balance = Convert.ToDouble(dr["OgrenciBakiye"].ToString());
                studentValues.Add(entStdnt);
            }
            dr.Close();
            return studentValues;
        }
        public static bool StudentDelete(int parameterDel)
        {
            SqlCommand cmdDel = new SqlCommand("Delete From TBLOGRENCI where OgrenciID = @p1", Connection.cnntn);
            if (cmdDel.Connection.State != ConnectionState.Open)
            {
                cmdDel.Connection.Open();
            }
            cmdDel.Parameters.AddWithValue("@p1", parameterDel);
            return cmdDel.ExecuteNonQuery() > 0;

        }

        public static List<EntityStudent> StudentDetailList(int id)
        {
            List<EntityStudent> studentValues = new List<EntityStudent>();
            SqlCommand cmdDetailList = new SqlCommand("Select * From TBLOGRENCI where OgrenciId=@p1", Connection.cnntn);
            cmdDetailList.Parameters.AddWithValue("@p1", id);
            if (cmdDetailList.Connection.State != ConnectionState.Open)
            {
                cmdDetailList.Connection.Open();
            }
            SqlDataReader dr = cmdDetailList.ExecuteReader();
            while (dr.Read())
            {
                EntityStudent entStdnt = new EntityStudent();
                entStdnt.Name = dr["OgrenciAd"].ToString();
                entStdnt.Surname = dr["OgrenciSoyad"].ToString();
                entStdnt.Number = dr["OgrenciNo"].ToString();
                entStdnt.Mail = dr["OgrenciMail"].ToString();
                entStdnt.Password = dr["OgrenciSifre"].ToString();
                entStdnt.Balance = Convert.ToDouble(dr["OgrenciBakiye"].ToString());
                studentValues.Add(entStdnt);
            }
            dr.Close();
            return studentValues;
        }

        public static bool StudentUpdate(EntityStudent vrbl)
        {
            SqlCommand cmdUpdate = new SqlCommand("Update TBLOGRENCI Set OgrenciAd=@p1,OgrenciSoyAd=@p2,OgrenciNo=@p3,OgrenciMail=@p4,OgrenciSifre=@p5 where OgrenciId=@p6", Connection.cnntn);
            if (cmdUpdate.Connection.State != ConnectionState.Open)
            {
                cmdUpdate.Connection.Open();
            }
            cmdUpdate.Parameters.AddWithValue("@p1", vrbl.Name);
            cmdUpdate.Parameters.AddWithValue("@p2", vrbl.Surname);
            cmdUpdate.Parameters.AddWithValue("@p3", vrbl.Number);
            cmdUpdate.Parameters.AddWithValue("@p4", vrbl.Mail);
            cmdUpdate.Parameters.AddWithValue("@p5", vrbl.Password);
            cmdUpdate.Parameters.AddWithValue("@p6", vrbl.Id);
            return cmdUpdate.ExecuteNonQuery() > 0;
        }
    }
}
