using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SQLite;

public partial class index: System.Web.UI.Page
{
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    protected void Page_Load(object sender, EventArgs e)
    {

        show.Visible = false;

      
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        show.Visible = true;
       // Response.Redirect("~/index.aspx/#footer");
    }

    protected void CL_ID_S_Click(object sender, EventArgs e)
    {
       
        String query1 = "SELECT Status FROM Production WHERE(Order_ID = "+O_ID.Text+")";



        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {


            try
            {
                DataTable dt = new DataTable();

                SQLiteDataAdapter RD = new SQLiteDataAdapter(query1, con);

                RD.Fill(dt);

                String status = dt.Rows[0][0].ToString();


               



                if (status == "Preparation")
                {
                    L1.Attributes["class"] = "label label-danger";
                    L2.Attributes["class"] = "label label-default";
                    L3.Attributes["class"] = "label label-default";
                    L4.Attributes["class"] = "label label-default";

                }

                else if (status == "Fabrication")
                {
                    L1.Attributes["class"] = "label label-default";
                    L2.Attributes["class"] = "label label-danger";
                    L3.Attributes["class"] = "label label-default";
                    L4.Attributes["class"] = "label label-default";

                }
                else if (status == "welding")
                {
                    L1.Attributes["class"] = "label label-default";
                    L2.Attributes["class"] = "label label-default";
                    L3.Attributes["class"] = "label label-danger";
                    L4.Attributes["class"] = "label label-default";

                }

                else if (status == "blasting/painting")
                {
                    L1.Attributes["class"] = "label label-default";
                    L2.Attributes["class"] = "label label-default";
                    L3.Attributes["class"] = "label label-default";
                    L4.Attributes["class"] = "label label-danger";

                }


                //Response.Redirect("~/index.aspx/#footer");


            }

            catch
            {

            }


            }  
    }



    protected void CL_P_S_Click(object sender, EventArgs e)
    {

    }
}