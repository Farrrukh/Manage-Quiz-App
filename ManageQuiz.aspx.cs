using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageQuiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LINQDemoDataContext db = new LINQDemoDataContext();

        var cr = from c in db.Courses
                 select c;

        ddlCourseName.DataSource = cr;
        ddlCourseName.DataTextField = "Name";
        ddlCourseName.DataValueField = "Id";
        ddlCourseName.DataBind();
    }
    protected void btnAddQuestion_Click(object sender, EventArgs e)
    {
        try
        {
            LINQDemoDataContext db = new LINQDemoDataContext();

            Quiz quiz = new Quiz()
            {
                QuestionDescription = txtQuestionDescription.Text,
                Choice1 = txtCoice1.Text,
                Choice2 = txtCoice2.Text,
                Choice3 = txtCoice3.Text,
                Choice4 = txtCoice4.Text,
                CorrectChoice = rdoCorrectChoice.SelectedValue,
                CourseId = Convert.ToInt32(ddlCourseName.SelectedValue)

            };
            db.Quizs.InsertOnSubmit(quiz);
            db.SubmitChanges();
            Label1.Text = "New Question Added Successfully";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}