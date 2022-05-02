using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using BusinessLogicLayer;
using DataAccessLayer;

public partial class Lessons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == false)
        {
            List<EntityLesson> EntLesson = BLLLessons.BllList();
            DropDownListLesson.DataSource = BLLLessons.BllList();
            DropDownListLesson.DataTextField = "DersAd";
            DropDownListLesson.DataValueField = "LessonId";
            DropDownListLesson.DataBind();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownListLesson.SelectedValue.ToString();
    }
}