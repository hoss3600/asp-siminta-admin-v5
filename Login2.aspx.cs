using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;



    public partial class Login2 : System.Web.UI.Page
    {
    public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");



    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void Login_Click(object sender, EventArgs e)
    {



        String query1 = "SELECT Employee.Emp_name, Employee.Emp_ID, Employee.Level, Employee.Emp_status FROM   Password, Employee GROUP BY Employee.Emp_ID HAVING (Employee.Emp_ID =" + Login_E_ID.Text + ") AND (Password.Emp_Pw =" + Login_P.Text + ")";



        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
                

            try
            {

                con.Open();


                SQLiteDataAdapter output1 = new SQLiteDataAdapter(query1, con);

                DataTable dt = new DataTable();

                output1.Fill(dt);



                String Name = dt.Rows[0][0].ToString();
                String ID = dt.Rows[0][1].ToString();
                String Level = dt.Rows[0][2].ToString();
                String Status = dt.Rows[0][3].ToString();

                int status = Convert.ToInt32(Status);


                Session["NAM"] = Name;
                Session["ID"] = ID;
                Session["LE"] = Level;

                if (status == 1)
                {
                    Label2.Visible = true;
                    Label1.Visible = false;
                } else
                {
                    Response.Redirect("~/Default.aspx");

                    Label1.Visible = false;
                }

            }

            catch
            {

                Label1.Visible = true;

            }

           
        }

            
        }
    }
