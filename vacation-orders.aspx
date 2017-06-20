<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="vacation-orders.aspx.cs" Inherits="forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="row">
                 <!-- page header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Vacation Orders</h1>
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
                       <label>Enter the Period</label>
                                   
               <div class="input-group">
               <div class="input-group-addon">
               <i class="fa fa-calendar">
               </i>
               </div>
              <asp:TextBox ID="Vacation_Order_From" runat="server" class="form-control" placeholder="Frome"></asp:TextBox>
               </div>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="Vacation_Order_From" CssClass="text-danger" ErrorMessage="Enter the correct period" />

                                       
                                        </div>
                                 
                            </div>


                <div class="col-lg-6">
                 <div class="form-group">
                     <label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </label>
    
               <div class="input-group">
               <div class="input-group-addon">
               <i class="fa fa-calendar">
               </i>
               </div>
              <asp:TextBox ID="Vacation_Order_To" runat="server" class="form-control" placeholder="To"></asp:TextBox>
               </div>
               <asp:RequiredFieldValidator runat="server" ControlToValidate="Vacation_Order_To" CssClass="text-danger" ErrorMessage="Enter the correct period" />
                                       
                       </div>
                                   
                                </div>


                <div class="col-xs-12">
                     <div class="form-group">
                         <label>Please select the status</label>
                    <asp:DropDownList ID="Vacation_Order_Find" runat="server" CssClass="form-control">

                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="Accomplished" Value="Accomplished"></asp:ListItem>
                <asp:ListItem Text="Rejected" Value="Rejected"></asp:ListItem>
                <asp:ListItem Text="None" Value="None"></asp:ListItem>

                </asp:DropDownList>
                         
               <asp:RequiredFieldValidator runat="server" ControlToValidate="Vacation_Order_Find" InitialValue="0" CssClass="text-danger" ErrorMessage="Please select one" />
                         <br />
                
                         <asp:Button ID="Vacation_Order_FindB" runat="server" Text="&nbsp; &nbsp; Find Result &nbsp; &nbsp;" class="btn btn-primary"/>

                         <br />
                         <hr />
                         <br />

                </div>
                 <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>
                                                    <td>$234.34</td>
                                                </tr>
                                                <tr>
                                                    <td>3324</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:03 PM</td>
                                                    <td>$724.17</td>
                                                </tr>
                                                <tr>
                                                    <td>3323</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:00 PM</td>
                                                    <td>$23.71</td>
                                                </tr>
                                                <tr>
                                                    <td>3322</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:49 PM</td>
                                                    <td>$8345.23</td>
                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>

                    <input id="Vacation_Order_Prev" type="button" value=" &nbsp; &nbsp; Prev &nbsp; &nbsp; " class="btn btn-primary" />    &nbsp; &nbsp;    
                    <input id="Vacation_Order_Block" type="button" value="&nbsp; &nbsp; Block &nbsp; &nbsp;" class="btn btn-primary" />    &nbsp; &nbsp;     
                    <input id="Vacation_Order_Next" type="button" value="&nbsp; &nbsp; Next &nbsp; &nbsp;" class="btn btn-primary" />      
 
                     </div>




                             


               
   
                          </div>  
                            
                             
                        </div>
                    </div>
                     <!-- End Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form 
                        </div>
                        <div class="panel-body">

                             <div class="row">
                                  <div class="col-lg-6">
                                      <div class="form-group">
                                          <label>Employee Name: &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Employee_Name" runat="server" Text="A"></asp:Label>

                                      </div>

                                      <div class="form-group">
                                          <label>Status : &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                                               &nbsp;
                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Status" runat="server" Text="A"></asp:Label>

                                      </div>
                                      
                                      <div class="form-group">
                                          <label>Date from :  &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Date_From" runat="server" Text="C"></asp:Label>

                                      </div>
                                      

                                      <div class="form-group">
                                          <label>Department:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Department" runat="server" Text="D"></asp:Label>

                                      </div>
                                      
                                      <div class="form-group">
                                          <label>Is it paid:  &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Is_It_Paid" runat="server" Text="F"></asp:Label>

                                      </div>
                                      
                                      


                                   </div>

                                   <div class="col-lg-6">

                                         <div class="form-group">
                                          <label>ID:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_ID" runat="server" Text="G"></asp:Label>

                                      </div>

                                      <div class="form-group">
                                          <label>Type:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Type" runat="server" Text="H"></asp:Label>

                                      </div>
                                      
                                      <div class="form-group">
                                          <label>Date To:  &nbsp; &nbsp;   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_Date_To" runat="server" Text="I"></asp:Label>

                                      </div>
                                      

                                      <div class="form-group">
                                          <label>Manager:  &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                          </label>
                                         
                                          <asp:Label ID="Vacation_Order_L_Manager" runat="server" Text="J"></asp:Label>

                                      </div>
                                      
                                     

                                   </div>

                                 <br />
                                 <br />




                                   <div class="col-xs-12">


                                    <div class="form-group">
                                            <label>Reasons</label>
                                            <textarea id="Vacation_Order_Resons" cols="60" rows="5" runat="server" class="form-control" ></textarea>
                                        </div>

                     <div class="form-group">
                         <label>Edit the status</label>
                    <asp:DropDownList ID="Vacation_Order_Find2" runat="server" CssClass="form-control">

                <asp:ListItem Text="" Value="0"></asp:ListItem>
                <asp:ListItem Text="Accomplished" Value="Accomplished"></asp:ListItem>
                <asp:ListItem Text="Rejected" Value="Rejected"></asp:ListItem>
                <asp:ListItem Text="None" Value="None"></asp:ListItem>

                </asp:DropDownList>
                         
               <asp:RequiredFieldValidator runat="server" ControlToValidate="Vacation_Order_Find" InitialValue="0" CssClass="text-danger" ErrorMessage="Please select one" />
                         <br />
                <input id="Vacation_Order_FindB2" type="button" value="&nbsp; &nbsp; Save the status &nbsp; &nbsp;" class="btn btn-primary" />   

                         <br />
                         <hr />
                         <br />

                </div>
               

                      
                    
 
                     </div>

                               </div>
                            
                           </div>
                                 </div>


                </div>
            </div>
        </div>
        <!-- end page-wrapper -->


    <!-- end wrapper -->
   
</asp:Content>

