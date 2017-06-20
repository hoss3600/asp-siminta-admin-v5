<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="password-resetting.aspx.cs" Inherits="forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Password Resetting</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            List of Employees need to change thier password
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                     <!--    Hover Rows  -->
                    
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Employee Number</th>
                                            <th>Employee Name</th>
                                            <th></th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>2130009374</td>
                                            <td>Hossam</td>
                                            <td><input id="Password_Resetting_edit1" type="button" value=" &nbsp; &nbsp; Edit password &nbsp; &nbsp; " class="btn btn-primary" /></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>2130001234</td>
                                            <td>Monther</td>
                                            <td><input id="Password_Resetting_edit2" type="button" value=" &nbsp; &nbsp; Edit password &nbsp; &nbsp; " class="btn btn-primary" /></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>2130001256</td>
                                            <td>Mohammed</td>
                                            <td><input id="Password_Resetting_edit3" type="button" value=" &nbsp; &nbsp; Edit password &nbsp; &nbsp; " class="btn btn-primary" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    
                    <!-- End  Hover Rows  -->
                </div>
<div class="col-lg-6">
    <div class="form-group">
                                            <label>type a new password</label>
                                            <textarea id="P_D" cols="60" rows="5" runat="server" class="form-control" ></textarea>
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

    </div>
    <!-- end wrapper -->
   
</asp:Content>

