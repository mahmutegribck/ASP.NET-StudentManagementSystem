using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using DataAccessLayer;
using EntityLayer;

public partial class StudentDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int vrbl = Convert.ToInt32(Request.QueryString["Id"]);
        Response.Write(vrbl);
        EntityStudent stdntEnt = new EntityStudent();
        stdntEnt.Id = vrbl;
        BLLStudent.StudentDeleteBLL(stdntEnt.Id);
        Response.Redirect("StudentList.aspx");
    }
}