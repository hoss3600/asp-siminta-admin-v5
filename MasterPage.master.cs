using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            String NA = Session["NAM"].ToString();
            String ID = Session["ID"].ToString();
            String LE = Session["LE"].ToString();

            E_ID.Text = ID;
            E_Name.Text = NA;



            if (LE == "0")
            {
                DR.Visible = false;
                RP.Visible = false;
                VO.Visible = false;



            }

            else if (LE == "4")

            {

                AE.Visible = false;
                REC.Visible = false;
                PR.Visible = false;



            }


            else
            {
                VO.Visible = false;
                AE.Visible = false;
                REC.Visible = false;
                PR.Visible = false;


            }

        }

        catch
        {

            Response.Redirect("~/Login2.aspx");
        }


}

   

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["ID"] = null;
        Session["NAM"] = null;
        Session["LE"] = null;

        Response.Redirect("~/Login2.aspx");

        Logout55.CausesValidation = true;

    }
}
