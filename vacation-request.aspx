<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="vacation-request.aspx.cs" Inherits="tables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
        <div id="page-wrapper">

            
            <div class="row">
                 <!--  page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Vacation Request</h1>
                </div>
                 <!-- end  page header -->
            </div>
             <div class="panel panel-default">
                        <div class="panel-heading">
                           List of Employees need to change thier password
                        </div>
                        <div class="panel-body">

                            
                            <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>From</label>
                <div class="input-group">
               <div class="input-group-addon">
                  
               <i class="fa fa-calendar">
               </i>
               </div>
               <asp:TextBox ID="vacation_request_date_from" runat="server" class="form-control" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
              </div>

                  </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_date_from" CssClass="text-danger" ErrorMessage="Date field is required." />
                        </div>
                <div class="col-lg-6">
                    <div class="form-group">
                            <label>To</label>
                <div class="input-group">
               <div class="input-group-addon">
               <i class="fa fa-calendar">
               </i>
               </div>
               <asp:TextBox ID="vacation_request_date_to" runat="server" class="form-control" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
              </div>

                  </div>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_date_to" CssClass="text-danger" ErrorMessage="Date field is required." />
                    </div>

                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Employee name</label>
                                            <asp:TextBox ID="vacation_request_employee_name" runat="server" class="form-control" placeholder="Enter the name"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_employee_name" CssClass="text-danger" ErrorMessage="Name field is required." />

                                          <!--  <p class="help-block">Example block-level help text here.</p> -->
                                        </div>


                                        <div class="form-group">
                                            <label>ID</label>
                                             <asp:TextBox ID="vacation_request_employee_ID" runat="server" class="form-control" placeholder="Enter the ID"></asp:TextBox>
                                             <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_employee_ID" CssClass="text-danger" ErrorMessage="ID field is required." />
                                        </div>
                        </div>
                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Department</label>
                                            <asp:TextBox ID="vacation_request_department" runat="server" class="form-control" placeholder="Enter the name of Department"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_department" CssClass="text-danger" ErrorMessage="Department field is required." />

                                          <!--  <p class="help-block">Example block-level help text here.</p> -->
                                        </div>


                                        <div class="form-group">
                                            <label>Manager</label>
                                             <asp:TextBox ID="vacation_request_manager" runat="server" class="form-control" placeholder="Enter the name of Manager"></asp:TextBox>
                                             <asp:RequiredFieldValidator runat="server" ControlToValidate="vacation_request_manager" CssClass="text-danger" ErrorMessage="Manager field is required." />
                                        </div>
                        </div>
                 <div class="col-lg-6">
                       <div class="form-group">
                                            <label>Type</label>
                                            <label class="radio-inline">
                                                <asp:RadioButton GroupName="MeasurementSystem" ID="vacation_requst_radio_Oblied" runat="server" Checked/>Obliged 
                                            </label>
                                            <label class="radio-inline">
                                                <asp:RadioButton GroupName="MeasurementSystem" ID="vacation_requst_radio_Normal" runat="server"/>Normal
                                            </label>
                          

                                        </div>
                                           </div>
                <div class="col-lg-6">
                     <div class="form-group">
                                            <label>Is it Paid</label>
                                            <label class="radio-inline">
                                                <asp:RadioButton GroupName="MeasurementSystem1" ID="vacation_requst_radio_yes" runat="server" Checked/>Yes
                                            </label>
                                            <label class="radio-inline">
                                                <asp:RadioButton GroupName="MeasurementSystem1" ID="vacation_requst_radio_no"  runat="server"/>No
                                            </label>
                         

                                           
                                        </div>
                     </div>
                 <div class="col-lg-6">
                                 
                                    <div class="form-group">
                                            <label>Reasons of Vacation</label>
                                            <textarea id="vacation_request_reason" cols="60" rows="5" runat="server" class="form-control" ></textarea>
                                        </div>

                                <br />
                                <br />
                                <br />

                                      <asp:Button ID="vacation_request_submit" type="submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="vacation_request_submit_Click"/>
                                      <button type="reset" class="btn btn-success">Reset</button>
                                      <asp:Label ID="vacation_request_success" Visible="false" runat="server" ForeColor="Green" Font-Size="Large" Text="Submit Successful"></asp:Label>

                                </div>
            </div>

            <div class="row">
                
                
            </div>
            <div class="row">
                
                
            </div>
        </div>
        <!-- end page-wrapper -->
   
</asp:Content>

