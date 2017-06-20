<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="report-problem.aspx.cs" Inherits="forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Report problem</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Fill the fields
                        </div>
                        <div class="panel-body">

                            
                            <div class="row">



                          <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Employee name</label>
                                            <asp:TextBox ID="Report_Problem_Employee_Name" runat="server" class="form-control" placeholder="Enter the name"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Report_Problem_Employee_Name" CssClass="text-danger" ErrorMessage="Name field is required." />

                                          <!--  <p class="help-block">Example block-level help text here.</p> -->
                                        </div>


                                        <div class="form-group">
                                            <label>ID</label>
                                             <asp:TextBox ID="Report_Problem_Employee_ID" runat="server" class="form-control" placeholder="Enter the ID"></asp:TextBox>
                                             <asp:RequiredFieldValidator runat="server" ControlToValidate="Report_Problem_Employee_ID" CssClass="text-danger" ErrorMessage="ID field is required." />
                                        </div>


               

                 <div class="form-group">

                <label>Date</label>
                                 
               <div class="input-group">
               <div class="input-group-addon">
               <i class="fa fa-calendar">
               </i>
                
               </div>
               <asp:TextBox ID="Report_Problem_Date" runat="server" class="form-control" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
            
              </div>
             <asp:RequiredFieldValidator runat="server" ControlToValidate="Report_Problem_Date" CssClass="text-danger" ErrorMessage="Date field is required." />

                  </div>

    

                        </div>
                          
                          <div class="col-lg-6">
                                 
                                    <div class="form-group">
                                            <label>Problem details</label>
                                            <textarea id="Report_Problem_Problem" cols="60" rows="5" runat="server" class="form-control" ></textarea>
                                        </div>

                                <br />
                                <br />
                                <br />

                                      <asp:Button ID="Report_Problem_sub" type="submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="Report_Problem_sub_Click"/>
                                      <button type="reset" class="btn btn-success">Reset</button>
                            &nbsp&nbsp<asp:Label ID="report_problem_success" runat="server" Visible="false" Font-Size="Large" ForeColor="Green" Text="Submit Successful"></asp:Label>
                                </div>


                              </div>
                                  


                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>

                  

            </div>
       
        <!-- end page-wrapper -->

   
    <!-- end wrapper -->

    

</asp:Content>

