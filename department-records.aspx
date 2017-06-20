<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="department-records.aspx.cs" Inherits="department_records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Records</h1>
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
                                            <asp:TextBox ID="department_records_date_from" class="form-control" runat="server" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                                        </div></div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                                </div>
                                            <asp:TextBox ID="department_records_date_to" class="form-control" runat="server" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                                        </div>
                                        </div>
                                      
                                     <div class="form-group">
                                         <asp:Button ID="SUB1" runat="server" class="btn btn-primary" Text="Search" OnClick="Department_Records_Submit_Click" />
                                     </div>

                                    <asp:Label ID="Lb1" runat="server" Visible="False" >Please insert the dates</asp:Label>
                                   
                                </div>
                                <div class="col-lg-6">
                                          <asp:Label ID="deparment_records_result" runat="server" Text="Result"></asp:Label>
                                          <asp:GridView ID="department_records_GridView" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
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


