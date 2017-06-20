<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="problem-reports.aspx.cs" Inherits="forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Problem Reports</h1>
                </div>
                <!--end page header -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Select documents by date
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>From</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                           <i class="fa fa-calendar"></i>
                                                    </div>
                                            <asp:TextBox ID="problem_report_date_from" class="form-control" placeholder="YYYY-MM-DD" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>
                                            </div>
                                      <div class="form-group">
                                                <label>To</label>
                                                <div class="input-group">
                                                <div class="input-group-addon">
                  
                                           <i class="fa fa-calendar"></i>
                                           </div>
                                        <asp:TextBox ID="problem_report_date_to" class="form-control" placeholder="YYYY-MM-DD" runat="server" TextMode="Date"></asp:TextBox>
                                      </div>
                     
                                        </div>    
                                        
                                          <div class="form-group">
                                              
                                            <asp:Button ID="problem_report_submit" runat="server" class="btn btn-primary" type="submit" Text="Submit" OnClick="problem_report_submit_Click" />         
                                            <button type="reset" class="btn btn-success">Reset</button>
                                            </div>
                                       </div>
                                        
                                    
                                       <div class="col-lg-6">
                                          <asp:Label ID="problem_report_result" runat="server" Text="Result"></asp:Label>
                                          <asp:GridView ID="problem_report_Gridview" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                       </div>
                                </div>
                                </div>
                                       
                                </div>
                                          
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
              
        
        <!-- end page-wrapper -->

    
    <!-- end wrapper -->
   
</asp:Content>
