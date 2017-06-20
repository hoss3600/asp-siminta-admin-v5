<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="records.aspx.cs" Inherits="records" %>

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
                                            <asp:TextBox ID="Records_date_from" class="form-control" runat="server" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                                        </div></div>
                                        <div class="form-group">
                                            <label>To</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                                </div>
                                            <asp:TextBox ID="Records_date_to" class="form-control" runat="server" placeholder="YYYY-MM-DD" TextMode="Date"></asp:TextBox>
                                        </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Department</label>
                                            <asp:DropDownList ID="Records_department_list" runat="server" CssClass="form-control" DataValueField="department_Name">
                                                <asp:ListItem Text="Select Department" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Accounting" Value="Accounting"></asp:ListItem>
                                                <asp:ListItem Text="Production" Value="Production"></asp:ListItem>
                                                <asp:ListItem Text="Shipping" Value="Shipping"></asp:ListItem>
                                                <asp:ListItem Text="Storage" Value="Storage"></asp:ListItem>
                                                <asp:ListItem Text="Sales" Value="Order_details"></asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Records_department_list" InitialValue="0" CssClass="text-danger" ErrorMessage="Please select a department"></asp:RequiredFieldValidator>                                        </div>
                                    <asp:Button ID="Records_Submit" runat="server" class="btn btn-primary" type="submit" Text="Search" OnClick="Records_Submit_Click" />
                                    <button type="reset" class="btn btn-success">Reset</button>
                                    <asp:Label ID="reports_success" runat="server" Visible="false" BackColor="Green" Text="Submit Successful"></asp:Label>
                                        </div>
                             
                                    
                            </div>

                                 <br />    <br />  
                            <div class="row">
                                  <div class="col-lg-12">
                                          <asp:Label ID="Records_Result" runat="server" Text="Result"></asp:Label>
                                          <asp:GridView ID="Records_GridView" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                    
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