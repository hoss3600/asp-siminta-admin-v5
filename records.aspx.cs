using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class records : System.Web.UI.Page
{
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Records_Submit_Click(object sender, EventArgs e)
    {


        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            string records_query = "SELECT * FROM  " + Records_department_list.Text + " WHERE Date BETWEEN '" + Records_date_from.Text + "' AND '" + Records_date_to.Text + "'";

            con.Open();

                SQLiteDataAdapter output1 = new SQLiteDataAdapter(records_query, con);

                DataTable dt = new DataTable();

                output1.Fill(dt);

                Records_GridView.DataSource = dt;
                Records_GridView.DataBind();

            
      


        }
    }
}