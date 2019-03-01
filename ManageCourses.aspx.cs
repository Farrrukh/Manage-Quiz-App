using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ManageCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        refreshPage();
    }

    private void refreshPage()
    {
        LINQDemoDataContext db = new LINQDemoDataContext();

        var c = from cr in db.Courses
                select cr;

        GridView1.DataSource = c;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            LINQDemoDataContext db = new LINQDemoDataContext();

            Course c = new Course()
            {
                Name = txtCourseName.Text
            };
            db.Courses.InsertOnSubmit(c);
            db.SubmitChanges();
            txtCourseName.Text = "";
            Label1.Text = "Course Added Successfully";
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            refreshPage();
        }

    }
}