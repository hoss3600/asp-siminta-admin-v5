<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="add-employee.aspx.cs" Inherits="forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Add employee</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form 
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                             <label>Employee number</label>
                                            <asp:TextBox ID="Add_Employee_Employee_ID" runat="server" class="form-control" placeholder="Enter a new employee ID"></asp:TextBox> <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Employee_ID" CssClass="text-danger" ErrorMessage="New ID field is required." />
                                            <p> Or click to generate new one </p>  
                                            <input id="Add_Employee_Generate" type="button" value="&nbsp; &nbsp; Generate &nbsp; &nbsp;" class="btn btn-primary" />   
                                           
                                        </div>
                                    <div class="form-group">
                                             <label>Employee Department</label>
                                            <asp:TextBox ID="Add_Employee_Employee_Department" runat="server" class="form-control" placeholder="Enter the Employee department"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Employee_Department" CssClass="text-danger" ErrorMessage="Employee department field is required." />
                                        </div>

                                        <div class="form-group">
                                             <label>Employee Name</label>
                                            <asp:TextBox ID="Add_Employee_Employee_Name" runat="server" class="form-control" placeholder="Enter the Employee name"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Employee_Name" CssClass="text-danger" ErrorMessage="Employee name field is required." />
                                        </div>
                                    <div class="form-group">

               <div class="input-group">
               <div class="input-group-addon">
               <i class="fa fa-calendar">
               </i>
               </div>
               <asp:TextBox ID="Add_Employee_Date" runat="server" class="form-control" placeholder="MM/DD/YYYY" TextMode="Date"></asp:TextBox>

               </div>

              <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Date" CssClass="text-danger" ErrorMessage="Date field is required." />        
                               </div>  
                                    
                                    <div class="form-group">
                                             <label>Address</label>
                                            <asp:TextBox ID="Add_Employee_Address" runat="server" class="form-control" placeholder="Enter the Address"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Address" CssClass="text-danger" ErrorMessage="Employee address field is required." />
                                        </div>

                                     <div class="form-group">
                                             <label>Phone</label>
                                            <asp:TextBox ID="Add_Employee_Phone" runat="server" class="form-control" placeholder="Enter the Phone number"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Phone" CssClass="text-danger" ErrorMessage="Employee phone field is required." />
                                        </div>

                                        <asp:Button ID="Add_Employee_Sub" runat="server" Text="Submit" class="btn btn-primary" />
                                     <input id="find1" type="button" value="Find Result" class="btn btn-primary" />   
                                        <button type="reset" class="btn btn-success">Reset</button>
                                    
                                </div>

                                <div class="col-lg-6">
                                     <div class="form-group">
                                             <label>Employee details</label>
                         <p class="help-block">Contract</p>
                <asp:DropDownList ID="Add_Employee_Contract" runat="server" CssClass="form-control">

                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="Ongoing" Value="Ongoing"></asp:ListItem>
                <asp:ListItem Text="Temporary" Value="Temporary"></asp:ListItem>

                </asp:DropDownList>
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Contract" InitialValue="0"  CssClass="text-danger" ErrorMessage="You must choose a one." />
                                        </div>
                                    <div class="form-group">
                                            
                  <p class="help-block">Pattren</p>
                <asp:DropDownList ID="Add_Employee_Pattren" runat="server" CssClass="form-control">

                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="Full-time" Value="Full-time"></asp:ListItem>
                <asp:ListItem Text="Part-time" Value="Part-time"></asp:ListItem>

                </asp:DropDownList>
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Pattren" InitialValue="0"  CssClass="text-danger" ErrorMessage="You must choose a one." />


                                        </div>
                                      <div class="form-group">
                                             <label>Hours of work</label>
                                            <asp:TextBox ID="Add_Employee_Hours_Of_Work" runat="server" class="form-control" placeholder="Enter the hours of work"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Hours_Of_Work" CssClass="text-danger" ErrorMessage="Employee hours of work field is required." />
                                        </div>

                                      <div class="form-group">
                                             <label>Working days</label>
                                            <asp:TextBox ID="Add_Employee_Working_Days" runat="server" class="form-control" placeholder="Enter the working days"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Working_Days" CssClass="text-danger" ErrorMessage="Employee working dayes field is required." />
                                        </div>

                                      <div class="form-group">
                                             <label>Salary</label>
                                            <asp:TextBox ID="Add_Employee_Salary" runat="server" class="form-control" placeholder="Enter the Salary"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Salary" CssClass="text-danger" ErrorMessage="Employee salary field is required." />
                                        </div>

                                      <div class="form-group">
                                             <label>Password</label>
                                            <asp:TextBox ID="Add_Employee_Password" runat="server" class="form-control" placeholder="Enter the password"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Add_Employee_Password" CssClass="text-danger" ErrorMessage="Employee passwordfield is required." />
                                        </div>
                                   
                                </div>

                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>
        </div>
        <!-- end page-wrapper -->

  
    <!-- end wrapper -->
   
</asp:Content>

