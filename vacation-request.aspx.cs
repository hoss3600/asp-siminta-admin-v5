using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tables : System.Web.UI.Page
{
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void vacation_request_submit_Click(object sender, EventArgs e)
    {
        string vacation_request_insert = "INSERT INTO Vacation (Emp_ID, VEnd_date, Resons, Compelling_orNot, Vstart_date) VALUES(" + vacation_request_employee_ID.Text + ", '" + vacation_request_date_to.Text + "', '" + vacation_request_reason.InnerText + "', 'Yes', '" + vacation_request_date_from.Text + "')";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            try
            {
                SQLiteCommand command = new SQLiteCommand(vacation_request_insert, con);
                con.Open();
                SQLiteDataReader R = command.ExecuteReader();
                vacation_request_success.Visible = true;
            }

            catch { }

        }
    }
}