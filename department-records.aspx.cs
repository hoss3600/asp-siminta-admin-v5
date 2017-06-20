using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class department_records : System.Web.UI.Page
{
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            String LE = Session["LE"].ToString();

        }


        catch
        {

            Response.Redirect("~/Login2.aspx");

        }

    }

    protected void Department_Records_Submit_Click(object sender, EventArgs e)
    {


        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            String records_query = "";




            String LE = Session["LE"].ToString();

            switch (LE)
            {
                case "1":
                    records_query = "SELECT * FROM Order_details WHERE Date BETWEEN '" + department_records_date_from.Text + "' AND '" + department_records_date_to.Text + "'";
                    break;
                case "2":
                    records_query = "SELECT * FROM Engineering";
                    break;
                case "3":
                    records_query = "SELECT * FROM Accounting";
                    break;
                case "4":
                    records_query = "SELECT * FROM HR";
                    break;
                case "5":
                    records_query = "SELECT * FROM Procurement WHERE Arrival_date BETWEEN '" + department_records_date_from.Text + "' AND '" + department_records_date_to.Text + "'";
                    break;
                case "6":
                    records_query = "SELECT * FROM Storage WHERE Date BETWEEN '" + department_records_date_from.Text + "' AND '" + department_records_date_to.Text + "'";
                    break;
                case "7":
                    records_query = "SELECT * FROM Production WHERE Date BETWEEN '" + department_records_date_from.Text + "' AND '" + department_records_date_to.Text + "'";
                    break;
                case "8":
                    records_query = "SELECT * FROM Shipping WHERE Date BETWEEN '" + department_records_date_from.Text + "' AND '" + department_records_date_to.Text + "'";
                    break;
                default:
                    break;

            }
            try
            {

                con.Open();


                SQLiteDataAdapter output1 = new SQLiteDataAdapter(records_query, con);

                DataTable dt = new DataTable();

                output1.Fill(dt);
                department_records_GridView.DataSource = dt;
                department_records_GridView.DataBind();
                Lb1.Visible = false;
            }

            catch
            {

                Lb1.Visible = true;
            }


        }

    }
}
