using System;
using System.Data;
using System.Data.SQLite;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
   public static string GetDesktopDirectory()
    {
        return Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory);
    }

    string Database = System.IO.Path.Combine(GetDesktopDirectory(), @"asp-siminta-admin v5\SAFS.sqlite");

    private String expritResult = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {


            String NA = Session["NAM"].ToString();
            String ID = Session["ID"].ToString();
            String LE = Session["LE"].ToString();

            Ad.Visible = false;
            Sale.Visible = false;
            Eng.Visible = false;
            Acc.Visible = false;
            HR.Visible = false;
            Proc.Visible = false;
            Stor.Visible = false;
            Prod.Visible = false;
            Ship.Visible = false;


            if (LE == "0")
            {
                Ad.Visible = true;
            }

            if (LE == "1")
            {
                Sale.Visible = true;

                String query33 = "SELECT Order_ID FROM Order_O WHERE Order_ID = (SELECT MAX(Order_ID)  FROM Order_O );";

                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {
                    try
                    {

                        con.Open();

                        SQLiteDataAdapter output1 = new SQLiteDataAdapter(query33, con);

                        DataTable dt = new DataTable();

                        output1.Fill(dt);
                        
                        String Client_ID = dt.Rows[0][0].ToString();

                        int x = Int32.Parse(Client_ID);

                        x = x + 1;

                        string myString = x.ToString();

                        O_ID.Text = myString;

                        String D = DateTime.Today.ToString("MM/dd/yyyy");

                        C_Date.Text = D;
                        
                    }

                    catch
                    {
                        //catchfile
                    }

                }
            }

            if (LE == "2")
            {
                Eng.Visible = true;
            }
            if (LE == "3")
            {
                Acc.Visible = true;
                // balance for accounting department
                String Balance_query = "SELECT Balance FROM Accounting ORDER BY Balance DESC LIMIT 1";
                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {
                    try
                    {
                        SQLiteDataAdapter balancee = new SQLiteDataAdapter(Balance_query, con);

                        DataTable bdg = new DataTable();

                        con.Open();

                        balancee.Fill(bdg);

                        String BalanceAmount = bdg.Rows[0][0].ToString();

                        Balancee.Text = BalanceAmount;
                    }
                    catch
                    {

                    }
                }
            }
            if (LE == "4")
            {
                HR.Visible = true;
            }
            if (LE == "5")
            {
                Proc.Visible = true;


                // procurement table
                String orderedMaterials = "SELECT Ordered_items_ID, Material_name, Ordered_quantity, Size_details From Procurement;";
                String StoredMaterials = "SELECT Material_ID, Material_name, Quantity, Size_details, cost FROM Storage;";

                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {
                    try
                    {


                        SQLiteDataAdapter da1 = new SQLiteDataAdapter(orderedMaterials, con);
                        SQLiteDataAdapter da2 = new SQLiteDataAdapter(StoredMaterials, con);

                        con.Open();

                        DataTable OM = new DataTable();
                        DataTable SM = new DataTable();



                        da1.Fill(OM);
                        da2.Fill(SM);

                        String vtable1 = OM.Rows[0][0].ToString();
                        String vtable2 = SM.Rows[0][0].ToString();


                        GridViewOM.DataSource = OM;
                        GridViewOM.DataBind();

                        GridViewSM.DataSource = SM;
                        GridViewSM.DataBind();
                    }
                    catch
                    {


                    }
                }

            }
            if (LE == "6")
            {
                Stor.Visible = true;
                string storage_query = "SELECT * FROM Storage";
                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {
                    try
                    {
                        con.Open();


                        SQLiteDataAdapter storage_output = new SQLiteDataAdapter(storage_query, con);

                        DataTable dt = new DataTable();

                        storage_output.Fill(dt);
                        storage_Gridview.DataSource = dt;
                        storage_Gridview.DataBind();

                    }
                    catch
                    {
                    }
                }

            }
            if (LE == "7")
            {
                Prod.Visible = true;


                String currentProducts = "SELECT Product_ID, Production_type, Outsource, Ship_date FROM Production;";
                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {
                    try
                    {


                        SQLiteDataAdapter da1 = new SQLiteDataAdapter(currentProducts, con);

                        con.Open();

                        DataTable CP = new DataTable();

                        da1.Fill(CP);


                        String vtable1 = CP.Rows[0][0].ToString();



                        GridViewCurrProd.DataSource = CP;
                        GridViewCurrProd.DataBind();
                    }
                    catch
                    {


                    }
                }
            }
            if (LE == "8")
            {
                Ship.Visible = true;

                string shipping_query = "SELECT * FROM Shipping";
                using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
                {


                    try
                    {

                        con.Open();


                        SQLiteDataAdapter shipping_output = new SQLiteDataAdapter(shipping_query, con);

                        DataTable dt = new DataTable();

                        shipping_output.Fill(dt);
                        shipment_Gridview.DataSource = dt;
                        shipment_Gridview.DataBind();

                    }
                    catch
                    {

                    }
                }
            }


        }

        catch
        {

            Response.Redirect("~/Login2.aspx");
        }

        // end for session vladation
        

        String query1 = "SELECT Order_ID FROM Order_O WHERE Order_ID = (SELECT MAX(Order_ID)  FROM Order_O );";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            try
            {

                con.Open();

                SQLiteDataAdapter output1 = new SQLiteDataAdapter(query1, con);

                DataTable dt = new DataTable();

                output1.Fill(dt);
                
                String Client_ID = dt.Rows[0][0].ToString();

                int x = Int32.Parse(Client_ID);

                x++;

                string myString = x.ToString();

                O_ID.Text = myString;

                String D = DateTime.Today.ToString("MM/dd/yyyy");

                C_Date.Text = D;


            }

            catch
            {

            }
        }
    }
    //End for on page load for Salase depatrment
    


    public bool rule1_ton(double ton)
    {
        if (ton < 0.80)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    // end of rule one

    public void rule3_checkMatrial()
    {
        String Material_avail = "SELECT Material_ID FROM Storage WHERE Used >= Quantity;";
        //excute the query & check if no avalible matrial & display the result
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            SQLiteDataAdapter output1 = new SQLiteDataAdapter(Material_avail, con);

            DataTable dt = new DataTable();

            con.Open();

            output1.Fill(dt);

            String Mat_ID = dt.Rows[0][0].ToString(); // it should print all missing materials
            // loop
            expritResult += "<br /> Missing Matrials: " + Mat_ID;

        }
    }
    //end of rule two



    public void rule5_checkTools()
    {
        String Tool_avail = "SELECT Tool_ID FROM Fabrication_tools WHERE Uesd_tool >= Quantity;";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            SQLiteDataAdapter output1 = new SQLiteDataAdapter(Tool_avail, con);

            DataTable dt = new DataTable();

            con.Open();

            output1.Fill(dt);

            String Tool_ID = dt.Rows[0][0].ToString(); // it should print all missing tools
                                                       //loop

            expritResult += "<br /> Missing tools: " + Tool_ID;



        }
    }


    public void rule7_prduction()
    {
        //check if curent workload is < 80 
        String WorkLoad = "SELECT Work_load FROM Production WHERE Product_ID = (Select MAX(Product_ID) from Production);";
        String Rush = "SELECT Rush FROM Production WHERE Product_ID = (Select MAX(Product_ID) from Production);";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            SQLiteDataAdapter output1 = new SQLiteDataAdapter(WorkLoad, con);
            SQLiteDataAdapter output2 = new SQLiteDataAdapter(Rush, con);

            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();

            con.Open();

            output1.Fill(dt);
            output2.Fill(dt2);

            int load = int.Parse(dt.Rows[0][0].ToString());
            bool rush = bool.Parse(dt2.Rows[0][0].ToString());
            if (load >= 80)
            {
                expritResult += "<br /> Load reach limits, pleas look for subcontractors";
            }
            else
            {
                DateTime d_date = DateTime.Parse(DT.Text, new System.Globalization.CultureInfo("en-CA"));
                DateTime c_date = DateTime.Parse(C_Date.Text, new System.Globalization.CultureInfo("en-CA"));
                double days = ((d_date - c_date).TotalDays) - 1;
                double hrs = (days) * 8;
                if (rush == true)
                {
                    double minDays = hrs / 40;
                    double minHrs = minDays * 8;

                    //  int time = 80 - load + 20;
                    //  double men = time / 8;
                    double men = hrs / minDays / 4;
                    //2*10
                    expritResult += "<br />load is acceptable ,,, <br />Days required: " + days + " - " + minDays + " Days <br /> Hours required: " + hrs + " - " + minHrs + " Hours<br /> Man power required: " + men;
                }
                else
                {
                    double minDays = hrs / 20;
                    double minHrs = minDays * 8;

                    // int time = 80 - load;
                    double men = hrs / minDays / 2;
                    //  double men = time / 5;
                    expritResult += "<br />load is acceptable ,,, <br />Days required: " + days + " - " + minDays + " Days <br /> Hours required: " + hrs + " - " + minHrs + " Hours<br /> Man power required: " + men;

                }
            }


        }

        // calculate the avalible work hors and how many days and man power requird to finish the job
        //use the formal to convert work hors to days and from that calculate the requerd man
        // update the relatted filds -- overtime workload working hrs and worker#
        // add field for chosing rush or not
    }
    //end of rule four


    //expert system debugging
    protected void Find_R_Click(object sender, EventArgs e)
    {
        String ton_ = Ton.Text;
        Double ton_d = Double.Parse(ton_);

        if (rule1_ton(ton_d))
        {
            expritResult = "\nTonnage acceptbale";
            rule3_checkMatrial();
            rule5_checkTools();
            rule7_prduction();
        }
        else
        {
            expritResult = "\nTonnage faild";
        }
        Result.Text = expritResult;
    }
    // end of expert system degugging
    


    protected void sales_submit_Click(object sender, EventArgs e)
    {


    }

    //end of salse

    protected void HR_search_Click(object sender, EventArgs e)
    {
        String query_Click = "SELECT Employee.Work_hour, HR.Emp_overtime, HR.Vacation_balance FROM HR, Employee GROUP BY Employee.Emp_ID HAVING(Employee.Emp_ID = '"+HRE_ID.Text+"')";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            try
            {

                con.Open();

                SQLiteDataAdapter output1 = new SQLiteDataAdapter(query_Click, con);

                DataTable ABC = new DataTable();

                output1.Fill(ABC);

                Grid1.DataSource = ABC;
                Grid1.DataBind();


            }

            catch 
            {

            }


        }
    }

    protected void HR_submit_Click(object sender, EventArgs e)
    {

        
        using (SQLiteConnection con1 = new SQLiteConnection(@"data source = "+Database))
        {

            try
            {

                String HR_Q = "UPDATE HR SET Emp_overtime = " + OV.Text + " WHERE Emp_ID = " + HRE_ID.Text + ";";

                String E_Q = "UPDATE Employee SET Work_hour = " + WH.Text + " WHERE Emp_ID = " + HRE_ID.Text + ";";

                SQLiteCommand command = new SQLiteCommand(HR_Q, con1);
                SQLiteCommand command2 = new SQLiteCommand(E_Q, con1);

                con1.Open();

                SQLiteDataReader read1 = command.ExecuteReader();
                SQLiteDataReader read2 = command2.ExecuteReader();


            }

            catch
            {


            }


            String Get_GV = "SELECT Employee.Work_hour, HR.Emp_overtime, HR.Vacation_balance FROM HR, Employee GROUP BY Employee.Emp_ID HAVING(Employee.Emp_ID = '" + HRE_ID.Text + "')";

            using (SQLiteConnection con2 = new SQLiteConnection(@"data source = "+Database))
            {
                try
                {

                    con2.Open();

                    SQLiteDataAdapter output1 = new SQLiteDataAdapter(Get_GV, con2);

                    DataTable ABC = new DataTable();

                    output1.Fill(ABC);

                    Grid1.DataSource = ABC;
                    Grid1.DataBind();


                }

                catch
                {

                }


            }

        }

    }

    //End of HR

    protected void storage_add_material_Click(object sender, EventArgs e)
    {
        string storage_insert = "INSERT INTO Storage(Quantity,Roof_number,Store_number,Tool_ID,Used,Material_name,Size_details,Date,cost) VALUES (" + storage_quantity.Text + "," + storage_roof.Text + "," + store_number_list.Text + "," + storage_tool_id.Text + "," + storage_tool_used.Text + ",'" + storage_material_name.Text + "','" + storage_size.Text + "','" + storage_date.Text + "'," + storage_cost.Text + ")";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            try
            {
                SQLiteCommand command = new SQLiteCommand(storage_insert, con);
                con.Open();
                SQLiteDataReader R = command.ExecuteReader();
                add_material_success.Visible = true;


                Response.Redirect("~/Default.aspx");


            }

            catch { }

        }

        string storage_query = "SELECT * FROM Storage";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            try
            {
                con.Open();


                SQLiteDataAdapter storage_output = new SQLiteDataAdapter(storage_query, con);

                DataTable dt = new DataTable();

                storage_output.Fill(dt);
                storage_Gridview.DataSource = dt;
                storage_Gridview.DataBind();

            }
            catch
            {
            }
        }
    }

    // end of store

    protected void employees_information_edit_Click(object sender, EventArgs e)
    {
        emp_dep.BorderStyle = BorderStyle.Outset;
        emp_dep.Enabled = true;
        emp_name.BorderStyle = BorderStyle.Outset;
        emp_name.Enabled = true;
        emp_birth.BorderStyle = BorderStyle.Outset;
        emp_birth.Enabled = true;
        emp_address.BorderStyle = BorderStyle.Outset;
        emp_address.Enabled = true;
        emp_phone.BorderStyle = BorderStyle.Outset;
        emp_phone.Enabled = true;
        emp_details.BorderStyle = BorderStyle.Outset;
        emp_details.Enabled = true;
        emp_hrs.BorderStyle = BorderStyle.Outset;
        emp_hrs.Enabled = true;
        emp_days.BorderStyle = BorderStyle.Outset;
        emp_days.Enabled = true;
        emp_salary.BorderStyle = BorderStyle.Outset;
        emp_salary.Enabled = true;
        employees_information_save.Visible = true;
    }

    protected void employees_information_save_Click(object sender, EventArgs e)
    {
        String empID = employees_information1.Text;
        
        using (SQLiteConnection con = new SQLiteConnection(@"data source = " + Database))
        {
            try
            {
                String EmpInfoSave = "UPDATE Employee SET Emp_dep = '" + emp_dep.Text + "', Emp_name = '"+ emp_name.Text +
                    "', Phone_number = '"+ emp_phone.Text + "', Birthday = '"+ emp_birth.Text + "', Salary = '"+ emp_salary.Text + 
                    "', Address = '"+ emp_address.Text + "', Emp_detailes = '"+ emp_details.Text + 
                    "', Work_hour = '"+ emp_hrs.Text + "', Working_days = '"+ emp_days.Text + "'  WHERE Emp_ID = " + empID + "; ";

                SQLiteCommand save = new SQLiteCommand(EmpInfoSave, con);

                con.Open();

                SQLiteDataReader read1 = save.ExecuteReader();

                emp_dep.BorderStyle = BorderStyle.None;
                emp_dep.Enabled = false;
                emp_name.BorderStyle = BorderStyle.None;
                emp_name.Enabled = false;
                emp_birth.BorderStyle = BorderStyle.None;
                emp_birth.Enabled = false;
                emp_address.BorderStyle = BorderStyle.None;
                emp_address.Enabled = false;
                emp_phone.BorderStyle = BorderStyle.None;
                emp_phone.Enabled = false;
                emp_details.BorderStyle = BorderStyle.None;
                emp_details.Enabled = false;
                emp_hrs.BorderStyle = BorderStyle.None;
                emp_hrs.Enabled = false;
                emp_days.BorderStyle = BorderStyle.None;
                emp_days.Enabled = false;
                emp_salary.BorderStyle = BorderStyle.None;
                emp_salary.Enabled = false;
                employees_information_save.Visible = false;

            }
            catch
            {

            }
        }
    }

    protected void employees_information_delete_Click(object sender, EventArgs e)
    {
        String empID = employees_information1.Text;

        using (SQLiteConnection con = new SQLiteConnection(@"data source = " + Database))
        {
            try
            {
                String EmpInfoDelete = "DELETE FROM Employee WHERE Emp_ID = " + empID + "; ";

                SQLiteCommand delete = new SQLiteCommand(EmpInfoDelete, con);

                con.Open();

                SQLiteDataReader read1 = delete.ExecuteReader();

                emp_dep.Text = "";
                emp_name.Text = "";
                emp_birth.Text = "";
                emp_address.Text = "";
                emp_phone.Text = "";
                emp_details.Text = "";
                emp_hrs.Text = "";
                emp_days.Text = "";
                emp_salary.Text = "";
                employees_information_edit.Visible = false;
                employees_information_delete.Visible = false;
                employees_information_block.Visible = false;
                employees_information_save.Visible = false;
            }
            catch
            {

            }
        }
    }

    protected void employees_information_block_Click(object sender, EventArgs e)
    {
        if (employees_information_block.Text == "Block")
        {
            String empID = employees_information1.Text;



            using (SQLiteConnection con = new SQLiteConnection(@"data source = " + Database))
            {
                try
                {
                    String EmpInfoUpdate = "UPDATE Employee SET Emp_status = " + 1 + " WHERE Emp_ID = " + empID + "; ";

                    SQLiteCommand updatebolck = new SQLiteCommand(EmpInfoUpdate, con);

                    con.Open();

                    SQLiteDataReader read1 = updatebolck.ExecuteReader();
                    employees_information_block.Text = "Unblock";
                    employees_information_block.BackColor = Color.Red;

                }
                catch
                {

                }
            }
        } else
        {
            String empID = employees_information1.Text;



            using (SQLiteConnection con = new SQLiteConnection(@"data source = " + Database))
            {
                try
                {
                    String EmpInfoUpdate = "UPDATE Employee SET Emp_status = " + 0 + " WHERE Emp_ID = " + empID + "; ";

                    SQLiteCommand updatebolck = new SQLiteCommand(EmpInfoUpdate, con);

                    con.Open();

                    SQLiteDataReader read1 = updatebolck.ExecuteReader();
                    employees_information_block.Text = "Block";
                    employees_information_block.BackColor = Color.Blue;

                }
                catch
                {

                }
            }
        }
        
    }

    protected void employees_information_search_Click(object sender, EventArgs e)
    {
        String empID = employees_information1.Text;
        emp_dep.Text = "";
        emp_name.Text = "";
        emp_birth.Text = "";
        emp_address.Text = "";
        emp_phone.Text = "";
        emp_details.Text = "";
        emp_hrs.Text = "";
        emp_days.Text = "";
        emp_salary.Text = "";


        String EmpInfo = "SELECT * FROM   Employee Where Emp_ID = " + empID + ";";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            try
            {


                SQLiteDataAdapter empo = new SQLiteDataAdapter(EmpInfo, con);

                DataTable EI = new DataTable();

                con.Open();

                empo.Fill(EI);
                emp_dep.Visible = true;
                emp_name.Visible = true;
                emp_birth.Visible = true;
                emp_address.Visible = true;
                emp_phone.Visible = true;
                emp_details.Visible = true;
                emp_hrs.Visible = true;
                emp_days.Visible = true;
                emp_salary.Visible = true;
                employees_information_edit.Visible = true;
                employees_information_delete.Visible = true;
                employees_information_block.Visible = true;
                employees_informationValidator.Visible = false;


                String EmployeeDep = EI.Rows[0][1].ToString();
                String EmployeeName = EI.Rows[0][2].ToString();
                String EmployeeNum = EI.Rows[0][3].ToString();
                String EmployeeBirth = EI.Rows[0][4].ToString();
                String EmployeeSalary = EI.Rows[0][5].ToString();
                String EmployeeAddress = EI.Rows[0][6].ToString();
                String Employeedetails = EI.Rows[0][7].ToString();
                String EmployeeWorkHrs = EI.Rows[0][8].ToString();
                String EmployeeWorkDays = EI.Rows[0][12].ToString();
                String Employeestatus = EI.Rows[0][13].ToString();

                emp_dep.Text = EmployeeDep;
                emp_name.Text = EmployeeName;
                emp_birth.Text = EmployeeBirth;
                emp_address.Text = EmployeeAddress;
                emp_phone.Text = EmployeeNum;
                emp_details.Text = Employeedetails;
                emp_hrs.Text = EmployeeWorkHrs;
                emp_days.Text = EmployeeWorkDays;
                emp_salary.Text = EmployeeSalary;

                int a = Convert.ToInt32(Employeestatus);
                if (a == 1) {
                    employees_information_block.Text = "Unblock";
                    employees_information_block.BackColor= Color.Red;
                } else
                {
                    employees_information_block.Text = "Block";
                    employees_information_block.BackColor = Color.Blue;
                }
            }

            catch
            {
                employees_information_edit.Visible = false;
                employees_information_delete.Visible = false;
                employees_information_block.Visible = false;
                employees_informationValidator.Visible = true;            }

        }
    }
    //end of admin

    protected void procurement_search_Click(object sender, EventArgs e)
    {
        String supname = NameOfSuplier.Text;
        String listOfSuppliers = "SELECT Supplier, suplier_speciality, Contact_num FROM  Procurement WHERE Supplier = '" + supname + "';";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            SQLiteDataAdapter da = new SQLiteDataAdapter(listOfSuppliers, con);

            con.Open();

            DataTable EI = new DataTable();

            da.Fill(EI);



            GridViewsupliers.DataSource = EI;
            GridViewsupliers.DataBind();
        }




    }

    //end or procument

    protected void product_search_Click(object sender, EventArgs e)
    {

        String product = "SELECT Production.Product_ID, Production.Work_load, Production.Workers_num, Production.Overtime, Production.Material_ID, Storage.Used FROM Production, Storage GROUP BY Production.Product_ID HAVING (Production.Product_ID = " + ProductSearch.Text + ")";

        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {
            SQLiteDataAdapter da = new SQLiteDataAdapter(product, con);

            con.Open();

            DataTable Pro = new DataTable();

            da.Fill(Pro);


            GridViewProducSsearch.DataSource = Pro;
            GridViewProducSsearch.DataBind();
        }

    }

    //end of production

    protected void accounting_submit_Click(object sender, EventArgs e)
    {

        //account id incremintal
        String accountID = "SELECT Account_ID FROM Accounting WHERE Account_ID = (SELECT MAX(Account_ID)  FROM Accounting );";
        using (SQLiteConnection con = new SQLiteConnection(@"data source = "+Database))
        {

            con.Open();

            SQLiteDataAdapter output1 = new SQLiteDataAdapter(accountID, con);

            DataTable dt = new DataTable();

            output1.Fill(dt);



            String account = dt.Rows[0][0].ToString();

            int x = Int32.Parse(account);

            x = x + 1;

            String account_plus = x.ToString();
            //end of incremental

            //account_ID from the incremintal to the db (done)
            //Emp_ID must be added from the session (done)
            String ID = Session["ID"].ToString();

            //payment and outgoing must be added or subtracted with previus value
            //     String preBalance = "SELECT Balance FROM Accounting ORDER BY Balance DESC LIMIT 1)";


            String allAccountingfield = "INSERT INTO Accounting (Account_ID, Emp_ID, payment_date, Outgoing, outgoing_date, Payment, payment_method) VALUES(" + account_plus + ", " + ID + " , '" + paymentDate.Text + "', " + outgoingAmount.Text + ", '" + outgoingDate.Text + "', " + paymentAmout.Text + ",'" + paymentMethod.Text + "');";
            SQLiteCommand command = new SQLiteCommand(allAccountingfield, con);
            SQLiteDataReader re = command.ExecuteReader();

            L11.Visible = true;



        }


    }

    //end of accounting
}