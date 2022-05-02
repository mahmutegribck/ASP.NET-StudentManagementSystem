using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataAccessLayer;
using BusinessLogicLayer;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Save_Click(object sender, EventArgs e)
    {
        EntityStudent student = new EntityStudent();
        student.Name = TxtStName.Text;
        student.Surname = TxtStSurname.Text;
        student.Number = TxtStNmbr.Text;
        student.Password = TxtStPass.Text;
        student.Mail = TxtStMail.Text;
        BLLStudent.StudentAddBLL(student);
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        TxtStName.Text = String.Empty;
        TxtStSurname.Text = String.Empty;
        TxtStNmbr.Text = String.Empty;
        TxtStPass.Text = String.Empty;
        TxtStMail.Text = String.Empty;
    }
}