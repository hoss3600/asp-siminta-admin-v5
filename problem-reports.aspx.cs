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

    protected void problem_report_submit_Click(object sender, EventArgs e)
    {
        string records_query = "SELECT * FROM Problem WHERE Date_d BETWEEN '" + problem_report_date_from.Text + "' AND '" + problem_report_date_to.Text + "'";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {


                con.Open();


                SQLiteDataAdapter output1 = new SQLiteDataAdapter(records_query, con);

                DataTable dt = new DataTable();

                output1.Fill(dt);
                problem_report_Gridview.DataSource = dt;
                problem_report_Gridview.DataBind();

          
        }
    }
}