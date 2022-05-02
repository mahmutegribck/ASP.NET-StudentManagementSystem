using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using EntityLayer;
using BusinessLogicLayer;

public partial class StudentUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
        TxtStId.Text = id.ToString();
        TxtStId.Enabled = false;
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdList = new SqlCommand("Select * From TBLOGRENCI where OgrenciId=@p1", Connection.cnntn);
            cmdList.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = cmdList.ExecuteReader();
            EntityStudent entStdnt = new EntityStudent();
            while (dr.Read())
            {
                entStdnt.Id = Convert.ToInt32(dr["OgrenciID"].ToString());

                TxtStName.Text = dr["OgrenciAd"].ToString();
                TxtStSurname.Text = dr["OgrenciSoyad"].ToString();
                TxtStNmbr.Text = dr["OgrenciNo"].ToString();
                TxtStMail.Text = dr["OgrenciMail"].ToString();
                TxtStPass.Text = dr["OgrenciSifre"].ToString();

            }
            dr.Close();
        }
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        TxtStName.Text = String.Empty;
        TxtStSurname.Text = String.Empty;
        TxtStNmbr.Text = String.Empty;
        TxtStPass.Text = String.Empty;
        TxtStMail.Text = String.Empty;
    }

    protected void Save_Click(object sender, EventArgs e)
    {
        EntityStudent studentSave = new EntityStudent();
        studentSave.Name = TxtStName.Text;
        studentSave.Surname = TxtStSurname.Text;
        studentSave.Password = TxtStPass.Text;
        studentSave.Number = TxtStNmbr.Text;
        studentSave.Mail = TxtStMail.Text;
        studentSave.Id = Convert.ToInt32(TxtStId.Text);
        BLLStudent.StudentUpdateBLL(studentSave);
        Response.Redirect("StudentList.aspx");

    }
}
