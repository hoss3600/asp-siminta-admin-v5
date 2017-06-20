using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forms : System.Web.UI.Page
{
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Report_Problem_sub_Click(object sender, EventArgs e)
    {
        string report_problem_insert = "INSERT INTO Problem (Emp_ID,Description,Status,Date_d) VALUES (" + Report_Problem_Employee_ID.Text + ",'" + Report_Problem_Problem.InnerText + "','New','" + Report_Problem_Date.Text + "')";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            
                SQLiteCommand command = new SQLiteCommand(report_problem_insert, con);
                con.Open();
                SQLiteDataReader R = command.ExecuteReader();
                report_problem_success.Visible = true;
            

           

        }
    }
}